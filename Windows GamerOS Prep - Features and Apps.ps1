# Created by Txmmy
# GamerOS Preset Designer (WIP)

$tweaks = @(
### Require Administrator ###
"RequireAdmin",
"CustomWindow",
"SetLocation",
"GamerOSLogo",

### Preset Setup ###
"AskUser0",
"AskUser1",
"AskUser2",
"AskUser3",
"AskUser4",
"AskUser5",
"AskUser6",
"AskUser7",
"AskUser8",

### Preset Created ###
"PresetAsk"
)

##########
# Require Administrator
##########

# Relaunch the Script with Administrator Privileges.
Function RequireAdmin {
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" $PSCommandArgs" -WorkingDirectory $pwd -Verb RunAs
Exit
cls
}
}

# Launch the Script with A Custom Windows Size.
Function CustomWindow {
powershell -command "[console]::windowwidth=65; [console]::windowheight=20; [console]::bufferwidth=[console]::windowwidth"
}

Function SetLocation {
$Desktop = $env:USERPROFILE + "\desktop"
Set-Location $Desktop
}

# GamerOS Logo Display
Function GamerOSLogo{

Write-Host "                                                                 " -ForegroundColor DarkCyan
Write-Host "   ██████╗  █████╗ ███╗   ███╗███████╗██████╗  ██████╗ ███████╗  " -ForegroundColor DarkCyan
Write-Host "  ██╔════╝ ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔═══██╗██╔════╝  " -ForegroundColor DarkCyan
Write-Host "  ██║  ███╗███████║██╔████╔██║█████╗  ██████╔╝██║   ██║███████╗  " -ForegroundColor DarkCyan
Write-Host "  ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗██║   ██║╚════██║  " -ForegroundColor DarkCyan
Write-Host "  ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗██║  ██║╚██████╔╝███████║  " -ForegroundColor DarkCyan
Write-Host "   ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝  " -ForegroundColor DarkCyan
Write-Host "       ██████╗ ██████╗ ███████╗███████╗███████╗████████╗         " -ForegroundColor DarkCyan
Write-Host "       ██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝╚══██╔══╝         " -ForegroundColor DarkCyan
Write-Host "       ██████╔╝██████╔╝█████╗  ███████╗█████╗     ██║            " -ForegroundColor DarkCyan
Write-Host "       ██╔═══╝ ██╔══██╗██╔══╝  ╚════██║██╔══╝     ██║            " -ForegroundColor DarkCyan
Write-Host "       ██║     ██║  ██║███████╗███████║███████╗   ██║            " -ForegroundColor DarkCyan
Write-Host "       ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝   ╚═╝            " -ForegroundColor DarkCyan
Write-Host "    ██████╗██████╗ ███████╗ █████╗ ████████╗ ██████╗ ██████╗     " -ForegroundColor DarkCyan
Write-Host "   ██╔════╝██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██╔═══██╗██╔══██╗    " -ForegroundColor DarkCyan
Write-Host "   ██║     ██████╔╝█████╗  ███████║   ██║   ██║   ██║██████╔╝    " -ForegroundColor DarkCyan
Write-Host "   ██║     ██╔══██╗██╔══╝  ██╔══██║   ██║   ██║   ██║██╔══██╗    " -ForegroundColor DarkCyan
Write-Host "   ╚██████╗██║  ██║███████╗██║  ██║   ██║   ╚██████╔╝██║  ██║    " -ForegroundColor DarkCyan
Write-Host "    ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝    " -ForegroundColor DarkCyan
}

##########
# Preset Questionaire
##########

Function AskUser0 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Yes - Create Updateable Image
No - Create Smallest Image"
$MessageTitle = "Create Preset File"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
if ($result -eq 'Yes') {
New-Item ".\Windows GamerOS Features and Apps.xml" -ItemType File -Value '<?xml version="1.0" encoding="utf-8"?>
<Preset xmlns="urn:schemas-nliteos-com:pn.v1">
	<Date></Date>
	<AppInfo>
		<Version></Version>
		<Licensed>Yes</Licensed>
		<Protections>Yes</Protections>
		<Host></Host>
	</AppInfo>
	<ImageInfo>
		<Version mode="offline"></Version>
		<GUID></GUID>
	</ImageInfo>
	<RemoveComponents AppRemovalMode="Custom">
	RemoveComponents=
	</RemoveComponents>
	<Compatibility protectHidden="true">
		<ComponentFeatures>
			<Feature enabled="no">AppGuard</Feature>
			<Feature enabled="no">YubiKey</Feature>
			<Feature enabled="no">Bluetooth</Feature>
			<Feature enabled="no">CapFrameX</Feature>
			<Feature enabled="no">Discord</Feature>
			<Feature enabled="no">FileSharing</Feature>
			<Feature enabled="no">Hyper-V</Feature>
			<Feature enabled="no">iCloud</Feature>
			<Feature enabled="no">ManualSetup</Feature>
			<Feature enabled="no">OfficeSupport</Feature>
			<Feature enabled="no">AppxSupport</Feature>
			<Feature enabled="no">Netflix</Feature>
			<Feature enabled="no">NetworkDiscovery</Feature>
			<Feature enabled="no">NightLight</Feature>
			<Feature enabled="yes">NvidiaSetup</Feature>
			<Feature enabled="yes">OOBE</Feature>
			<Feature enabled="no">Printing</Feature>
			<Feature enabled="no">Recommended-All</Feature>
			<Feature enabled="no">SamsungSwitch</Feature>
			<Feature enabled="no">Scanning</Feature>
			<Feature enabled="yes">ServicingStack</Feature>
			<Feature enabled="no">ShellSearchSupport</Feature>
			<Feature enabled="no">Spotify</Feature>
			<Feature enabled="yes">SFC</Feature>
			<Feature enabled="no">DefaultFonts</Feature>
			<Feature enabled="no">SafeMode</Feature>
			<Feature enabled="no">TeamViewer</Feature>
			<Feature enabled="no">Recommended-Tablet</Feature>
			<Feature enabled="no">USBModem</Feature>
			<Feature enabled="no">USB</Feature>
			<Feature enabled="no">VideoPlayback</Feature>
			<Feature enabled="no">VPN</Feature>
			<Feature enabled="no">VisualStudio</Feature>
			<Feature enabled="yes">VSS</Feature>
			<Feature enabled="no">ActivationKMS</Feature>
			<Feature enabled="yes">Activation</Feature>
			<Feature enabled="no">WindowsStore</Feature>
			<Feature enabled="no">WindowsUpdate</Feature>
			<Feature enabled="yes">WLAN</Feature>
		</ComponentFeatures>
		<MachineDrivers>
			<Machine enabled="yes">HostMachine</Machine>
			<Machine enabled="no">Hyper-V VM</Machine>
			<Machine enabled="no">Parallels VM</Machine>
			<Machine enabled="no">Virtual Box VM</Machine>
			<Machine enabled="no">VMware VM</Machine>
		</MachineDrivers>
	</Compatibility>
	<Features>
    </Features>
	<Packages></Packages>
	<Commands>
		<PostUpdates></PostUpdates>
	</Commands>
	<Drivers showHidden="true"></Drivers>
	<Tweaks>
		<Settings></Settings>
		<Services></Services>
		<ExtraServices></ExtraServices>
		<ScheduledTasks></ScheduledTasks>
	</Tweaks>
	<ApplyOptions>
		<ImageTasks>
			<Task>imageSaveRebuild</Task>
			<Task>imageFormatEsd</Task>
			<Task>imageOptionsDontBackupPresetLog</Task>
		</ImageTasks>
		<AutoIsoFile>GAMEROS_FOR_DESKTOPS.iso</AutoIsoFile>
		<AutoIsoLabel>GAMEROS</AutoIsoLabel>
		<AutoSplitSize>4000</AutoSplitSize>
		<CleanHotfixedLeftovers>0</CleanHotfixedLeftovers>
		<OptimizeAppX>false</OptimizeAppX>
		<ReuseDriverCache>false</ReuseDriverCache>
	</ApplyOptions>
	<Execution>
		<Remove></Remove>
		<Change></Change>
		<Add></Add>
	</Execution>
	<Registry></Registry>
</Preset>
'
}
if ($result -eq 'No') {
New-Item ".\Windows GamerOS Features and Apps.xml" -ItemType File -Value '<?xml version="1.0" encoding="utf-8"?>
<Preset xmlns="urn:schemas-nliteos-com:pn.v1">
	<Date></Date>
	<AppInfo>
		<Version></Version>
		<Licensed>Yes</Licensed>
		<Protections>Yes</Protections>
		<Host></Host>
	</AppInfo>
	<ImageInfo>
		<Version mode="offline"></Version>
		<GUID></GUID>
	</ImageInfo>
	<RemoveComponents AppRemovalMode="Custom">
	RemoveComponents=
	</RemoveComponents>
	<Compatibility protectHidden="true">
		<ComponentFeatures>
			<Feature enabled="no">AppGuard</Feature>
			<Feature enabled="no">YubiKey</Feature>
			<Feature enabled="no">Bluetooth</Feature>
			<Feature enabled="no">CapFrameX</Feature>
			<Feature enabled="no">Discord</Feature>
			<Feature enabled="no">FileSharing</Feature>
			<Feature enabled="no">Hyper-V</Feature>
			<Feature enabled="no">iCloud</Feature>
			<Feature enabled="no">ManualSetup</Feature>
			<Feature enabled="no">OfficeSupport</Feature>
			<Feature enabled="no">AppxSupport</Feature>
			<Feature enabled="no">Netflix</Feature>
			<Feature enabled="no">NetworkDiscovery</Feature>
			<Feature enabled="no">NightLight</Feature>
			<Feature enabled="yes">NvidiaSetup</Feature>
			<Feature enabled="yes">OOBE</Feature>
			<Feature enabled="no">Printing</Feature>
			<Feature enabled="no">Recommended-All</Feature>
			<Feature enabled="no">SamsungSwitch</Feature>
			<Feature enabled="no">Scanning</Feature>
			<Feature enabled="no">ServicingStack</Feature>
			<Feature enabled="no">ShellSearchSupport</Feature>
			<Feature enabled="no">Spotify</Feature>
			<Feature enabled="no">SFC</Feature>
			<Feature enabled="no">DefaultFonts</Feature>
			<Feature enabled="no">SafeMode</Feature>
			<Feature enabled="no">TeamViewer</Feature>
			<Feature enabled="no">Recommended-Tablet</Feature>
			<Feature enabled="no">USBModem</Feature>
			<Feature enabled="no">USB</Feature>
			<Feature enabled="no">VideoPlayback</Feature>
			<Feature enabled="no">VPN</Feature>
			<Feature enabled="no">VisualStudio</Feature>
			<Feature enabled="yes">VSS</Feature>
			<Feature enabled="no">ActivationKMS</Feature>
			<Feature enabled="yes">Activation</Feature>
			<Feature enabled="no">WindowsStore</Feature>
			<Feature enabled="no">WindowsUpdate</Feature>
			<Feature enabled="yes">WLAN</Feature>
		</ComponentFeatures>
		<MachineDrivers>
			<Machine enabled="yes">HostMachine</Machine>
			<Machine enabled="no">Hyper-V VM</Machine>
			<Machine enabled="no">Parallels VM</Machine>
			<Machine enabled="no">Virtual Box VM</Machine>
			<Machine enabled="no">VMware VM</Machine>
		</MachineDrivers>
	</Compatibility>
	<Features>
    </Features>
	<Packages></Packages>
	<Commands>
		<PostUpdates></PostUpdates>
	</Commands>
	<Drivers showHidden="true"></Drivers>
	<Tweaks>
		<Settings></Settings>
		<Services></Services>
		<ExtraServices></ExtraServices>
		<ScheduledTasks></ScheduledTasks>
	</Tweaks>
	<ApplyOptions>
		<ImageTasks>
			<Task>imageSaveRebuild</Task>
			<Task>imageFormatEsd</Task>
			<Task>imageOptionsDontBackupPresetLog</Task>
		</ImageTasks>
		<AutoIsoFile>GAMEROS_FOR_DESKTOPS.iso</AutoIsoFile>
		<AutoIsoLabel>GAMEROS</AutoIsoLabel>
		<AutoSplitSize>4000</AutoSplitSize>
		<CleanHotfixedLeftovers>0</CleanHotfixedLeftovers>
		<OptimizeAppX>false</OptimizeAppX>
		<ReuseDriverCache>false</ReuseDriverCache>
	</ApplyOptions>
	<Execution>
		<Remove></Remove>
		<Change></Change>
		<Add></Add>
	</Execution>
	<Registry></Registry>
</Preset>
'
}
}

Function AskUser1 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Yes - Remove One Drive App
No - Dont Remove One Drive"
$MessageTitle = "One Drive"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
if ($result -eq 'Yes') {
$filepaths = '.\Windows GamerOS Features and Apps.xml' 

foreach ($filename in (get-item $filepaths))
{
   (Get-Content $filename) |
    foreach {          
        if ($_ -match "RemoveComponents=")
        {            
             "$_		

		<c>Txmmy's Note 'Onedrive Removal'</c>
		<c>onedrive</c>"             
        }
        else
        {
            $_
        }                          
       } | set-Content $filename
}
}
if ($result -eq 'No') {

}
}

Function AskUser2 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Yes - Remove Edge Browser
No - Leave Edge Browser"
$MessageTitle = "Microsoft Edge"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
if ($result -eq 'Yes') {
$filepaths = '.\Windows GamerOS Features and Apps.xml' 

foreach ($filename in (get-item $filepaths))
{
   (Get-Content $filename) |
    foreach {          
        if ($_ -match "RemoveComponents=")
        {            
             "$_		

		<c>Txmmy's Note 'Edge Browser Removal'</c>
		<c>edgeupdate 'Microsoft Edge Update'</c>
		<c>microsoft.microsoftedge.stable 'Microsoft Edge (Chromium)'</c>
		<c>Microsoft.MicrosoftEdge 'Microsoft Edge (Legacy)'</c>
		<c>Microsoft.MicrosoftEdgeDevToolsClient 'Microsoft Edge DevTools Client'</c>
		<c>pdfreader 'Windows Reader (PDF)'</c>"             
        }
        else
        {
            $_
        }                          
       } | set-Content $filename
}
}
if ($result -eq 'No') {

}
}

Function AskUser3 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Yes - Remove Defender AntiVirus
No - Leave Defender Antivirus"
$MessageTitle = "Windows Defender"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
if ($result -eq 'Yes') {
$filepaths = '.\Windows GamerOS Features and Apps.xml' 

foreach ($filename in (get-item $filepaths))
{
   (Get-Content $filename) |
    foreach {          
        if ($_ -match "RemoveComponents=")
        {            
             "$_		

		<c>Txmmy's Note 'Defender Removal'</c>
		<c>Microsoft.Windows.SecHealthUI 'Windows Defender'</c>
		<c>securitycenter 'Security Center'</c>"             
        }
        else
        {
            $_
        }                          
       } | set-Content $filename
}
}
if ($result -eq 'No') {

}
}

Function AskUser4 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Yes -Remove Firewall
No - Leave Firewall"
$MessageTitle = "Windows Firewall"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
if ($result -eq 'Yes') {
$filepaths = '.\Windows GamerOS Features and Apps.xml' 

foreach ($filename in (get-item $filepaths))
{
   (Get-Content $filename) |
    foreach {          
        if ($_ -match "RemoveComponents=")
        {            
             "$_		

		<c>Txmmy's Note 'Firewall Removal'</c>
		<c>firewall 'Windows Firewall'</c>
		<c>wfmmc 'Windows Firewall (management console)'</c>
		<c>wfmmc32 'Windows Firewall (management console) - 32 bit'</c>"             
        }
        else
        {
            $_
        }                          
       } | set-Content $filename
}
}
if ($result -eq 'No') {

}
}

Function AskUser5 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Yes - Remove Ease of Access Features
No - Leave Ease of Access Features"
$MessageTitle = "Ease of Access"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
if ($result -eq 'Yes') {
$filepaths = '.\Windows GamerOS Features and Apps.xml' 

foreach ($filename in (get-item $filepaths))
{
   (Get-Content $filename) |
    foreach {          
        if ($_ -match "RemoveComponents=")
        {            
             "$_		

		<c>Txmmy's Note 'Ease of Access Removal'</c>
		<c>accessibility 'Accessibility tools (Ease of Access)'</c>
		<c>accessibility_cursors 'Mouse Pointers (Accessibility tools)'</c>
		<c>accessibility_magnifier 'Screen Magnifier'</c>
		<c>accessibility_narrator 'Narrator'</c>
		<c>easeofaccessthemes 'Ease Of Access Themes'</c>
		<c>Microsoft.Windows.NarratorQuickStart 'Narrator'</c>
		<c>speechcommon 'Speech Recognition'</c>
		<c>speechtts 'Speech TTS'</c>"             
        }
        else
        {
            $_
        }                          
       } | set-Content $filename
}
}
if ($result -eq 'No') {

}
}

Function AskUser6 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = " Yes - Remove Xbox Fully Disabling Gamebar
No - Leave Xbox And Gamebar Functions"
$MessageTitle = "Xbox Game Bar/Mode"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
if ($result -eq 'Yes') {
$filepaths = '.\Windows GamerOS Features and Apps.xml' 

foreach ($filename in (get-item $filepaths))
{
   (Get-Content $filename) |
    foreach {          
        if ($_ -match "RemoveComponents=")
        {            
             "$_		

		<c>Txmmy's Note 'XBOX Gamebar Requires'</c>
		<c>xbox 'Xbox - Core'</c>

		<c>Txmmy's Note 'XBOX Gamebar Section'</c>
		<c>Microsoft.XboxApp 'Xbox'</c>
		<c>Microsoft.Xbox.TCUI 'Xbox TCUI'</c>
		<c>Microsoft.XboxGameOverlay 'Xbox Game Bar Plugin'</c>
		<c>Microsoft.XboxGamingOverlay 'Xbox Game Bar'</c>
		<c>Microsoft.XboxIdentityProvider 'Xbox Identity Provider'</c>
		<c>Microsoft.XboxSpeechToTextOverlay 'Xbox Game Speech Window'</c>"             
        }
        else
        {
            $_
        }                          
       } | set-Content $filename
}
}
if ($result -eq 'No') {

}
}

Function AskUser7 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Yes - Remove Windows Apps Fully Disabling The Store?
No - Remove Windows Apps Only Leaving Store?"
$MessageTitle = "Microsoft Apps"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
if ($result -eq 'Yes') {
$filepaths = '.\Windows GamerOS Features and Apps.xml' 

foreach ($filename in (get-item $filepaths))
{
   (Get-Content $filename) |
    foreach {          
        if ($_ -match "RemoveComponents=")
        {            
             "$_		

		<c>Txmmy's Note 'Windows Store Apps Section'</c>
		<c>Microsoft.549981C3F5F10 'Cortana'</c>
		<c>Microsoft.BingWeather 'MSN Weather'</c>
		<c>Microsoft.GetHelp 'Get Help'</c>
		<c>Microsoft.Getstarted 'Tips (Get Started)'</c>
		<c>Microsoft.HEIFImageExtension 'HEIF Image Extensions'</c>
		<c>Microsoft.Microsoft3DViewer '3D Viewer'</c>
		<c>Microsoft.MicrosoftOfficeHub 'Office'</c>
		<c>Microsoft.MicrosoftSolitaireCollection 'Microsoft Solitaire Collection'</c>
		<c>Microsoft.MicrosoftStickyNotes 'Microsoft Sticky Notes'</c>
		<c>Microsoft.MixedReality.Portal 'Mixed Reality Portal'</c>
		<c>Microsoft.MSPaint 'Paint 3D'</c>
		<c>Microsoft.Office.OneNote 'OneNote'</c>
		<c>Microsoft.People 'Microsoft People'</c>
		<c>Microsoft.ScreenSketch 'Snip &amp; Sketch'</c>
		<c>Microsoft.Services.Store.Engagement 'Microsoft Engagement Framework'</c>
		<c>Microsoft.SkypeApp 'Skype'</c>
		<c>Microsoft.Win32WebViewHost 'Desktop App Web Viewer'</c>
		<c>Microsoft.Windows.SecureAssessmentBrowser 'Take a Test'</c>
		<c>Microsoft.Wallet 'Microsoft Pay'</c>
		<c>Microsoft.WebMediaExtensions 'Web Media Extensions'</c>
		<c>Microsoft.WebpImageExtension 'Webp Image Extensions'</c>
		<c>Microsoft.Windows.Photos 'Microsoft Photos'</c>
		<c>Microsoft.WindowsAlarms 'Windows Alarms &amp; Clock'</c>
		<c>Microsoft.WindowsCalculator 'Windows Calculator'</c>
		<c>Microsoft.WindowsCamera 'Windows Camera'</c>
		<c>microsoft.windowscommunicationsapps 'Mail and Calendar'</c>
		<c>Microsoft.WindowsFeedbackHub 'Feedback Hub'</c>
		<c>Microsoft.WindowsMaps 'Windows Maps'</c>
		<c>Microsoft.WindowsSoundRecorder 'Windows Voice Recorder'</c>
		<c>Microsoft.YourPhone 'Your Phone'</c>
		<c>Microsoft.ZuneMusic 'Groove Music'</c>
		<c>Microsoft.ZuneVideo 'Movies &amp; TV'</c>
		<c>osk 'On-Screen Keyboard (Tablet PC)'</c>
		<c>osk_acc 'On-Screen Keyboard (Accessibility tools)'</c>
		<c>pushtoinstall 'Windows PushToInstall Service'</c>
		<c>rotationmanager 'Auto-Rotation Manager'</c>
		<c>tabletpc 'Tablet PC'</c>

		<c>Txmmy's Note 'Windows Store Apps Rely Upon'</c>
		<c>Microsoft.VCLibs.140.00.UWPDesktop 'Microsoft Visual C++ 2015 UWP Desktop Runtime Package'</c>
		<c>Microsoft.VCLibs.140.00 'Microsoft Visual C++ 2015 UWP Runtime Package'</c>

		<c>Txmmy's Note 'Windows Store Requires'</c>
		<c>Microsoft.DesktopAppInstaller 'App Installer'</c>
		<c>Microsoft.StorePurchaseApp 'Store Experience Host'</c>
		<c>Microsoft.WindowsStore 'Windows Store'</c>
		<c>passport 'Microsoft Passport'</c>"             
        }
        else
        {
            $_
        }                          
       } | set-Content $filename
}
}
if ($result -eq 'No') {
$filepaths = '.\Windows GamerOS Features and Apps.xml' 

foreach ($filename in (get-item $filepaths))
{
   (Get-Content $filename) |
    foreach {          
        if ($_ -match "RemoveComponents=")
        {            
             "$_		

		<c>Txmmy's Note 'Windows Store Apps Section'</c>
		<c>Microsoft.549981C3F5F10 'Cortana'</c>
		<c>Microsoft.BingWeather 'MSN Weather'</c>
		<c>Microsoft.DesktopAppInstaller 'App Installer'</c>
		<c>Microsoft.GetHelp 'Get Help'</c>
		<c>Microsoft.Getstarted 'Tips (Get Started)'</c>
		<c>Microsoft.HEIFImageExtension 'HEIF Image Extensions'</c>
		<c>Microsoft.Microsoft3DViewer '3D Viewer'</c>
		<c>Microsoft.MicrosoftOfficeHub 'Office'</c>
		<c>Microsoft.MicrosoftSolitaireCollection 'Microsoft Solitaire Collection'</c>
		<c>Microsoft.MicrosoftStickyNotes 'Microsoft Sticky Notes'</c>
		<c>Microsoft.MixedReality.Portal 'Mixed Reality Portal'</c>
		<c>Microsoft.MSPaint 'Paint 3D'</c>
		<c>Microsoft.Office.OneNote 'OneNote'</c>
		<c>Microsoft.People 'Microsoft People'</c>
		<c>Microsoft.ScreenSketch 'Snip &amp; Sketch'</c>
		<c>Microsoft.Services.Store.Engagement 'Microsoft Engagement Framework'</c>
		<c>Microsoft.SkypeApp 'Skype'</c>
		<c>Microsoft.Win32WebViewHost 'Desktop App Web Viewer'</c>
		<c>Microsoft.Windows.SecureAssessmentBrowser 'Take a Test'</c>
		<c>Microsoft.Wallet 'Microsoft Pay'</c>
		<c>Microsoft.WebMediaExtensions 'Web Media Extensions'</c>
		<c>Microsoft.WebpImageExtension 'Webp Image Extensions'</c>
		<c>Microsoft.Windows.Photos 'Microsoft Photos'</c>
		<c>Microsoft.WindowsAlarms 'Windows Alarms &amp; Clock'</c>
		<c>Microsoft.WindowsCalculator 'Windows Calculator'</c>
		<c>Microsoft.WindowsCamera 'Windows Camera'</c>
		<c>microsoft.windowscommunicationsapps 'Mail and Calendar'</c>
		<c>Microsoft.WindowsFeedbackHub 'Feedback Hub'</c>
		<c>Microsoft.WindowsMaps 'Windows Maps'</c>
		<c>Microsoft.WindowsSoundRecorder 'Windows Voice Recorder'</c>
		<c>Microsoft.XboxApp 'Xbox'</c>
		<c>Microsoft.YourPhone 'Your Phone'</c>
		<c>Microsoft.ZuneMusic 'Groove Music'</c>
		<c>Microsoft.ZuneVideo 'Movies &amp; TV'</c>
		<c>osk 'On-Screen Keyboard (Tablet PC)'</c>
		<c>osk_acc 'On-Screen Keyboard (Accessibility tools)'</c>
		<c>pushtoinstall 'Windows PushToInstall Service'</c>
		<c>rotationmanager 'Auto-Rotation Manager'</c>
		<c>tabletpc 'Tablet PC'</c>"             
        }
        else
        {
            $_
        }                          
       } | set-Content $filename
}
}
}

Function AskUser8 {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "Yes - Disable Unnecessary Features
No - Leave Unnecessary Features"
$MessageTitle = "Ease of Access"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
if ($result -eq 'Yes') {
$filepaths = '.\Windows GamerOS Features and Apps.xml' 

foreach ($filename in (get-item $filepaths))
{
   (Get-Content $filename) |
    foreach {          
        if ($_ -match "<Features>")
        {            
             "$_		
		<Feature name=""Language.Handwriting~~~en-us~0.0.1.0"">false</Feature>
		<Feature name=""Language.OCR~~~en-us~0.0.1.0"">false</Feature>
		<Feature name=""Language.Speech~~~en-us~0.0.1.0"">false</Feature>
		<Feature name=""Language.TextToSpeech~~~en-us~0.0.1.0"">false</Feature>
		<Feature name=""Language.Basic~~~en-us~0.0.1.0"">false</Feature>
		<Feature name=""OneCoreUAP.OneSync~~~~0.0.1.0"">false</Feature>
		<Feature name=""Browser.InternetExplorer~~~~0.0.11.0"">false</Feature>
		<Feature name=""Internet-Explorer-Optional-amd64"">false</Feature>
		<Feature name=""Printing-Foundation-InternetPrinting-Client"">false</Feature>
		<Feature name=""MathRecognizer~~~~0.0.1.0"">false</Feature>
		<Feature name=""Printing-PrintToPDFServices-Features"">false</Feature>
		<Feature name=""App.Support.QuickAssist~~~~0.0.1.0"">false</Feature>
		<Feature name=""Printing-XPSServices-Features"">false</Feature>
		<Feature name=""OpenSSH.Client~~~~0.0.1.0"">false</Feature>
		<Feature name=""Printing-Foundation-Features"">false</Feature>
		<Feature name=""Print.Management.Console~~~~0.0.1.0"">false</Feature>
		<Feature name=""MSRDC-Infrastructure"">false</Feature>
		<Feature name=""SmbDirect"">false</Feature>
		<Feature name=""App.StepsRecorder~~~~0.0.1.0"">false</Feature>
		<Feature name=""Print.Fax.Scan~~~~0.0.1.0"">false</Feature>
		<Feature name=""Windows.Client.ShellComponents~~~~0.0.1.0"">false</Feature>
		<Feature name=""Hello.Face.Migration.18967~~~~0.0.1.0"">false</Feature>
		<Feature name=""Hello.Face.18967~~~~0.0.1.0"">false</Feature>
		<Feature name=""Media.WindowsMediaPlayer~~~~0.0.12.0"">false</Feature>
		<Feature name=""WindowsMediaPlayer"">false</Feature>
		<Feature name=""SearchEngine-Client-Package"">false</Feature>
		<Feature name=""Microsoft.Windows.WordPad~~~~0.0.1.0"">false</Feature>
		<Feature name=""WorkFolders-Client"">false</Feature>"             
        }
        else
        {
            $_
        }                          
       } | set-Content $filename
}
}
if ($result -eq 'No') {

}
}

##########
# Auxiliary Functions
##########

Function PresetAsk {
Add-Type -AssemblyName PresentationCore,PresentationFramework
$ButtonType = [System.Windows.MessageBoxButton]::YesNo
$MessageIcon = [System.Windows.MessageBoxImage]::Question
$MessageBody = "GamerOS Preset Created"
$MessageTitle = "GamerOS Message"
$Result = [System.Windows.MessageBox]::Show($MessageBody,$MessageTitle,$ButtonType,$MessageIcon)
if ($result -eq 'Yes') {
Write-Host "Exiting" -ForegroundColor Cyan
Start-Sleep 5
Exit-PSSession
}
if ($result -eq 'No') {

}
}

##########
# Parse Parameters and Apply Tweaks
##########

# Call the Desired Tweak Functions
$tweaks | ForEach { Invoke-Expression $_ }