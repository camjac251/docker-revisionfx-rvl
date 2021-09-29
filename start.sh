#!/bin/bash
echo "HOSTNAME"
hostname
echo "IP ADDRESS:"
hostname -i

# Store the licese file inside the container for later reuse.
cp /opt/rlm/licenses/foundry_float.lic /opt/foundry_float.lic

# Output info
# /usr/local/foundry/LicensingTools7.3/FoundryLicenseUtility -d
# /usr/local/foundry/LicensingTools7.3/FoundryLicenseUtility -i
# /usr/local/foundry/LicensingTools7.3/FoundryLicenseUtility -n
# /usr/local/foundry/LicensingTools7.3/FoundryLicenseUtility -v

# Run the license server directly with the copied license file.

echo "Y" | /usr/local/foundry/LicensingTools7.3/bin/RLM/rlm.foundry -iai -c /opt/foundry_float.lic
