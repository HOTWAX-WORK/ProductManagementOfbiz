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
</style>

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
        <#list productList as result>
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
