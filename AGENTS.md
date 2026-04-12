# LabVIEW Test Framework - AI Context

## Project Overview
LabVIEW-based test framework that:
- builds into an EXE
- runs on test PCs with LabVIEW Runtime
- supports installing, running, and managing tests
- uses a generic execution engine first
- allows replacing execution with TestStand later
- uses plugin architecture (future)
- uses local config + optional DB later

## Key Design Decisions

### Execution
- First implementation uses Generic Execution Adapter
- TestStand will be added later via same interface
- No WATS or external result system for now

### Architecture Style
- Layered + modular
- Strong separation:
  - Domain (data)
  - Services (logic)
  - Adapters (external systems)
  - Core (orchestration)

## Folder Structure

Source/
  Application/
  Core/
  Domain/
  Services/
  Interfaces/
  Adapters/
  Providers/
  Persistence/
  Typedefs/
  Utilities/

## Core Architecture Flow

Main.vi
  -> App Controller
    -> Framework Engine
      -> Services
        -> Interfaces
          -> Adapters (Generic now, TestStand later)

## Domain Model

### Classes
- Audit Event
- Readiness Report
- Session
- Test Run Request
- Test Run Result
- User

### Key Rules
- Domain = DATA ONLY
- No file I/O
- No logging
- No execution logic

## Execution Model

### Interface
I Execution Adapter

Methods:
- Abort Test
- Check Installed
- Get Version
- Run Test

### Generic Execution Adapter (current)

Behavior:
- Always installed
- Returns version "0.1.0"
- Simulates execution:
  - empty entry -> Failed
  - otherwise -> Passed after delay

### Execution Service

Responsibilities:
- Build Test Run Request
- Call adapter
- Return Test Run Result

Does NOT:
- perform execution itself
- know adapter type

## Data Contracts

### Test Run Request
Fields:
- Entry
- Operator
- Package ID
- Package Version
- Station

### Test Run Result
Fields:
- External Result Ref
- Outcome
- Summary

## Config Files

### bootstrap.json
{
  "authentication": { "provider": "LocalFile" },
  "database": { "path": "Data/framework.db", "type": "SQLite" },
  "execution": { "engine": "Generic" },
  "framework": { "version": "0.1" },
  "logging": { "path": "Logs/" },
  "paths": {
    "packages": "Packages/",
    "plugins": "Plugins/",
    "shared": "Shared/"
  },
  "station": { "name": "Station01" },
  "users": { "file": "Config/users.json" }
}

### users.json
[
  { "password": "admin", "role": "Admin", "username": "admin" },
  { "password": "engineer", "role": "Engineer", "username": "engineer" },
  { "password": "operator", "role": "Operator", "username": "operator" }
]

## Roles & Permissions

Roles:
- Admin
- Engineer
- Operator

Example mapping:
- Operator -> RunReleasedTests
- Engineer -> most except admin actions
- Admin -> all

## Core Services (Phase 1)

- Authentication Service
- Execution Service
- Logging Service
- Readiness Service
- Settings Service

## Phase Plan

Phase 1 -> Walking Skeleton
Phase 2 -> Generic Execution
Phase 3 -> Persistence
Phase 4 -> Packages
Phase 5 -> Integrity
Phase 6 -> Plugins
Phase 7 -> TestStand Adapter

## Phase 1 Goal (CURRENT)

Working flow:

Start app
-> Login
-> Read config
-> Run readiness checks
-> Run test (generic adapter)
-> Return result
-> Log event

## Coding Rules (VERY IMPORTANT)

- Keep lists alphabetical
- Keep classes small
- Avoid premature abstraction
- Do NOT couple to TestStand yet
- Domain must remain pure (no IO)
- Services must use interfaces (not concrete adapters)

## Error Code Ranges

- -9000 to -9099 are configuration errors
- -9100 to -9199 are execution errors
- -9200 to -9299 are adapter errors
- -9300 to -9399 are persistence or database errors

### Defined Execution Errors

- `-9101` in `Run.vi` of `Execution Service.lvclass`:
  If the class name of the `I Execution Adapter` stored in `Execution Service` class data is `I Execution Adapter.lvclass`, then no specific adapter has been loaded. Add an error to the error wire with status `True`, code `-9101`, and source `No execution adapter loaded.`
- `-9105` in `Abort.vi` of `Execution Service.lvclass`:
  If there is no incoming error and the execution adapter has not been loaded, add an error to the error wire with status `True`, code `-9105`, and source `No execution adapter loaded for abort.`

## What NOT to build yet

- Package system
- Plugin discovery
- TestStand adapter
- Database repositories
- Async execution
- Resource locking

## What to build next

- Settings Service
- Logging Service
- Authentication Service
- Framework Engine wiring
