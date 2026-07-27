# Phase 3: Group Policy Objects (GPO) Implementation

## Overview
Configuring administrative policies to enforce security guidelines and user configurations across the domain.

## Implemented Policies
1. **Default Domain Password Policy:** Min length 12, complexity enabled, account lockout duration.
2. **Restrict Control Panel Access:** Applied to `Corp_Users` OU.
3. **Automated Network Drive Mapping:** Mapping `\\DC01\SharedFolder` to standard users.
