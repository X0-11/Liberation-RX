params [ "_limit", [ "_postosearch", getPosATL player ], [ "_sector_list", sectors_allSectors ] ];
private [ "_sector_to_return", "_close_sectors", "_close_sectors_sorted" ];

_sector_to_return = "";
_close_sectors = [ _sector_list , { (markerPos _x) distance _postosearch < _limit } ] call BIS_fnc_conditionalSelect;
_close_sectors_sorted = [ _close_sectors , [_postosearch, _limit] , { (markerPos _x) distance _input0 } , 'ASCEND' ] call BIS_fnc_sortBy;
if ( count _close_sectors_sorted > 0 ) then { _sector_to_return = _close_sectors_sorted select 0; };

_sector_to_return;
