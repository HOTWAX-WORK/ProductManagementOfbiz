<style>
    .styled-form {
        max-width: 600px;
        margin: 20px auto;
        padding: 15px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        background-color: #ffffff;
    }

    .styled-form table {
        width: 100%;
        border-collapse: collapse;
    }

    .styled-form .label {
        font-weight: bold;
        padding: 8px;
        text-align: right;
    }

    .styled-form input[type='text'] {
        width: calc(100% - 16px);
        padding: 8px;
        margin: 4px 0;
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    .styled-form input[type='submit'] {
        background-color: #007bff; /* Bootstrap Primary Color */
        color: white;
        padding: 8px 12px;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }

    .styled-form input[type='submit']:hover {
        background-color: #0056b3; /* Darker shade for hover */
    }
</style>

<form name='findProduct' method="post" action="<@ofbizUrl>findProduct</@ofbizUrl>">
    <div id="findProduct" class="screenlet styled-form">
        <div class="screenlet-body">
            <table class="basic-table" cellspacing='0'>
                <tr>
                    <td class='label'>${uiLabelMap.productId}</td>
                    <td><input type='text' name='productId'/></td>
                </tr>
                <tr>
                    <td class='label'>${uiLabelMap.productName}</td>
                    <td><input type='text' name='productName'/></td>
                </tr>
                <tr>
                    <td class='label'>${uiLabelMap.featureType}</td>
                    <td><input type='text' name='featureType'/></td>
                </tr>
                <tr>
                    <td class='label'>${uiLabelMap.priceFrom}</td>
                    <td><input type='text' name='priceFrom'/></td>
                </tr>
                <tr>
                    <td class='label'>${uiLabelMap.priceTo}</td>
                    <td><input type='text' name='priceTo'/></td>
                </tr>
                <tr>
                    <td class="label"></td>
                    <td>
                        <input type="hidden" name="showAll" value="Y"/>
                        <input type='submit' value='${uiLabelMap.CommonFind}'/>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</form>
