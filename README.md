# Mastering Azure IaaS 2019 GitHub Repository
GitHub repository for Mastering Azure IaaS 2019 Book

All content Copyright 2019 John Savill. All rights reserved
No part of these materials to be used without express permission from the author
john@savilltech.com
@NTFAQGuy
https://savilltech.com
https://youtube.com/NTFAQGuy

## Getting a Clone
Once Git is installed to have a local clone of the repository:

```sh
New-Item -ItemType Directory -Path C:\MasterIaaS2019
cd c:\MasterIaaS2019
git clone https://github.com/johnthebrit/MasterIaaS2019.git .
```

To update, make sure you are in the folder downloaded to and run

```sh
git pull
```

## Useful Links and Info

| Feature             | Link                                      |
|---------------------|-------------------------------------------|
| PowerShell Core     | https://github.com/powershell/powershell  |
| Visual Studio Code  | https://code.visualstudio.com/Download    |
| Git                 | https://git-scm.com/downloads             |

## Chapter Links

<details>
    <summary>Chapter 1 Links</summary>

* NIST Cloud definition - http://csrc.nist.gov/publications/nistpubs/800-145/SP800-145.pdf
* Project Olympus - https://azure.microsoft.com/en-us/blog/microsoft-reimagines-open-source-cloud-hardware/
* Azure FPGAs - https://docs.microsoft.com/en-us/azure/machine-learning/service/concept-accelerate-with-fpgas
* Azure Datacenters - https://cloud-platform-assets.azurewebsites.net/datacenter/
* Azure Datacenters - https://azure.microsoft.com/en-us/global-infrastructure/
* Azure Regions - https://azure.microsoft.com/en-us/global-infrastructure/regions/
* Azure Region Pairings - https://docs.microsoft.com/en-us/azure/best-practices-availability-paired-regions
* Azure Region Locations - https://azure.microsoft.com/en-us/global-infrastructure/locations/
* Germany trustee - https://docs.microsoft.com/en-us/azure/germany/germany-overview-data-trustee
* Azure Government - https://azure.microsoft.com/en-us/global-infrastructure/geographies/
* Azure Services by Region - https://azure.microsoft.com/en-us/global-infrastructure/services/
* Azure SLA - https://azure.microsoft.com/en-us/support/legal/sla/virtual-machines/v1_8/
* Azure Resiliency - https://azure.microsoft.com/en-us/blog/improving-azure-virtual-machine-resiliency-with-predictive-ml-and-live-migration/
* Azure Availability - https://docs.microsoft.com/en-us/azure/virtual-machines/virtual-machines-availability-set-supportability
* Azure Availability Zones - https://docs.microsoft.com/en-us/azure/availability-zones/az-overview
* Marea Cable - https://news.microsoft.com/marea/
* Submarine Cable Map - https://www.submarinecablemap.com/
* Microsoft Global Network - https://azure.microsoft.com/en-us/blog/how-microsoft-builds-its-fast-and-reliable-global-network/
* Azure Free Offer - https://azure.microsoft.com/en-us/free/
* Azure DevTest - https://azure.microsoft.com/en-us/pricing/dev-test/
* Azure Enterprise Agreements - https://www.microsoft.com/en-us/licensing/licensing-programs/enterprise
* Reserved Instances - https://azure.microsoft.com/en-us/pricing/reserved-vm-instances/
* Azure Hybrid Benefit - https://azure.microsoft.com/en-us/pricing/hybrid-benefit/
* Azure Subscription Limits - https://docs.microsoft.com/en-us/azure/azure-subscription-service-limits
* Creating Azure Dashboards - https://docs.microsoft.com/en-us/azure/azure-portal/azure-portal-dashboards
</details>

<details>
    <summary>Chapter 2 Links</summary>

* Azure Governance Docs - http://aka.ms/governancedocs
* Azure Shared Responsibility - http://download.microsoft.com/download/0/D/6/0D68AE95-6414-4074-B4B8-34039831E2BF/Microsoft-Cloud-Security-for-Legal-and-Compliance-Professionals.pdf
* Azure Compliance Center - https://www.microsoft.com/en-us/trustcenter/compliance/compliance-overview
* Azure Compliance Guide - https://servicetrust.microsoft.com/ViewPage/MSComplianceGuide
* Azure Governance Journeys - https://docs.microsoft.com/en-us/azure/architecture/cloud-adoption/governance/journeys/overview
* Changing Azure Subscription Owner - https://docs.microsoft.com/en-us/azure/billing/billing-subscription-transfer
* Azure Subscription Limits - https://docs.microsoft.com/en-us/azure/azure-subscription-service-limits
* Global Admin Elevate - https://docs.microsoft.com/en-us/azure/role-based-access-control/elevate-access-global-admin/
* Management Groups - https://docs.microsoft.com/en-us/azure/governance/management-groups/manage
* Azure Tagging Example - https://marckean.com/2018/12/17/easy-tagging-of-resources-in-azure-for-billing-and-charge-back/
* Azure Built-in Roles - https://docs.microsoft.com/en-us/azure/role-based-access-control/built-in-roles
* Azure RBAC PowerShell - https://docs.microsoft.com/en-us/azure/role-based-access-control/role-assignments-powershell
* Azure Naming Convention - https://docs.microsoft.com/en-us/azure/architecture/best-practices/naming-conventions
* Azure Tagging - https://docs.microsoft.com/en-us/azure/azure-resource-manager/tag-support
* Azure Tag Examples - https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-using-tags
* Azure Network Policy Example - https://github.com/Azure/azure-policy/tree/master/samples/Network/no-public-ip-except-for-one-subnet
* Azure Blueprints - https://docs.microsoft.com/en-us/azure/governance/blueprints/
* Azure Cost API - https://docs.microsoft.com/en-us/rest/api/consumption/

</details>

<details>
    <summary>Chapter 3 Links</summary>

* Windows Service Ports - https://support.microsoft.com/en-us/help/832017/service-overview-and-network-port-requirements-for-windows
* Azure v2 Apps - https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-app-types
* Azure AD SKUs - https://azure.microsoft.com/en-us/pricing/details/active-directory/
* Map ImmutableID - https://gallery.technet.microsoft.com/scriptcenter/Azure-GUID-to-ImmutableID-d27c5b12
* Office 365 UPN Branding - https://support.microsoft.com/en-in/help/3164442/how-to-use-upn-matching-for-identity-synchronization-in-office-365-azu
* Azure AD Connect Topologies - https://docs.microsoft.com/en-us/azure/active-directory/hybrid/plan-connect-topologies
* AAD Connect Account Permissions - https://docs.microsoft.com/en-us/azure/active-directory/hybrid/reference-connect-accounts-permissions
* AAD Emergency Access - https://docs.microsoft.com/en-us/azure/active-directory/users-groups-roles/directory-emergency-access
* AAD Workday Integration - https://docs.microsoft.com/en-us/azure/active-directory/saas-apps/workday-inbound-tutorial
* B2B Portal Example - https://github.com/Azure/active-directory-dotnet-graphapi-b2bportal-web
* Password Hash Synchronization - https://docs.microsoft.com/en-us/azure/active-directory/hybrid/how-to-connect-password-hash-synchronization
* PBDKF2 spec - https://www.ietf.org/rfc/rfc2898.txt
* AAD PTA - https://docs.microsoft.com/en-us/azure/active-directory/hybrid/how-to-connect-pta-security-deep-dive
* AAD Migrate Apps - https://aka.ms/migrateapps
* AAD SSO Workings - https://docs.microsoft.com/en-us/azure/active-directory/hybrid/how-to-connect-sso-how-it-works
* AAD Join SSO - https://docs.microsoft.com/en-us/azure/active-directory/devices/azuread-join-sso
* AAD Dynamic Group Rules - https://go.microsoft.com/fwlink/?linkid=2014390
* AAD Apps Consent - https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-permissions-and-consent
* AAD Access Panel - https://docs.microsoft.com/en-us/azure/active-directory/user-help/active-directory-saas-access-panel-introduction
</details>

<details>
    <summary>Chapter 4 Links</summary>

* Security Registration - https://aka.ms/mysecurityinfo
* MFA Deployment Plans - http://aka.ms/deploymentplans
* MFA and SSPR Methods - https://docs.microsoft.com/azure/active-directory/authentication/concept-authentication-methods
* AAD Password Policy - https://docs.microsoft.com/en-us/azure/active-directory/authentication/concept-sspr-policy#password-policies-that-only-apply-to-cloud-user-accounts
* AAD Log Analytics Views - https://docs.microsoft.com/en-us/azure/active-directory/reports-monitoring/howto-install-use-log-analytics-views
* AAD SSO Experience - https://docs.microsoft.com/en-us/azure/active-directory/manage-apps/what-is-single-sign-on#choosing-a-single-sign-on-method
* AAD B2C Demo Site - http://Aka.ms/aadb2cdemo
* AD Protocols - http://technet.microsoft.com/en-us/library/dd772723(v=ws.10).aspx
* AD Site Names - http://support.microsoft.com/kb/909264
* AD RODC - http://technet.microsoft.com/library/dd728028(WS.10).aspx
* AD RODC - http://technet.microsoft.com/en-us/library/dd734758(WS.10).aspx
* AD vs AAD DS - https://docs.microsoft.com/en-us/azure/active-directory-domain-services/active-directory-ds-comparison
</details>

<details>
    <summary>Chapter 5 Links</summary>

* Link
</details>

<details>
    <summary>Chapter 6 Links</summary>

* Azure Storage Architecture Detail - http://sigops.org/sosp/sosp11/current/2011-Cascais/11-calder-online.pdf
* Custom Storage URLs - https://docs.microsoft.com/en-us/azure/storage/blobs/storage-custom-domain-name
* Azure Storage Explorer - https://azure.microsoft.com/en-us/features/storage-explorer/
* Blob snapshot - https://azure.microsoft.com/en-us/blog/microsoft-azure-block-blob-storage-backup/
* Azure Storage Limits - https://docs.microsoft.com/azure/azure-subscription-service-limits#storage-limits
* Azure Managed Disks - https://docs.microsoft.com/en-us/azure/virtual-machines/windows/disk-scalability-targets
* Azure Managed Disk Types - https://docs.microsoft.com/en-us/azure/virtual-machines/windows/disks-types
* VM Availability - https://docs.microsoft.com/en-us/azure/virtual-machines/windows/manage-availability
* Write Acceleration in Azure - https://docs.microsoft.com/en-us/azure/virtual-machines/windows/how-to-enable-write-accelerator
* SQL Database Pricing - https://azure.microsoft.com/en-us/pricing/details/sql-database/managed/
* SQL DTU Calculator - http://dtucalculator.azurewebsites.net/
</details>

<details>
    <summary>Chapter 7 Links</summary>

* Windows VM Sizes - https://docs.microsoft.com/azure/virtual-machines/windows/sizes
* Azure Compute Units - https://docs.microsoft.com/azure/virtual-machines/windows/acu
* Retired VM Sizes - https://docs.microsoft.com/azure/virtual-machines/windows/sizes-previous-gen
* Custom Script Extension Site - https://docs.microsoft.com/en-us/azure/virtual-machines/extensions/custom-script-windows
* Golden Image Best Practices - https://github.com/Azure/Avere/blob/master/docs/azure_vm_provision_best_practices.md
* Azure Dedicated Host - https://docs.microsoft.com/azure/security/azure-isolation
* Microsoft Flow - https://flow.microsoft.com/
</details>

<details>
    <summary>Chapter 8 Links</summary>

* Custom role for stack registration - https://docs.microsoft.com/en-us/azure-stack/operator/azure-stack-registration-role
* VMs by region - https://azure.microsoft.com/en-us/global-infrastructure/services/?products=virtual-machines
* Azure Stack Capacity Planner - https://aka.ms/azstackcapacityplanner
* Buying Azure Stack - https://azure.microsoft.com/en-us/overview/azure-stack/how-to-buy/
* Azure Stack Services - https://azure.microsoft.com/en-us/overview/azure-stack/keyfeatures/
* Azure Stack Development Kit (ASDK) - https://azure.microsoft.com/en-us/overview/azure-stack/development-kit/
* Azure Stack PowerShell - https://docs.microsoft.com/en-us/azure-stack/operator/azure-stack-powershell-install
* Azure Stack Tools - https://github.com/Azure/AzureStack-Tools
* Azure Stack Marketplace - https://docs.microsoft.com/en-us/azure-stack/operator/azure-stack-download-azure-marketplace-item
* Example Syndication Script - https://github.com/johnthebrit/AzureStack/blob/master/azurestackmarketplace.ps1
* Log Analytics Azure Stack Integration - https://github.com/Azure-Samples/AzureStack-AdminPowerShell-OMSIntegration/blob/master/docs/setup.md
* Azure Stack HCI - https://www.microsoft.com/en-us/cloud-platform/azure-stack-hci-catalog
</details>

<details>
    <summary>Chapter 9 Links</summary>

* Link
</details>

<details>
    <summary>Chapter 10 Links</summary>

* Link
</details>

<details>
    <summary>Chapter 11 Links</summary>

* Link
</details>

<details>
    <summary>Chapter 12 Links</summary>

* Notorious Nine Cloud Threats - https://cloudsecurityalliance.org/download/the-notorious-nine-cloud-computing-top-threats-in-2013/
* Azure Certifications - https://www.microsoft.com/en-us/TrustCenter/CloudServices/Azure
* Azure Lightning Strike - www.huffingtonpost.com/2011/08/08/amazon-microsoft-dublin-lightening_n_920875.html
* Cloud Link NSA Article - www.washingtonpost.com/world/national-security/nsa-infiltrates-links-to-yahoo-google-data-centers-worldwide-snowden-documents-say/2013/10/30/e51d661e-4166-11e3-8b74-d89d714ca4dd_story.html
* Azure blog - http://azure.microsoft.com/blog/
* Azure Networking blog - https://azure.microsoft.com/blog/topics/networking/
* Azure VM documentation - https://docs.microsoft.com/azure/virtual-machines/
* My blog (information about new videos I create and other resources) - https://savilltech.com
* My YouTube Channel - https://youtube.com/ntfaqguy

</details>
