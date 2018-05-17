<h2>
  All contracts
</h2>

<div id="ContactsAllContainer" style="width: 100%;"></div>
<script type="text/javascript">

    $(document).ready(function () {
        $('#ContactsAllContainer').jtable({
            title: 'Table of systems',
            actions: {
                listAction: 'api/contract/list/all',
                createAction: 'api/contract/add',
                updateAction: 'api/contract/update'
            },
            fields: {
                id: {
                    key: true,
                    create: false,
                    edit: false
                },
                systemId: {
                    title: 'System id',
                    width: '10%',
                    options: 'api/system/options'
                },
                request: {
                    title: 'Request number',
                    width: '10%'
                },
                orderNumber: {
                    title: 'Order number',
                    width: '10%'
                },
                fromDate: {
                    title: 'Date from',
                    width: '10%',
                    type: 'date',
                    displayFormat: 'dd-mm-yy'
                },
                toDate: {
                    title: 'Date to',
                    width: '10%',
                    type: 'date',
                    displayFormat: 'dd-mm-yy'
                },
                amount: {
                    title: 'Amount',
                    width: '10%'
                },
                amountType: {
                    title: 'Amount type',
                    width: '10%',
                    options: 'api/options/amountType'
                },
                amountPeriod: {
                    title: 'Amount period',
                    width: '10%',
                    options: 'api/options/amountPeriod'
                },
                authorizationPercent: {
                    title: 'Auth percent',
                    width: '10%'
                },
                active: {
                    title: 'Active',
                    width: '10%',
                    edit: false,
                    type: 'checkbox',
                    values: { 'false': 'Disabled', 'true': 'Active' }
                },
            }
        });
        $('#ContactsAllContainer').jtable('load');

    });

</script>