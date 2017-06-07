. https://raw.githubusercontent.com/b0bbles/ConfigManagement/master/DscConfig/ConfigurationDataSample.ps1

$TestEnvironmentData = (Invoke-Webrequest https://raw.githubusercontent.com/b0bbles/ConfigManagement/master/DscConfig/TestEnvironment.psd1).Content

Start-AzureRmAutomationDscCompilationJob -ResourceGroupName "MyResourceGroup" -AutomationAccountName "MyAutomationAccount" -ConfigurationName "ConfigurationDataSample" -ConfigurationData $TestEnvironmentData
