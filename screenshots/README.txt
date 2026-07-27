# Active Directory Lab — Screenshots & Verification

This directory contains visual proof and configuration snapshots from the **Active Directory & Network Infrastructure Lab** (`kireka.local`).

---

## 📸 Evidence Index

| File Name | Description |
| :--- | :--- |
| `DC-config.png` | Static IP configuration (`192.168.10.10/24`) and hostname setup on `DC01`. |
| `domain-promotion.png` | Active Directory Domain Services role installation and forest promotion. |
| `dhcp-scope.png` | Activated DHCP scope (`192.168.10.100 - 192.168.10.200`) with DNS Server Option `006`. |
| `Scope-OUs.png` | Organizational Unit (OU) layout under `kireka.local` (`Corp_OUs/Corp_Users`). |
| `domain-join-success.png` | Client VM successfully joined to the `kireka.local` domain. |
| `dhcp-leases.png` | Active DHCP IP lease granted to the client VM by `DC01`. |
| `GPO-restriction.png` | Enforced GPO restriction blocking Control Panel / Settings for standard users. |
| `gpo-enforced.png` | Command output of `gpresult /r` confirming applied policies on the client endpoint. |

---

## Lab Environment Summary

* **Domain Controller:** `DC01.kireka.local` (`192.168.10.10`)
* **Subnet:** `192.168.10.0/24`
* **DHCP Scope:** `192.168.10.100 - 192.168.10.200`
* **Network Mode:** VMware Host-Only (`VMnet1`)