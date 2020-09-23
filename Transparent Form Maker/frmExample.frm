VERSION 5.00
Begin VB.Form frmExample 
   BorderStyle     =   0  'None
   ClientHeight    =   5220
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9105
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmExample.frx":0000
   ScaleHeight     =   5220
   ScaleWidth      =   9105
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      BackColor       =   &H000000FF&
      Caption         =   "OK"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   7200
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   4320
      Width           =   1215
   End
End
Attribute VB_Name = "frmExample"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'API Delcares
Private Declare Function ExtCreateRegion Lib "gdi32" (lpXform As Any, ByVal nCount As Long, lpRgnData As Any) As Long
Private Declare Function SetWindowRgn Lib "user32" (ByVal hWnd As Long, ByVal hRgn As Long, ByVal bRedraw As Boolean) As Long

Dim bytRegion(3247) As Byte
Dim nBytes As Long

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_Load()
Dim rgnMain As Long

nBytes = 3248

LoadBytes

rgnMain = ExtCreateRegion(ByVal 0&, nBytes, bytRegion(0))
SetWindowRgn Me.hWnd, rgnMain, True

End Sub
Private Sub LoadBytes()
bytRegion(0) = 32
bytRegion(4) = 1
bytRegion(8) = 201
bytRegion(12) = 144
bytRegion(13) = 12
bytRegion(24) = 95
bytRegion(25) = 2
bytRegion(28) = 92
bytRegion(29) = 1
bytRegion(32) = 119
bytRegion(40) = 63
bytRegion(41) = 2
bytRegion(44) = 1
bytRegion(48) = 115
bytRegion(52) = 1
bytRegion(56) = 67
bytRegion(57) = 2
bytRegion(60) = 2
bytRegion(64) = 112
bytRegion(68) = 2
bytRegion(72) = 70
bytRegion(73) = 2
bytRegion(76) = 3
bytRegion(80) = 109
bytRegion(84) = 3
bytRegion(88) = 73
bytRegion(89) = 2
bytRegion(92) = 4
bytRegion(96) = 107
bytRegion(100) = 4
bytRegion(104) = 75
bytRegion(105) = 2
bytRegion(108) = 5
bytRegion(112) = 105
bytRegion(116) = 5
bytRegion(120) = 77
bytRegion(121) = 2
bytRegion(124) = 6
bytRegion(128) = 103
bytRegion(132) = 6
bytRegion(136) = 79
bytRegion(137) = 2
bytRegion(140) = 7
bytRegion(144) = 101
bytRegion(148) = 7
bytRegion(152) = 81
bytRegion(153) = 2
bytRegion(156) = 8
bytRegion(160) = 100
bytRegion(164) = 8
bytRegion(168) = 82
bytRegion(169) = 2
bytRegion(172) = 9
bytRegion(176) = 98
bytRegion(180) = 9
bytRegion(184) = 84
bytRegion(185) = 2
bytRegion(188) = 10
bytRegion(192) = 97
bytRegion(196) = 10
bytRegion(200) = 85
bytRegion(201) = 2
bytRegion(204) = 11
bytRegion(208) = 96
bytRegion(212) = 11
bytRegion(216) = 86
bytRegion(217) = 2
bytRegion(220) = 12
bytRegion(224) = 94
bytRegion(228) = 12
bytRegion(232) = 87
bytRegion(233) = 2
bytRegion(236) = 13
bytRegion(240) = 93
bytRegion(244) = 13
bytRegion(248) = 88
bytRegion(249) = 2
bytRegion(252) = 14
bytRegion(256) = 92
bytRegion(260) = 14
bytRegion(264) = 89
bytRegion(265) = 2
bytRegion(268) = 15
bytRegion(272) = 2
bytRegion(276) = 15
bytRegion(280) = 33
bytRegion(284) = 16
bytRegion(288) = 92
bytRegion(292) = 15
bytRegion(296) = 90
bytRegion(297) = 2
bytRegion(300) = 16
bytRegion(304) = 2
bytRegion(308) = 16
bytRegion(312) = 11
bytRegion(316) = 17
bytRegion(320) = 12
bytRegion(324) = 16
bytRegion(328) = 22
bytRegion(332) = 17
bytRegion(336) = 23
bytRegion(340) = 16
bytRegion(344) = 33
bytRegion(348) = 17
bytRegion(352) = 91
bytRegion(356) = 16
bytRegion(360) = 91
bytRegion(361) = 2
bytRegion(364) = 17
bytRegion(368) = 2
bytRegion(372) = 17
bytRegion(376) = 11
bytRegion(380) = 18
bytRegion(384) = 12
bytRegion(388) = 17
bytRegion(392) = 22
bytRegion(396) = 18
bytRegion(400) = 24
bytRegion(404) = 17
bytRegion(408) = 32
bytRegion(412) = 18
bytRegion(416) = 90
bytRegion(420) = 17
bytRegion(424) = 92
bytRegion(425) = 2
bytRegion(428) = 18
bytRegion(432) = 2
bytRegion(436) = 18
bytRegion(440) = 11
bytRegion(444) = 19
bytRegion(448) = 12
bytRegion(452) = 18
bytRegion(456) = 22
bytRegion(460) = 19
bytRegion(464) = 24
bytRegion(468) = 18
bytRegion(472) = 32
bytRegion(476) = 19
bytRegion(480) = 89
bytRegion(484) = 18
bytRegion(488) = 92
bytRegion(489) = 2
bytRegion(492) = 19
bytRegion(496) = 2
bytRegion(500) = 19
bytRegion(504) = 10
bytRegion(508) = 20
bytRegion(512) = 12
bytRegion(516) = 19
bytRegion(520) = 22
bytRegion(524) = 20
bytRegion(528) = 24
bytRegion(532) = 19
bytRegion(536) = 33
bytRegion(540) = 20
bytRegion(544) = 89
bytRegion(548) = 19
bytRegion(552) = 93
bytRegion(553) = 2
bytRegion(556) = 20
bytRegion(560) = 2
bytRegion(564) = 20
bytRegion(568) = 10
bytRegion(572) = 21
bytRegion(576) = 12
bytRegion(580) = 20
bytRegion(584) = 22
bytRegion(588) = 21
bytRegion(592) = 25
bytRegion(596) = 20
bytRegion(600) = 33
bytRegion(604) = 21
bytRegion(608) = 88
bytRegion(612) = 20
bytRegion(616) = 93
bytRegion(617) = 2
bytRegion(620) = 21
bytRegion(624) = 1
bytRegion(628) = 21
bytRegion(632) = 9
bytRegion(636) = 22
bytRegion(640) = 12
bytRegion(644) = 21
bytRegion(648) = 22
bytRegion(652) = 22
bytRegion(656) = 25
bytRegion(660) = 21
bytRegion(664) = 33
bytRegion(668) = 22
bytRegion(672) = 88
bytRegion(676) = 21
bytRegion(680) = 94
bytRegion(681) = 2
bytRegion(684) = 22
bytRegion(688) = 1
bytRegion(692) = 22
bytRegion(696) = 8
bytRegion(700) = 23
bytRegion(704) = 12
bytRegion(708) = 22
bytRegion(712) = 22
bytRegion(716) = 23
bytRegion(720) = 26
bytRegion(724) = 22
bytRegion(728) = 34
bytRegion(732) = 23
bytRegion(736) = 87
bytRegion(740) = 22
bytRegion(744) = 94
bytRegion(745) = 2
bytRegion(748) = 23
bytRegion(756) = 23
bytRegion(760) = 7
bytRegion(764) = 24
bytRegion(768) = 12
bytRegion(772) = 23
bytRegion(776) = 22
bytRegion(780) = 24
bytRegion(784) = 28
bytRegion(788) = 23
bytRegion(792) = 34
bytRegion(796) = 24
bytRegion(800) = 87
bytRegion(804) = 23
bytRegion(808) = 95
bytRegion(809) = 2
bytRegion(812) = 24
bytRegion(816) = 12
bytRegion(820) = 24
bytRegion(824) = 22
bytRegion(828) = 25
bytRegion(832) = 40
bytRegion(836) = 24
bytRegion(840) = 42
bytRegion(844) = 25
bytRegion(848) = 63
bytRegion(852) = 24
bytRegion(856) = 66
bytRegion(860) = 25
bytRegion(864) = 73
bytRegion(868) = 24
bytRegion(872) = 76
bytRegion(876) = 25
bytRegion(880) = 87
bytRegion(884) = 24
bytRegion(888) = 95
bytRegion(889) = 2
bytRegion(892) = 25
bytRegion(896) = 12
bytRegion(900) = 25
bytRegion(904) = 22
bytRegion(908) = 26
bytRegion(912) = 39
bytRegion(916) = 25
bytRegion(920) = 43
bytRegion(924) = 26
bytRegion(928) = 50
bytRegion(932) = 25
bytRegion(936) = 53
bytRegion(940) = 26
bytRegion(944) = 62
bytRegion(948) = 25
bytRegion(952) = 67
bytRegion(956) = 26
bytRegion(960) = 72
bytRegion(964) = 25
bytRegion(968) = 80
bytRegion(972) = 26
bytRegion(976) = 87
bytRegion(980) = 25
bytRegion(984) = 95
bytRegion(985) = 2
bytRegion(988) = 26
bytRegion(992) = 12
bytRegion(996) = 26
bytRegion(1000) = 22
bytRegion(1004) = 27
bytRegion(1008) = 38
bytRegion(1012) = 26
bytRegion(1016) = 44
bytRegion(1020) = 27
bytRegion(1024) = 49
bytRegion(1028) = 26
bytRegion(1032) = 54
bytRegion(1036) = 27
bytRegion(1040) = 62
bytRegion(1044) = 26
bytRegion(1048) = 81
bytRegion(1052) = 27
bytRegion(1056) = 87
bytRegion(1060) = 26
bytRegion(1064) = 95
bytRegion(1065) = 2
bytRegion(1068) = 27
bytRegion(1072) = 12
bytRegion(1076) = 27
bytRegion(1080) = 22
bytRegion(1084) = 28
bytRegion(1088) = 36
bytRegion(1092) = 27
bytRegion(1096) = 44
bytRegion(1100) = 28
bytRegion(1104) = 48
bytRegion(1108) = 27
bytRegion(1112) = 55
bytRegion(1116) = 28
bytRegion(1120) = 62
bytRegion(1124) = 27
bytRegion(1128) = 82
bytRegion(1132) = 28
bytRegion(1136) = 86
bytRegion(1140) = 27
bytRegion(1144) = 95
bytRegion(1145) = 2
bytRegion(1148) = 28
bytRegion(1152) = 12
bytRegion(1156) = 28
bytRegion(1160) = 22
bytRegion(1164) = 29
bytRegion(1168) = 36
bytRegion(1172) = 28
bytRegion(1176) = 45
bytRegion(1180) = 29
bytRegion(1184) = 46
bytRegion(1188) = 28
bytRegion(1192) = 57
bytRegion(1196) = 29
bytRegion(1200) = 62
bytRegion(1204) = 28
bytRegion(1208) = 68
bytRegion(1212) = 29
bytRegion(1216) = 73
bytRegion(1220) = 28
bytRegion(1224) = 82
bytRegion(1228) = 29
bytRegion(1232) = 86
bytRegion(1236) = 28
bytRegion(1240) = 95
bytRegion(1241) = 2
bytRegion(1244) = 29
bytRegion(1248) = 12
bytRegion(1252) = 29
bytRegion(1256) = 22
bytRegion(1260) = 30
bytRegion(1264) = 37
bytRegion(1268) = 29
bytRegion(1272) = 56
bytRegion(1276) = 30
bytRegion(1280) = 63
bytRegion(1284) = 29
bytRegion(1288) = 66
bytRegion(1292) = 30
bytRegion(1296) = 74
bytRegion(1300) = 29
bytRegion(1304) = 82
bytRegion(1308) = 30
bytRegion(1312) = 87
bytRegion(1316) = 29
bytRegion(1320) = 95
bytRegion(1321) = 2
bytRegion(1324) = 30
bytRegion(1328) = 12
bytRegion(1332) = 30
bytRegion(1336) = 22
bytRegion(1340) = 31
bytRegion(1344) = 37
bytRegion(1348) = 30
bytRegion(1352) = 55
bytRegion(1356) = 31
bytRegion(1360) = 74
bytRegion(1364) = 30
bytRegion(1368) = 82
bytRegion(1372) = 31
bytRegion(1376) = 87
bytRegion(1380) = 30
bytRegion(1384) = 95
bytRegion(1385) = 2
bytRegion(1388) = 31
bytRegion(1392) = 12
bytRegion(1396) = 31
bytRegion(1400) = 22
bytRegion(1404) = 32
bytRegion(1408) = 37
bytRegion(1412) = 31
bytRegion(1416) = 46
bytRegion(1420) = 32
bytRegion(1424) = 49
bytRegion(1428) = 31
bytRegion(1432) = 55
bytRegion(1436) = 32
bytRegion(1440) = 73
bytRegion(1444) = 31
bytRegion(1448) = 82
bytRegion(1452) = 32
bytRegion(1456) = 87
bytRegion(1460) = 31
bytRegion(1464) = 95
bytRegion(1465) = 2
bytRegion(1468) = 32
bytRegion(1472) = 12
bytRegion(1476) = 32
bytRegion(1480) = 22
bytRegion(1484) = 33
bytRegion(1488) = 37
bytRegion(1492) = 32
bytRegion(1496) = 45
bytRegion(1500) = 33
bytRegion(1504) = 51
bytRegion(1508) = 32
bytRegion(1512) = 54
bytRegion(1516) = 33
bytRegion(1520) = 70
bytRegion(1524) = 32
bytRegion(1528) = 82
bytRegion(1532) = 33
bytRegion(1536) = 87
bytRegion(1540) = 32
bytRegion(1544) = 95
bytRegion(1545) = 2
bytRegion(1548) = 33
bytRegion(1552) = 12
bytRegion(1556) = 33
bytRegion(1560) = 22
bytRegion(1564) = 34
bytRegion(1568) = 37
bytRegion(1572) = 33
bytRegion(1576) = 45
bytRegion(1580) = 34
bytRegion(1584) = 51
bytRegion(1588) = 33
bytRegion(1592) = 53
bytRegion(1596) = 34
bytRegion(1600) = 64
bytRegion(1604) = 33
bytRegion(1608) = 82
bytRegion(1612) = 34
bytRegion(1616) = 87
bytRegion(1620) = 33
bytRegion(1624) = 95
bytRegion(1625) = 2
bytRegion(1628) = 34
bytRegion(1632) = 12
bytRegion(1636) = 34
bytRegion(1640) = 22
bytRegion(1644) = 35
bytRegion(1648) = 37
bytRegion(1652) = 34
bytRegion(1656) = 45
bytRegion(1660) = 35
bytRegion(1664) = 49
bytRegion(1668) = 34
bytRegion(1672) = 53
bytRegion(1676) = 35
bytRegion(1680) = 62
bytRegion(1684) = 34
bytRegion(1688) = 72
bytRegion(1692) = 35
bytRegion(1696) = 74
bytRegion(1700) = 34
bytRegion(1704) = 82
bytRegion(1708) = 35
bytRegion(1712) = 87
bytRegion(1716) = 34
bytRegion(1720) = 95
bytRegion(1721) = 2
bytRegion(1724) = 35
bytRegion(1728) = 12
bytRegion(1732) = 35
bytRegion(1736) = 22
bytRegion(1740) = 36
bytRegion(1744) = 37
bytRegion(1748) = 35
bytRegion(1752) = 45
bytRegion(1756) = 36
bytRegion(1760) = 48
bytRegion(1764) = 35
bytRegion(1768) = 52
bytRegion(1772) = 36
bytRegion(1776) = 62
bytRegion(1780) = 35
bytRegion(1784) = 70
bytRegion(1788) = 36
bytRegion(1792) = 74
bytRegion(1796) = 35
bytRegion(1800) = 82
bytRegion(1804) = 36
bytRegion(1808) = 87
bytRegion(1812) = 35
bytRegion(1816) = 95
bytRegion(1817) = 2
bytRegion(1820) = 36
bytRegion(1824) = 12
bytRegion(1828) = 36
bytRegion(1832) = 22
bytRegion(1836) = 37
bytRegion(1840) = 37
bytRegion(1844) = 36
bytRegion(1848) = 45
bytRegion(1852) = 37
bytRegion(1856) = 48
bytRegion(1860) = 36
bytRegion(1864) = 52
bytRegion(1868) = 37
bytRegion(1872) = 61
bytRegion(1876) = 36
bytRegion(1880) = 69
bytRegion(1884) = 37
bytRegion(1888) = 74
bytRegion(1892) = 36
bytRegion(1896) = 82
bytRegion(1900) = 37
bytRegion(1904) = 87
bytRegion(1908) = 36
bytRegion(1912) = 95
bytRegion(1913) = 2
bytRegion(1916) = 37
bytRegion(1920) = 12
bytRegion(1924) = 37
bytRegion(1928) = 22
bytRegion(1932) = 38
bytRegion(1936) = 37
bytRegion(1940) = 37
bytRegion(1944) = 45
bytRegion(1948) = 38
bytRegion(1952) = 47
bytRegion(1956) = 37
bytRegion(1960) = 52
bytRegion(1964) = 38
bytRegion(1968) = 60
bytRegion(1972) = 37
bytRegion(1976) = 69
bytRegion(1980) = 38
bytRegion(1984) = 74
bytRegion(1988) = 37
bytRegion(1992) = 82
bytRegion(1996) = 38
bytRegion(2000) = 87
bytRegion(2004) = 37
bytRegion(2008) = 95
bytRegion(2009) = 2
bytRegion(2012) = 38
bytRegion(2016) = 12
bytRegion(2020) = 38
bytRegion(2024) = 22
bytRegion(2028) = 39
bytRegion(2032) = 37
bytRegion(2036) = 38
bytRegion(2040) = 45
bytRegion(2044) = 39
bytRegion(2048) = 47
bytRegion(2052) = 38
bytRegion(2056) = 52
bytRegion(2060) = 39
bytRegion(2064) = 60
bytRegion(2068) = 38
bytRegion(2072) = 68
bytRegion(2076) = 39
bytRegion(2080) = 74
bytRegion(2084) = 38
bytRegion(2088) = 82
bytRegion(2092) = 39
bytRegion(2096) = 87
bytRegion(2100) = 38
bytRegion(2104) = 95
bytRegion(2105) = 2
bytRegion(2108) = 39
bytRegion(2112) = 12
bytRegion(2116) = 39
bytRegion(2120) = 22
bytRegion(2124) = 40
bytRegion(2128) = 37
bytRegion(2132) = 39
bytRegion(2136) = 45
bytRegion(2140) = 40
bytRegion(2144) = 47
bytRegion(2148) = 39
bytRegion(2152) = 53
bytRegion(2156) = 40
bytRegion(2160) = 60
bytRegion(2164) = 39
bytRegion(2168) = 68
bytRegion(2172) = 40
bytRegion(2176) = 74
bytRegion(2180) = 39
bytRegion(2184) = 82
bytRegion(2188) = 40
bytRegion(2192) = 87
bytRegion(2196) = 39
bytRegion(2200) = 95
bytRegion(2201) = 2
bytRegion(2204) = 40
bytRegion(2208) = 12
bytRegion(2212) = 40
bytRegion(2216) = 22
bytRegion(2220) = 41
bytRegion(2224) = 37
bytRegion(2228) = 40
bytRegion(2232) = 45
bytRegion(2236) = 41
bytRegion(2240) = 47
bytRegion(2244) = 40
bytRegion(2248) = 55
bytRegion(2252) = 41
bytRegion(2256) = 60
bytRegion(2260) = 40
bytRegion(2264) = 68
bytRegion(2268) = 41
bytRegion(2272) = 74
bytRegion(2276) = 40
bytRegion(2280) = 82
bytRegion(2284) = 41
bytRegion(2288) = 87
bytRegion(2292) = 40
bytRegion(2296) = 95
bytRegion(2297) = 2
bytRegion(2300) = 41
bytRegion(2304) = 12
bytRegion(2308) = 41
bytRegion(2312) = 22
bytRegion(2316) = 42
bytRegion(2320) = 37
bytRegion(2324) = 41
bytRegion(2328) = 45
bytRegion(2332) = 42
bytRegion(2336) = 48
bytRegion(2340) = 41
bytRegion(2344) = 55
bytRegion(2348) = 42
bytRegion(2352) = 60
bytRegion(2356) = 41
bytRegion(2360) = 69
bytRegion(2364) = 42
bytRegion(2368) = 74
bytRegion(2372) = 41
bytRegion(2376) = 82
bytRegion(2380) = 42
bytRegion(2384) = 87
bytRegion(2388) = 41
bytRegion(2392) = 95
bytRegion(2393) = 2
bytRegion(2396) = 42
bytRegion(2400) = 12
bytRegion(2404) = 42
bytRegion(2408) = 22
bytRegion(2412) = 43
bytRegion(2416) = 37
bytRegion(2420) = 42
bytRegion(2424) = 45
bytRegion(2428) = 43
bytRegion(2432) = 49
bytRegion(2436) = 42
bytRegion(2440) = 54
bytRegion(2444) = 43
bytRegion(2448) = 61
bytRegion(2452) = 42
bytRegion(2456) = 69
bytRegion(2460) = 43
bytRegion(2464) = 74
bytRegion(2468) = 42
bytRegion(2472) = 82
bytRegion(2476) = 43
bytRegion(2480) = 87
bytRegion(2484) = 42
bytRegion(2488) = 95
bytRegion(2489) = 2
bytRegion(2492) = 43
bytRegion(2496) = 12
bytRegion(2500) = 43
bytRegion(2504) = 22
bytRegion(2508) = 44
bytRegion(2512) = 37
bytRegion(2516) = 43
bytRegion(2520) = 45
bytRegion(2524) = 44
bytRegion(2528) = 61
bytRegion(2532) = 43
bytRegion(2536) = 70
bytRegion(2540) = 44
bytRegion(2544) = 72
bytRegion(2548) = 43
bytRegion(2552) = 82
bytRegion(2556) = 44
bytRegion(2560) = 87
bytRegion(2564) = 43
bytRegion(2568) = 95
bytRegion(2569) = 2
bytRegion(2572) = 44
bytRegion(2576) = 12
bytRegion(2580) = 44
bytRegion(2584) = 22
bytRegion(2588) = 45
bytRegion(2592) = 37
bytRegion(2596) = 44
bytRegion(2600) = 45
bytRegion(2604) = 45
bytRegion(2608) = 62
bytRegion(2612) = 44
bytRegion(2616) = 83
bytRegion(2620) = 45
bytRegion(2624) = 87
bytRegion(2628) = 44
bytRegion(2632) = 95
bytRegion(2633) = 2
bytRegion(2636) = 45
bytRegion(2640) = 12
bytRegion(2644) = 45
bytRegion(2648) = 22
bytRegion(2652) = 46
bytRegion(2656) = 37
bytRegion(2660) = 45
bytRegion(2664) = 45
bytRegion(2668) = 46
bytRegion(2672) = 63
bytRegion(2676) = 45
bytRegion(2680) = 72
bytRegion(2684) = 46
bytRegion(2688) = 74
bytRegion(2692) = 45
bytRegion(2696) = 81
bytRegion(2700) = 46
bytRegion(2704) = 87
bytRegion(2708) = 45
bytRegion(2712) = 95
bytRegion(2713) = 2
bytRegion(2716) = 46
bytRegion(2720) = 12
bytRegion(2724) = 46
bytRegion(2728) = 22
bytRegion(2732) = 47
bytRegion(2736) = 37
bytRegion(2740) = 46
bytRegion(2744) = 45
bytRegion(2748) = 47
bytRegion(2752) = 64
bytRegion(2756) = 46
bytRegion(2760) = 70
bytRegion(2764) = 47
bytRegion(2768) = 75
bytRegion(2772) = 46
bytRegion(2776) = 79
bytRegion(2780) = 47
bytRegion(2784) = 87
bytRegion(2788) = 46
bytRegion(2792) = 95
bytRegion(2793) = 2
bytRegion(2796) = 47
bytRegion(2800) = 11
bytRegion(2804) = 47
bytRegion(2808) = 23
bytRegion(2812) = 48
bytRegion(2816) = 37
bytRegion(2820) = 47
bytRegion(2824) = 45
bytRegion(2828) = 48
bytRegion(2832) = 65
bytRegion(2836) = 47
bytRegion(2840) = 68
bytRegion(2844) = 48
bytRegion(2848) = 75
bytRegion(2852) = 47
bytRegion(2856) = 78
bytRegion(2860) = 48
bytRegion(2864) = 86
bytRegion(2868) = 47
bytRegion(2872) = 95
bytRegion(2873) = 2
bytRegion(2876) = 48
bytRegion(2880) = 87
bytRegion(2884) = 48
bytRegion(2888) = 95
bytRegion(2889) = 2
bytRegion(2892) = 69
bytRegion(2893) = 1
bytRegion(2896) = 87
bytRegion(2900) = 69
bytRegion(2901) = 1
bytRegion(2904) = 94
bytRegion(2905) = 2
bytRegion(2908) = 70
bytRegion(2909) = 1
bytRegion(2912) = 88
bytRegion(2916) = 70
bytRegion(2917) = 1
bytRegion(2920) = 94
bytRegion(2921) = 2
bytRegion(2924) = 71
bytRegion(2925) = 1
bytRegion(2928) = 88
bytRegion(2932) = 71
bytRegion(2933) = 1
bytRegion(2936) = 93
bytRegion(2937) = 2
bytRegion(2940) = 72
bytRegion(2941) = 1
bytRegion(2944) = 89
bytRegion(2948) = 72
bytRegion(2949) = 1
bytRegion(2952) = 93
bytRegion(2953) = 2
bytRegion(2956) = 73
bytRegion(2957) = 1
bytRegion(2960) = 90
bytRegion(2964) = 73
bytRegion(2965) = 1
bytRegion(2968) = 92
bytRegion(2969) = 2
bytRegion(2972) = 75
bytRegion(2973) = 1
bytRegion(2976) = 91
bytRegion(2980) = 75
bytRegion(2981) = 1
bytRegion(2984) = 91
bytRegion(2985) = 2
bytRegion(2988) = 76
bytRegion(2989) = 1
bytRegion(2992) = 92
bytRegion(2996) = 76
bytRegion(2997) = 1
bytRegion(3000) = 90
bytRegion(3001) = 2
bytRegion(3004) = 77
bytRegion(3005) = 1
bytRegion(3008) = 93
bytRegion(3012) = 77
bytRegion(3013) = 1
bytRegion(3016) = 89
bytRegion(3017) = 2
bytRegion(3020) = 78
bytRegion(3021) = 1
bytRegion(3024) = 94
bytRegion(3028) = 78
bytRegion(3029) = 1
bytRegion(3032) = 88
bytRegion(3033) = 2
bytRegion(3036) = 79
bytRegion(3037) = 1
bytRegion(3040) = 95
bytRegion(3044) = 79
bytRegion(3045) = 1
bytRegion(3048) = 87
bytRegion(3049) = 2
bytRegion(3052) = 80
bytRegion(3053) = 1
bytRegion(3056) = 96
bytRegion(3060) = 80
bytRegion(3061) = 1
bytRegion(3064) = 86
bytRegion(3065) = 2
bytRegion(3068) = 81
bytRegion(3069) = 1
bytRegion(3072) = 97
bytRegion(3076) = 81
bytRegion(3077) = 1
bytRegion(3080) = 85
bytRegion(3081) = 2
bytRegion(3084) = 82
bytRegion(3085) = 1
bytRegion(3088) = 99
bytRegion(3092) = 82
bytRegion(3093) = 1
bytRegion(3096) = 83
bytRegion(3097) = 2
bytRegion(3100) = 83
bytRegion(3101) = 1
bytRegion(3104) = 100
bytRegion(3108) = 83
bytRegion(3109) = 1
bytRegion(3112) = 82
bytRegion(3113) = 2
bytRegion(3116) = 84
bytRegion(3117) = 1
bytRegion(3120) = 102
bytRegion(3124) = 84
bytRegion(3125) = 1
bytRegion(3128) = 80
bytRegion(3129) = 2
bytRegion(3132) = 85
bytRegion(3133) = 1
bytRegion(3136) = 103
bytRegion(3140) = 85
bytRegion(3141) = 1
bytRegion(3144) = 79
bytRegion(3145) = 2
bytRegion(3148) = 86
bytRegion(3149) = 1
bytRegion(3152) = 105
bytRegion(3156) = 86
bytRegion(3157) = 1
bytRegion(3160) = 77
bytRegion(3161) = 2
bytRegion(3164) = 87
bytRegion(3165) = 1
bytRegion(3168) = 107
bytRegion(3172) = 87
bytRegion(3173) = 1
bytRegion(3176) = 74
bytRegion(3177) = 2
bytRegion(3180) = 88
bytRegion(3181) = 1
bytRegion(3184) = 110
bytRegion(3188) = 88
bytRegion(3189) = 1
bytRegion(3192) = 72
bytRegion(3193) = 2
bytRegion(3196) = 89
bytRegion(3197) = 1
bytRegion(3200) = 112
bytRegion(3204) = 89
bytRegion(3205) = 1
bytRegion(3208) = 69
bytRegion(3209) = 2
bytRegion(3212) = 90
bytRegion(3213) = 1
bytRegion(3216) = 116
bytRegion(3220) = 90
bytRegion(3221) = 1
bytRegion(3224) = 66
bytRegion(3225) = 2
bytRegion(3228) = 91
bytRegion(3229) = 1
bytRegion(3232) = 121
bytRegion(3236) = 91
bytRegion(3237) = 1
bytRegion(3240) = 61
bytRegion(3241) = 2
bytRegion(3244) = 92
bytRegion(3245) = 1
End Sub
