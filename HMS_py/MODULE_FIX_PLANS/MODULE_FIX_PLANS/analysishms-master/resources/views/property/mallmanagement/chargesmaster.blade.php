@extends('property.layouts.main')
@section('main-container')
    @include('cdns.datatable')
    <div class="content-body">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title font-weight-bold mb-3">Charge Master</h4>
                            <form class="form" name="chargesmasterform" id="chargesmasterform" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-md-4">
                                        <label class="col-form-label" for="chargename">Charge Name <span class="text-danger">*</span></label>
                                        <input type="text" name="chargename" id="chargename" class="form-control" required
                                            maxlength="30" placeholder="e.g. Base Rent"
                                            oninput="this.value = this.value.toUpperCase()">
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="shortcode">Short Code <span class="text-danger">*</span> <small class="text-muted">(3-5 characters, space allowed)</small></label>
                                        <input type="text" name="shortcode" id="shortcode" class="form-control" required
                                            maxlength="5" minlength="3" placeholder="e.g. RENT / ELE T"
                                            oninput="this.value = this.value.replace(/[^a-zA-Z ]/g,'').toUpperCase()"
                                            style="letter-spacing:3px; font-weight:bold;">
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="saccode">SAC Code</label>
                                        <input type="text" name="saccode" id="saccode" class="form-control"
                                            maxlength="8" placeholder="e.g. 997151"
                                            oninput="this.value = this.value.toUpperCase()">
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="chargecategory">Charge Category</label>
                                        <select name="chargecategory" id="chargecategory" class="form-control">
                                            <option value="">Select</option>
                                            <option value="CHARGE">Charge</option>
                                            <option value="CATEGORY">Category</option>
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="calculationbasis">Calculation Basis</label>
                                        <select id="calculationbasis" name="calculationbasis" class="form-control">
                                            <option value="">Select</option>
                                            <option value="FIXED">Fixed</option>
                                            <option value="AREA">Per Unit Area</option>
                                            <option value="CALCULATED">Calculated</option>
                                            <option value="PERCENTAGE">Percentage</option>
                                            <option value="FLAT">Flat</option>
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="unit">Unit</label>
                                        <select id="unit" name="unit" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($unitdata as $ud)
                                                <option value="{{ $ud->name }}">{{ $ud->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="taxstru">Tax Structure</label>
                                        <select id="taxstru" name="taxstru" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($taxstrudata as $ts)
                                                <option value="{{ $ts->str_code }}">{{ $ts->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="billingfrequency">Billing Frequency</label>
                                        <select id="billingfrequency" name="billingfrequency" class="form-control">
                                            <option value="MONTHLY">Monthly</option>
                                            <option value="QUARTERLY">Quarterly</option>
                                            <option value="HALF-YEARLY">Half Yearly</option>
                                            <option value="YEARLY">Yearly</option>
                                            <option value="ONCE">Once</option>
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="accountcode">Account Name</label>
                                        <select name="accountcode" id="accountcode" class="form-control">
                                            <option value="">Select</option>
                                            @foreach ($subgroupdata as $sg)
                                                <option value="{{ $sg->sub_code }}">{{ $sg->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="escalationyn">Escalation Applicable</label>
                                        <select id="escalationyn" name="escalationyn" class="form-control">
                                            <option value="1">Yes</option>
                                            <option value="0">No</option>
                                        </select>
                                    </div>

                                    <div class="col-md-4">
                                        <label class="col-form-label" for="activeyn">Active Status</label>
                                        <select id="activeyn" name="activeyn" class="form-control">
                                            <option value="1">Active</option>
                                            <option value="0">Inactive</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="mt-4">
                                    <button id="submitBtn" type="submit" class="btn btn-primary">
                                        Submit <i class="fa-solid fa-file-export"></i>
                                    </button>
                                </div>
                            </form>
                        </div>

                        <div class="card-body">
                            <div style="display: flex; gap: 10px; margin-bottom: 15px;">
                                <button id="printBtn" class="btn btn-primary">
                                    <i class="fas fa-print"></i> Print Report
                                </button>
                                <button id="exportExcelBtn" class="btn btn-success">
                                    <i class="fas fa-file-excel"></i> Export to Excel
                                </button>
                            </div>
                            <div class="table-responsive">
                                <table id="chargesmasterTable" class="table table-hover table-striped">
                                    <thead class="bg-secondary">
                                        <tr>
                                            <th>Sno.</th>
                                            <th>Charge Name</th>
                                            <th>Short Code</th>
                                            <th>SAC Code</th>
                                            <th>Category</th>
                                            <th>Calculation Basis</th>
                                            <th>Unit</th>
                                            <th>Tax %</th>
                                            <th>Escalation</th>
                                            <th>Frequency</th>
                                            <th>Account Name</th>
                                            <th>Active</th>
                                            <th>Action</th>
                                            <th class="none">sn_hidden</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php $sn1 = 1; @endphp
                                        @foreach ($data as $row)
                                            <tr>
                                                <td>{{ $sn1 }}</td>
                                                <td>{{ $row->chargename }}</td>
                                                <td>
                                                    <span class="badge badge-dark" style="font-size:13px; letter-spacing:2px;">
                                                        {{ $row->shortcode ?? '-' }}
                                                    </span>
                                                </td>
                                                <td>{{ $row->saccode ?? '-' }}</td>
                                                <td>{{ $row->chargecategory }}</td>
                                                <td>{{ $row->calculationbasis }}</td>
                                                <td>{{ $row->unit }}</td>
                                                <td>{{ $row->taxstruname ?? $row->taxstru }}</td>
                                                <td>{{ $row->escalationyn == 1 ? 'Yes' : 'No' }}</td>
                                                <td>{{ $row->billingfrequency }}</td>
                                                <td>{{ $row->accountname ?? $row->accountcode }}</td>
                                                <td>{{ $row->activeyn == 1 ? 'Active' : 'Inactive' }}</td>
                                                <td class="ins">
                                                    <button type="button" class="btn btn-success editBtn btn-sm" data-sn="{{ $row->sn }}" data-chargecode="{{ $row->chargecode }}" data-shortcode="{{ $row->shortcode }}" data-saccode="{{ $row->saccode }}" data-chargename="{{ $row->chargename }}" data-chargecategory="{{ $row->chargecategory }}" data-calculationbasis="{{ $row->calculationbasis }}" data-unit="{{ $row->unit }}" data-taxstru="{{ $row->taxstru }}" data-escalationyn="{{ $row->escalationyn }}" data-billingfrequency="{{ $row->billingfrequency }}" data-accountcode="{{ $row->accountcode }}" data-activeyn="{{ $row->activeyn }}">
                                                        <i class="fa-regular fa-pen-to-square"></i> Edit
                                                    </button>
                                                    <button type="button" class="btn btn-danger deleteBtn btn-sm" data-sn="{{ $row->sn }}" data-name="{{ $row->chargename }}">
                                                        <i class="fa-solid fa-trash"></i> Delete
                                                    </button>
                                                </td>
                                                <td class="none">{{ $row->sn }}</td>
                                            </tr>
                                            @php $sn1++; @endphp
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Edit Modal --}}
    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateModalLabel">Edit Charge Master</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form class="form" method="POST" name="chargesmasterupdateform" id="chargesmasterupdateform">
                        @csrf
                        <input type="hidden" id="updatesn" name="sn">

                        <div class="row">
                            <div class="col-md-4">
                                <label for="updatechargecode">Charge Code <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="updatechargecode" name="chargecode" required
                                    maxlength="30" oninput="this.value = this.value.toUpperCase()">
                            </div>
                            <div class="col-md-4">
                                <label for="updatechargename">Charge Name <span class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="updatechargename" name="chargename" required
                                    maxlength="30" oninput="this.value = this.value.toUpperCase()">
                            </div>
                            <div class="col-md-4">
                                <label for="updateshortcode">Short Code <span class="text-danger">*</span> <small class="text-muted">(3-5 characters, space allowed)</small></label>
                                <input type="text" class="form-control" id="updateshortcode" name="shortcode" required
                                    maxlength="5" minlength="3"
                                    oninput="this.value = this.value.replace(/[^a-zA-Z ]/g,'').toUpperCase()"
                                    style="letter-spacing:3px; font-weight:bold;">
                            </div>
                            <div class="col-md-4">
                                <label for="updatesaccode">SAC Code</label>
                                <input type="text" class="form-control" id="updatesaccode" name="saccode"
                                     maxlength="8" oninput="this.value = this.value.toUpperCase()">
                            </div>
                            <div class="col-md-4">
                                <label for="updatechargecategory">Charge Category</label>
                                <select class="form-control" id="updatechargecategory" name="chargecategory">
                                    <option value="">Select</option>
                                    <option value="CHARGE">Charge</option>
                                    <option value="CATEGORY">Category</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="updatecalculationbasis">Calculation Basis</label>
                                <select id="updatecalculationbasis" name="calculationbasis" class="form-control">
                                    <option value="">Select</option>
                                    <option value="FIXED">Fixed</option>
                                    <option value="AREA">Per Unit Area</option>
                                    <option value="CALCULATED">Calculated</option>
                                    <option value="PERCENTAGE">Percentage</option>
                                    <option value="FLAT">Flat</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="updateunit">Unit</label>
                                <select class="form-control" id="updateunit" name="unit">
                                    <option value="">Select</option>
                                    @foreach ($unitdata as $ud)
                                        <option value="{{ $ud->name }}">{{ $ud->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="updatetaxstru">Tax Structure</label>
                                <select class="form-control" id="updatetaxstru" name="taxstru">
                                    <option value="">Select</option>
                                    @foreach ($taxstrudata as $ts)
                                        <option value="{{ $ts->str_code }}">{{ $ts->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="updatebillingfrequency">Billing Frequency</label>
                                <select id="updatebillingfrequency" name="billingfrequency" class="form-control">
                                    <option value="MONTHLY">Monthly</option>
                                    <option value="QUARTERLY">Quarterly</option>
                                    <option value="HALF-YEARLY">Half Yearly</option>
                                    <option value="YEARLY">Yearly</option>
                                    <option value="ONCE">Once</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="updateaccountcode">Account Name</label>
                                <select class="form-control" id="updateaccountcode" name="accountcode">
                                    <option value="">Select</option>
                                    @foreach ($subgroupdata as $sg)
                                        <option value="{{ $sg->sub_code }}">{{ $sg->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="updateescalationyn">Escalation Applicable</label>
                                <select id="updateescalationyn" name="escalationyn" class="form-control">
                                    <option value="1">Yes</option>
                                    <option value="0">No</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label for="updateactiveyn">Active Status</label>
                                <select id="updateactiveyn" name="activeyn" class="form-control">
                                    <option value="1">Active</option>
                                    <option value="0">Inactive</option>
                                </select>
                            </div>
                        </div>

                        <div class="text-center mt-3">
                            <button id="updateBtn" type="submit" class="btn btn-primary">
                                Update <i class="fa-solid fa-file-export"></i>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $('#myloader').removeClass('none');
            setTimeout(() => {
                $('#myloader').addClass('none');
            }, 500);

            if (!$.fn.DataTable.isDataTable('#chargesmasterTable')) {
                new DataTable('#chargesmasterTable', {
                    ordering: true,
                    order: [],
                    pageLength: 25,
                    columnDefs: [{ targets: [12], visible: false }]
                });
            }

            $('#chargesmasterform').submit(function (e) {
                e.preventDefault();
                var btn = $('#submitBtn');
                btn.prop('disabled', true).html('<i class="fa-solid fa-spinner fa-spin"></i> Saving...');

                $.ajax({
                    url: '{{ url("submitchargesmaster") }}',
                    method: 'POST',
                    data: $(this).serialize(),
                    success: function (response) {
                        if (response.success) {
                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: response.message,
                                timer: 2000,
                                showConfirmButton: false
                            }).then(() => {
                                window.location.reload();
                            });
                        } else {
                            Swal.fire({ icon: 'error', title: 'Error', text: response.message });
                            btn.prop('disabled', false).html('Submit <i class="fa-solid fa-file-export"></i>');
                        }
                    },
                    error: function (xhr) {
                        let msg = 'Something went wrong.';
                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            msg = xhr.responseJSON.message;
                        } else if (xhr.responseJSON && xhr.responseJSON.errors) {
                            msg = Object.values(xhr.responseJSON.errors).flat().join(', ');
                        }
                        Swal.fire({ icon: 'error', title: 'Error', text: msg });
                        btn.prop('disabled', false).html('Submit <i class="fa-solid fa-file-export"></i>');
                    }
                });
            });

            $('.editBtn').click(function () {
                $('#updatesn').val($(this).data('sn'));
                $('#updatechargecode').val($(this).data('chargecode'));
                $('#updatechargename').val($(this).data('chargename'));
                $('#updateshortcode').val($(this).data('shortcode'));
                $('#updatesaccode').val($(this).data('saccode'));
                $('#updatechargecategory').val($(this).data('chargecategory'));
                $('#updatecalculationbasis').val($(this).data('calculationbasis'));
                $('#updateunit').val($(this).data('unit'));
                $('#updatetaxstru').val($(this).data('taxstru'));
                $('#updateescalationyn').val($(this).data('escalationyn') == 1 ? '1' : '0');
                $('#updatebillingfrequency').val($(this).data('billingfrequency'));
                $('#updateaccountcode').val($(this).data('accountcode'));
                $('#updateactiveyn').val($(this).data('activeyn') == 1 ? '1' : '0');
                $('#updateModal').modal('show');
            });

            $('#chargesmasterupdateform').submit(function (e) {
                e.preventDefault();
                var btn = $('#updateBtn');
                btn.prop('disabled', true).html('<i class="fa-solid fa-spinner fa-spin"></i> Updating...');

                $.ajax({
                    url: '{{ url("updatechargesmaster") }}',
                    method: 'POST',
                    data: $(this).serialize(),
                    success: function (response) {
                        if (response.success) {
                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: response.message,
                                timer: 2000,
                                showConfirmButton: false
                            }).then(() => {
                                window.location.reload();
                            });
                        } else {
                            Swal.fire({ icon: 'error', title: 'Error', text: response.message });
                            btn.prop('disabled', false).html('Update <i class="fa-solid fa-file-export"></i>');
                        }
                    },
                    error: function (xhr) {
                        let msg = 'Something went wrong.';
                        if (xhr.responseJSON && xhr.responseJSON.errors) {
                            msg = Object.values(xhr.responseJSON.errors).flat().join(', ');
                        }
                        Swal.fire({ icon: 'error', title: 'Error', text: msg });
                        btn.prop('disabled', false).html('Update <i class="fa-solid fa-file-export"></i>');
                    }
                });
            });

            $('.deleteBtn').click(function () {
                var sn = $(this).data('sn');
                var name = $(this).data('name');

                Swal.fire({
                    title: 'Delete Charge?',
                    text: 'Are you sure you want to delete "' + name + '"?',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#3085d6',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                            url: '{{ url("deletechargesmaster") }}/' + sn,
                            method: 'GET',
                            success: function (response) {
                                if (response.success) {
                                    Swal.fire({
                                        icon: 'success',
                                        title: 'Deleted',
                                        text: response.message,
                                        timer: 2000,
                                        showConfirmButton: false
                                    }).then(() => {
                                        window.location.reload();
                                    });
                                } else {
                                    Swal.fire({ icon: 'error', title: 'Error', text: response.message });
                                }
                            },
                            error: function () {
                                Swal.fire({ icon: 'error', title: 'Error', text: 'Delete failed.' });
                            }
                        });
                    }
                });
            });
        });

        document.getElementById('exportExcelBtn').addEventListener('click', function() {
            window.location.href = '{{ route("exportchargesmaster") }}';
        });

        document.getElementById('printBtn').addEventListener('click', function() {
            window.open('{{ route("printchargesmaster") }}', '_blank');
        });
    </script>
@endsection
