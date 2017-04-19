<div class="table-responsive">
    <table class="table table-condensed">
        <thead>
        <tr>
            <th></th>
            <th>Hash</th>
            <th>Name</th>
            <th>Category</th>
            <th class="urls-column">URLs</th>
        </tr>
        </thead>

        <tbody>
        {foreach $torrents as $torrent}
            <tr>
                <td>{if $torrent['verified']}<span class="fa fa-fw fa-star"></span>{/if}</td>
                <td>{$torrent['torrent_info_hash']}</td>
                <td>
                    <a href="/torrent/{$torrent['torrent_info_hash']}" target="_blank">{$torrent['torrent_name']}</a>
                </td>
                <td>{pxgamer\KatRevive\Meta\Categories::byId($torrent['category_id'])}</td>
                <td class="downloads">
                    <a href="{pxgamer\KatRevive\Meta\Torrents::magnet($torrent['torrent_info_hash'], $torrent['torrent_name'])}"
                       target="_blank" title="Download magnet">
                        <span class="fa fa-fw fa-magnet fa-rotate-180 text-danger"></span>
                    </a>
                    <a href="https://torrage.info/torrent.php?h={$torrent['torrent_info_hash']}" target="_blank"
                       title="Download .torrent from Torrage">
                        <span class="fa fa-fw fa-download text-success"></span>
                    </a>
                    <a href="https://itorrents.org/torrent/{$torrent['torrent_info_hash']}.torrent" target="_blank"
                       title="Download .torrent from iTorrents">
                        <span class="fa fa-fw fa-download text-warning"></span>
                    </a>
                </td>
            </tr>
        {/foreach}
        </tbody>
    </table>
</div>