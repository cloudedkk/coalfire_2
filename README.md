# Remediation for CIS Benchmark 2.2.21 & 18.9.45.4.1.2

This readme was created in order to do a step-by-step walkthrough in using Group Policy Objects (GPO) to remediate CIS Benchmark vulnerabilities that have been identified inside the Windows Server (bastion host) we have hosted inside of our infrastructure. 

## **CIS 2.2.22 - Ensure 'Deny access to this computer from the network' to include 'Guests, Local account and member of Administrators group' (MS only)**

Description: This policy setting prohibits users from connecting to a computer from across the network, which would allow users to access and potentially modify data remotely. In high security environments, there should be no need for remote users to access data on a computer. Instead, file sharing should be accomplished through the use of network servers. This user right supersedes the Access this computer from the network user right if an account is subject to both policies.


***Steps to Remediate using Group Policy Objects***

 1. To establish the recommended configuration via GP, configure the following UI path: 

Computer Configuration\Policies\Windows Settings\Security Settings\Local Policies\User Rights 		Assignment\Deny access to this computer from the network.

2. Set the "Default Value" to "No one"

3. If the following groups or accounts are not defined for the "Deny access to this computer from the network" right, this is a finding:  
  
Domain Systems Only:  
		
		Enterprise Admins group  
		Domain Admins group  
		Local account (see Note below)  
  
All Systems:  

		Guests group  
  
Systems dedicated to the management of Active Directory (AD admin platforms, see V-36436 in the Active Directory Domain STIG) are exempt from denying the Enterprise Admins and Domain Admins groups.  
  
Note: "Local account" is a built-in security group used to assign user rights and permissions to all local accounts.

**Impact**: If you configure the Deny access to this computer from the network user right for other groups, you could limit the abilities of users who are assigned to specific administrative roles in your environment. You should verify that delegated tasks will not be negatively affected.

## CIS 18.9.45.4.1.2 -  Ensure 'Configure Attack Surface Reduction rules: Set the state for each ASR rule' is configured

Description: Attack surface reduction rules (ASR rules) help prevent actions that malware often abuses to compromise devices and networks. You should configure each one of your ASR rule settings in order to mitigate this vulnerability.

Note: If you manage your computers and devices with Intune, Configuration Manager, or other enterprise-level management platform, the management software will overwrite any conflicting Group Policy settings on startup.

 1. On your Group Policy management computer, open the Group Policy Management Console, right-click the Group Policy Object you want to configure and select Edit.\

 2. In the Group Policy Management Editor, go to Computer configuration and select Administrative templates.

 3. Expand the tree to Windows components > Microsoft Defender Antivirus > Microsoft Defender Exploit Guard > Attack surface reduction.

 4. Select Configure Attack surface reduction rules and select Enabled. You can then set the individual state for each rule in the options section. Select Show... and enter the rule ID in the Value name column and your chosen state in the Value column as follows:

		0 : Disable (Disable the ASR rule)
		1 : Block (Enable the ASR rule)
		2 : Audit (Evaluate how the ASR rule would impact your organization if enabled)
		6 : Warn (Enable the ASR rule but allow the end-user to bypass the block)
		
![enter image description here](https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/images/asr-rules-gp.png?view=o365-worldwide#lightbox)


 5. To exclude files and folders from ASR rules, select the Exclude files and paths from Attack surface reduction rules setting and set the option to Enabled. Select Show and enter each file or folder in the Value name column. Enter 0 in the Value column for each item.

**Default Value:  Disabled. (No ASR rules will be configured.)