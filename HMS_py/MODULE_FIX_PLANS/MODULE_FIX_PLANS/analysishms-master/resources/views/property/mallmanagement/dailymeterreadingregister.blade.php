@extends('property.layouts.main')
@section('main-container')

<style>
    .dmr .table th {
        background-color: #5c2d91;
        color: #fff;
        vertical-align: middle;
        text-align: center;
    }

    .dmr .table td {
        vertical-align: middle;
    }
</style>

<div class="content-body">
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body dmr">

                        <form method="GET" action="{{ route('dailymeterreadingregister') }}">
                            <div class="row g-2 mb-3 align-items-end">
                                <div class="col-auto">
                                    <label for="from_date" class="form-label mb-1">From Date</label>
                                    <input type="date" class="form-control form-control-sm" name="from_date"
                                        id="from_date" value="{{ $fromDate }}">
                                </div>
                                <div class="col-auto">
                                    <button type="submit" class="btn btn-success btn-sm">
                                        Refresh <i class="fa-solid fa-arrows-rotate"></i>
                                    </button>
                                </div>
                            </div>
                        </form>

                        <button type="button" id="printBtn" class="btn btn-primary mb-3">
                            <i class="fas fa-print"></i> Print Report
                        </button>

                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover" id="dmrTable">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Floor</th>
                                        <th>Shop No</th>
                                        <th>Meter No</th>
                                        <th>Previous</th>
                                        <th>Current</th>
                                        <th>Photo</th>
                                        <th>MF</th>
                                        <th>Consumption</th>
                                        <th>Reading By</th>
                                        <th>Time</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse($rows as $i => $row)
                                        <tr>
                                            <td class="text-center">{{ $i + 1 }}</td>
                                            <td>{{ $row->Floor ?? '—' }}</td>
                                            <td>{{ $row->ShopNo ?? '—' }}</td>
                                            <td>{{ $row->MeterNo ?? '—' }}</td>
                                            <td class="text-end">{{ $row->Previous }}</td>
                                            <td class="text-end">{{ $row->Current }}</td>
                                            <td class="text-center">
                                                @if($row->Photo && file_exists(public_path('storage/' . $row->Photo)))
                                                    <img src="{{ asset('storage/' . $row->Photo) }}" height="30" alt="Photo">
                                                @else
                                                    —
                                                @endif
                                            </td>
                                            <td class="text-center">{{ $row->MF }}</td>
                                            <td class="text-end fw-semibold">{{ $row->Consumption }}</td>
                                            <td>{{ $row->ReadingBy ?? '—' }}</td>
                                            <td>
                                                @if($row->Time)
                                                    {{ \Carbon\Carbon::parse($row->Time)->format('d/m/Y h:i A') }}
                                                @else
                                                    —
                                                @endif
                                            </td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="11" class="text-center text-muted py-4">
                                                @if($fromDate)
                                                    No meter readings found from {{ $fromDate }}.
                                                @else
                                                    No meter readings found. Please select a From Date.
                                                @endif
                                            </td>
                                        </tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        function fromDateValue() {
            return $('#from_date').val() || '';
        }

        $('#printBtn').on('click', function () {
            var url = '{{ route("printdailymeterreadingregister") }}'
                    + '?from_date=' + encodeURIComponent(fromDateValue());
            window.open(url, '_blank');
        });
    });
</script>

@endsection