# Phase 4: Troubleshooting & Testing Log

## Common Issues & Solutions

### Issue 1: Domain Join Failure on Client VM
- **Symptom:** `An Active Directory Domain Controller for the domain CORP.LOCAL could not be contacted.`
- **Cause:** Client network adapter DNS was defaulting to internet gateway IP.
- **Resolution:** Set client IPv4 Preferred DNS server to `192.168.10.10`.
