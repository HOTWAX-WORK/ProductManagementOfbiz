<style>
.styled-table {
    width: 100%;
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.styled-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
}

.styled-table th,
.styled-table td {
    padding: 12px 15px;
    text-align: left;
}

.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}

.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}
    .pagination a {
        margin: 0 5px;
    }
</style>
<#assign viewSize = 10/>
<#if productList?size lt 10>
      <#assign viewSize = productList?size/>
</#if>
<#assign viewIndexParam = requestParameters.VIEW_INDEX!"0"/>
<#assign viewIndex = viewIndexParam?number/>
<#assign listSize = productList?size/>
<#assign highIndex = (viewIndex + 1) * viewSize/>

<table class="styled-table">
    <thead>
        <tr>
            <th>${uiLabelMap.productId}</th>
            <th>${uiLabelMap.productName}</th>
            <th>${uiLabelMap.productTypeId}</th>
            <th>${uiLabelMap.primaryProductCategoryId}</th>
            <th>${uiLabelMap.isVariant}</th>
            <th>${uiLabelMap.isVirtual}</th>
            <th>${uiLabelMap.price}</th>
            <th>${uiLabelMap.productPricePurposeId}</th>
            <th>${uiLabelMap.productFeatureTypeId}</th>
        </tr>
    </thead>

    <#if productList?has_content>
    <tbody>
        <#list productList[viewIndex * viewSize .. highIndex - 1] as result>
            <tr>
                <td>${result.get("productId")!""}</td>
                <td>${result.get("productName")!""}</td>
                <td>${result.get("productTypeId")!""}</td>
                <td>${result.get("primaryProductCategoryId")!""}</td>
                <td>${result.get("isVirtual")!""}</td>
                <td>${result.get("isVariant")!""}</td>
                <td>${result.get("price")!""}</td>
                <td>${result.get("productPricePurposeId")!""}</td>
                <td>${result.get("productFeatureTypeId")!""}</td>
            </tr>
        </#list>
    </tbody>
    <#else>
    <tbody>
        <tr><td colspan="9">No products found.</td></tr>
    </tbody>
    </#if>
</table>
<div style="margin-top: 10px; text-align: center;">
    <!-- Previous Button -->
    <#if viewIndex?number gt 0>
        <a href="${request.getRequestURI()}?VIEW_INDEX=${viewIndex - 1}" style="padding: 5px 10px; border: 1px solid #ccc; margin-right: 5px; text-decoration: none;">
            &laquo; ${uiLabelMap.CommonPrevious}
        </a>
    </#if>

    <#assign numPages = (listSize + viewSize - 1) / viewSize?number/>
    <#list 0 .. numPages - 1 as pageIndex>
        <a href="${request.getRequestURI()}?VIEW_INDEX=${pageIndex}" style="padding: 5px 10px; border: 1px solid #ccc; margin-right: 5px; text-decoration: none;
           <#if pageIndex == viewIndex>font-weight: bold;</#if>">
            ${pageIndex + 1}
        </a>
    </#list>

    <#if highIndex < listSize>
        <a href="${request.getRequestURI()}?VIEW_INDEX=${viewIndex + 1}" style="padding: 5px 10px; border: 1px solid #ccc; margin-left: 5px; text-decoration: none;">
            ${uiLabelMap.CommonNext} &raquo;
        </a>
    </#if>
</div>

