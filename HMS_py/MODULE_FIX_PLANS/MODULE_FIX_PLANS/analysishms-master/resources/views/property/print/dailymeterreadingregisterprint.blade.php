@include('property.print._header', [
    'company' => $company,
    'title'   => 'Daily Meter Reading Register',
] + ($fromDate ? ['fromDate' => $fromDate, 'toDate' => $fromDate] : []))

<style>
    body { font-size: 9px; margin: 10px; }
    table { width: 100%; border-collapse: collapse; margin-top: 10px; }
    th, td { border: 1px solid #000; padding: 3px 4px; }
    th { background-color: #5c2d91; color: #fff; text-align: center; font-size: 8px; }
    td { font-size: 8px; vertical-align: middle; }
    .text-right { text-align: right; }
    .text-center { text-align: center; }
    .type-info { text-align: center; font-size: 10px; margin-bottom: 8px; }
</style>

<p class="type-info">
    @if($fromDate)
        From Date: {{ \Carbon\Carbon::parse($fromDate)->format('d/m/Y') }}
    @else
        From Date: All
    @endif
</p>

<table>
    <thead>
        <tr>
            <th style="width:3%;">#</th>
            <th style="width:13%; text-align:left;">Floor</th>
            <th style="width:13%; text-align:left;">Shop No</th>
            <th style="width:12%; text-align:left;">Meter No</th>
            <th style="width:9%;">Previous</th>
            <th style="width:9%;">Current</th>
            <th style="width:12%;">Photo</th>
            <th style="width:6%;">MF</th>
            <th style="width:9%;">Consumption</th>
            <th style="width:12%; text-align:left;">Reading By</th>
            <th style="width:14%;">Time</th>
        </tr>
    </thead>
    <tbody>
        @forelse($rows as $i => $row)
            <tr>
                <td class="text-center">{{ $i + 1 }}</td>
                <td>{{ $row->Floor ?? '—' }}</td>
                <td>{{ $row->ShopNo ?? '—' }}</td>
                <td>{{ $row->MeterNo ?? '—' }}</td>
                <td class="text-right">{{ $row->Previous }}</td>
                <td class="text-right">{{ $row->Current }}</td>
                <td class="text-center">
                    @if($row->Photo && file_exists(public_path('storage/' . $row->Photo)))
                        <img src="{{ public_path('storage/' . $row->Photo) }}" style="max-height:28px; max-width:56px;">
                    @else
                        —
                    @endif
                </td>
                <td class="text-center">{{ $row->MF }}</td>
                <td class="text-right">{{ $row->Consumption }}</td>
                <td>{{ $row->ReadingBy ?? '—' }}</td>
                <td class="text-center">
                    @if($row->Time)
                        {{ \Carbon\Carbon::parse($row->Time)->format('d/m/Y h:i A') }}
                    @else
                        —
                    @endif
                </td>
            </tr>
        @empty
            <tr>
                <td colspan="11" class="text-center" style="padding:12px;">
                    No meter readings found.
                </td>
            </tr>
        @endforelse
    </tbody>
</table>

</body>
</html>