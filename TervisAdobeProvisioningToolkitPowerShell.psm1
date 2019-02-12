function Invoke-TervisAdobeProvisioningToolkitSerializeInDesignServer {
    $SerialNumber = Get-TervisPasswordstatePassword -Guid a3cbc578-60cc-4031-b616-665ee1781385 |
    Select-Object -ExpandProperty Password

    Set-AdobeProvisioningToolkitAdobe_PRTKFilePath -Path "\\tervis.prv\applications\installers\Adobe\Adobe Provisioning Toolkit Enterprise Edition\adobe_prtk.exe"
    Invoke-AdobeProvisioningToolkitSerializeGenerate -LicensingIdentifier "V7{}InDesignServer-14-Win-GM" -SerialNumber $SerialNumber -ProvisioningXMLFilePath $HOME\prov.xml
}

function Get-TervisAdobeProvisioningToolkitSerializeInDesignServerProvisioningXML {
    param (
        $OutPath
    )
    Get-PasswordstateDocument -DocumentID 54 -OutFile "$OutPath\prov.xml" -DocumentLocation password
}