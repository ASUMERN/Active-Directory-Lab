# Phase 1: Network & Domain Controller Setup

## Overview
Setting up the virtual network in VMware Workstation Pro and configuring static IP addressing for the Windows Server 2022 Domain Controller.

## Steps
1. Configured VMware Virtual Network Editor (Custom VMnet configuration).
2. Installed Windows Server 2022 with Desktop Experience.
3. Configured static IP settings:
   - **IP Address:** `192.168.10.10`
   - **Subnet Mask:** `255.255.255.0`
   - **Preferred DNS:** `127.0.0.1` (or `192.168.10.10`)
4. Promoted server to Domain Controller for domain `CORP.LOCAL`.
