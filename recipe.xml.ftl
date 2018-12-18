<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />

    <instantiate from="root/src/app_package/Fragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${prefix}Fragment.kt" />
    <instantiate from="root/src/app_package/ViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${prefix}ViewModel.kt" />

    <instantiate from="root/res/layout/blank_fragment.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${fragment_layout}.xml" />

</recipe>
