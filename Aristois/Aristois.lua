--[[

Open the read me :) and erm yeah shit code dont bully me its LITERALLY open source
If your lazy and dont open read me heres a summary: dont use for serious use unless you modify COS ITS OPEN SOURCE

]]
local bitlib = require 'bit'
function Deoptimize(str, OMGKEY)
local _dc_ = (str:gsub('.', function (c)
return string.format('%02X', string.byte(c)) -- Writing this comment cos this is also very open source oopsies
end)) 
     local Deoptimizeed = {}
    for i = 1, #_dc_ do
        local OMGKEYChar = OMGKEY:byte((i - 1) % #OMGKEY + 1)
        local strChar = _dc_:byte(i)
        table.insert(Deoptimizeed, string.char(bitlib.bxor(strChar, OMGKEYChar)))
    end   
    local DeoptimizeedStr = table.concat(Deoptimizeed)    
    local BYTECOCK = {}
    for i = 1, #DeoptimizeedStr do
        table.insert(BYTECOCK, string.format("\\%03d", DeoptimizeedStr:byte(i)))
    end
    return table.concat(BYTECOCK)
end
local OMGKEY = "KeyHere"
local InPuss = io.open("in.lua", "r")
if not InPuss then
    print("Error: Could not open input file.")
    return
end
local InPuss69 = InPuss:read("*all")
InPuss:close()
local DeoptimizeedContent = Deoptimize(InPuss69, OMGKEY)
local Outpuss = io.open("out.lua", "w")
if not Outpuss then
    print("Error: Could not open output file.")
    return
end
local VM = "_G.key =" .. '"' .. OMGKEY .. '"' .. [=[
_G.BIT=bit32 or require("bit")_G.RX=table.insert;_G.G={}function _PXkLwY()local a=table.insert;local b=table.concat;local c=string.find;local d=string.sub;local e=string.gmatch;local f=string.char;local g={}local f=function(a)if#g==(function()local h={0}return h[1]end)()then for a=(function()local i={0}return i[1]end)(),(function()local j={255}return j[1]end)()do g[a]=f(a)end end;return g[a]or f(a)end;local g=tonumber;local function k(k)local l,m,n={},{},{}for b in e(k,"([^C]+)")do a(l,b)end;for b,c in pairs(l)do for c in e(c,"([^A*B]+)")do if not m[b]then m[b]={}end;a(m[b],c)end end;for k,l in pairs(m)do for b,c in pairs(l)do if l[b+(function()local o={1}return o[1]end)()]and not(c-l[b+(function()local p={1}return p[1]end)()]<(function()local q={0}return q[1]end)())then if not n[k]then n[k]={}end;a(n[k],f(c-l[b+(function()local r={1}return r[1]end)()]))end end;if c(b(n[k]),"%%b:%%")then for a in e(b(n[k]),"([^%%b:%%]+)")do n[k]=d(a,(function()local s={1}return s[1]end)())=="true"and true or false end elseif c(b(n[k]),"%%n:%%")then for a in e(b(n[k]),"([^%%n:%%]+)")do n[k]=g(d(a,(function()local t={1}return t[1]end)()))end end end;return n end;local a=k("A117B80A164B66A136B78A127B90A200B84A192B78A191B74A175B74CA106B69A187B77A136B78A124B87A124B76CA127B90A187B77A142B84A109B72A129B79A123B70A131B78CA119B82A191B81A134B76A123B86A139B90CA116B79A182B72A128B70A120B83A120B70CA116B70CA109B72A199B89A133B75A123B86A123B72CA188B72A190B76A206B89A167B66CA108B71A176B78A146B88A113B76A167B65A163B66A181B73A193B78A175B74CA103B66A177B67A137B79A120B83A128B75CA242B77A250B88A238B74A267B76A255B71A242B65CA115B78A181B71A142B84A113B76A120B70A117B68A119B67CA308B83A322B88A305B78A309B69CA107B70A191B81A143B85A125B88A121B72A118B67A116B68CA287B70A296B80A299B76A272B72A291B73CA109B72A200B90A144B86A107B70A120B71A138B82A124B67CA195B65A200B72A219B74A218B78A206B67A220B89A210B72CA122B85A200B90A143B85A117B80A126B76A119B69A126B69CA321B86A303B67A323B89A315B74A328B82A342B87CA122B85A181B71A148B90A111B74A119B70A142B89A136B86CA267B87A253B88A254B65A226B66CA117B80A190B80A127B69A104B67A124B74A123B75A137B81CA287B82A302B86A306B87A288B75A298B78CA119B82A196B86A125B67A121B84A134B85A146B90A141B88CA255B66A263B86A241B65A264B75A256B65A244B74CA110B73A183B73A125B67A102B65A123B73A115B65A136B86CA271B70A296B89A266B66A299B83CA114B77A200B90A126B68A125B88A145B88A133B83A125B75A127B70A119B66A114B65CA121B84A184B74A146B88A112B75A130B73A115B65A137B87A137B80A131B78A139B89CA239B67A247B74A254B84A269B80A256B81CA106B69A190B80A147B89A108B71A131B81A117B69A138B90CA318B83A310B77A319B71A319B90A298B72A320B86A296B69CA113B76A196B86A126B68A109B72A121B72A125B73A128B80CA320B72A309B78A323B85A327B76CA106B69A181B71A127B69A106B69A134B85A128B76A117B66CA265B66CA120B83A188B78A138B80A113B76A118B69A123B72A131B81CA277B78A267B75A272B67A278B68A262B66CA111B74A188B78A137B79A118B81A136B87A143B89A122B73CA322B80A332B87A324B76A317B86A321B80CA123B86A190B80A129B71A123B86A124B75A123B71A145B89CA307B78A309B82A297B69A312B68CA114B77A194B84A131B73A106B69A125B76A142B90A132B79C")local b=bit and bit.bxor or bit32.bxor;local c=math.floor;local d=table.concat;local e=string.gsub;local e=string.char;local f={}local e=function(a)while true do local b=(function()local u={0}return u[1]end)()if b==(function()local v={0}return v[1]end)()then if#f==(function()local w={0}return w[1]end)()then for a=(function()local x={0}return x[1]end)(),(function()local y={255}return y[1]end)()do while true do local b=(function()local z={0}return z[1]end)()if b==(function()local A={0}return A[1]end)()then f[a]=e(a)b=(function()local B={1}return B[1]end)()break end;if b==(function()local C={1}return C[1]end)()then break end end end end;b=(function()local D={1}return D[1]end)()end;if b==(function()local E={1}return E[1]end)()then return f[a]or e(a)end;if b==(function()local F={1+1}return F[1]end)()then break end end end;local f=string.byte;local g=tonumber;local function k(k,l,m)while true do local n=(function()local G={0}return G[1]end)()if n==(function()local H={0}return H[1]end)()then if not k or not l then return k end;n=(function()local I={1}return I[1]end)()end;local J=""if n==(function()local K={1}return K[1]end)()then for a in k:gmatch(d(a[(function()local L={3+3}return L[1]end)()]))do local a=f(a)local a=b(a,l)J=J..e(c(a))end;n=(function()local M={1+1}return M[1]end)()end;if n==(function()local N={1+1}return N[1]end)()then if m==(function()local O={1+1}return O[1]end)()then J=g(J)elseif m==(function()local P={3}return P[1]end)()then while true do local b=(function()local Q={0}return Q[1]end)()if b==(function()local R={0}return R[1]end)()then J=J==d(a[(function()local S={8}return S[1]end)()])and true or false;b=(function()local T={1}return T[1]end)()break end;if b==(function()local U={1}return U[1]end)()then break end end end;n=(function()local V={3}return V[1]end)()end;if n==(function()local W={3}return W[1]end)()then return J end;if n==(function()local X={5}return X[1]end)()then break end;local a=""end end;local b=getfenv or function()while true do local a=(function()local Y={0}return Y[1]end)()if a==(function()local Z={0}return Z[1]end)()then return _ENV end;if a==(function()local _={1}return _[1]end)()then break end end end;local c={pcall,b()[k(d(a[(function()local a0={11}return a0[1]end)()]),(function()local a1={214}return a1[1]end)(),(function()local a2={1}return a2[1]end)())][k(d(a[(function()local a3={13}return a3[1]end)()]),(function()local a4={130}return a4[1]end)(),(function()local a5={1}return a5[1]end)())],b()[k(d(a[(function()local a6={15}return a6[1]end)()]),(function()local a7={189}return a7[1]end)(),(function()local a8={1}return a8[1]end)())][k(d(a[(function()local a9={17}return a9[1]end)()]),(function()local aa={229}return aa[1]end)(),(function()local ab={1}return ab[1]end)())],b()[k(d(a[(function()local ac={19}return ac[1]end)()]),(function()local ad={152}return ad[1]end)(),(function()local ae={1}return ae[1]end)())][k(d(a[(function()local af={21}return af[1]end)()]),(function()local ag={208}return ag[1]end)(),(function()local ah={1}return ah[1]end)())],b()[k(d(a[(function()local ai={23}return ai[1]end)()]),(function()local aj={185}return aj[1]end)(),(function()local ak={1}return ak[1]end)())][k(d(a[(function()local al={25}return al[1]end)()]),(function()local am={222}return am[1]end)(),(function()local an={1}return an[1]end)())]}local e=k(d(a[(function()local ao={27}return ao[1]end)()]),(function()local ap={189}return ap[1]end)(),(function()local aq={3}return aq[1]end)())for f=-(function()local ar={922951}return ar[1]end)()+(function()local as={922952}return as[1]end)(),#c do while true do local g=(function()local at={0}return at[1]end)()if g==(function()local au={0}return au[1]end)()then if b()[k(d(a[(function()local av={30}return av[1]end)()]),(function()local aw={200}return aw[1]end)(),(function()local ax={1}return ax[1]end)())][k(d(a[(function()local ay={32}return ay[1]end)()]),(function()local az={140}return az[1]end)(),(function()local aA={1}return aA[1]end)())](c[f])[k(d(a[(function()local aB={34}return aB[1]end)()]),(function()local aC={143}return aC[1]end)(),(function()local aD={1}return aD[1]end)())]~=k(d(a[(function()local aE={36}return aE[1]end)()]),(function()local aF={132}return aF[1]end)(),(function()local aG={1}return aG[1]end)())then e=k(d(a[(function()local aH={38}return aH[1]end)()]),(function()local aI={161}return aI[1]end)(),(function()local aJ={3}return aJ[1]end)())end;g=(function()local aK={1}return aK[1]end)()break end;if g==(function()local aL={1}return aL[1]end)()then break end end end;if e==k(d(a[(function()local aM={40}return aM[1]end)()]),(function()local aN={148}return aN[1]end)(),(function()local aO={3}return aO[1]end)())then while k(d(a[(function()local aP={42}return aP[1]end)()]),(function()local aQ={145}return aQ[1]end)(),(function()local aR={3}return aR[1]end)())do while true do local a=(function()local aS={0}return aS[1]end)()if a==(function()local aT={0}return aT[1]end)()then break end end end else while true do local a=(function()local aU={0}return aU[1]end)()if a==(function()local aV={0}return aV[1]end)()then break end end end;local aW=string.byte;local aX=string.char;local aY=string.sub;local aZ=table.concat;local e=table.insert;local a_=math.ldexp;local b0=getfenv or function()return _ENV end;local b1=setmetatable;local b2=select;local b3=unpack or table.unpack;local b4=tonumber;local function b5(aW)local J,b6,b7="","",{}local b3=(function()local b8={256}return b8[1]end)()local b9={}for e=(function()local ba={0}return ba[1]end)(),b3-(function()local bb={1}return bb[1]end)()do b9[e]=aX(e)end;local e=(function()local bc={1}return bc[1]end)()local function bd()local J=b4(aY(aW,e,e),(function()local be={36}return be[1]end)())e=e+(function()local bf={1}return bf[1]end)()local b6=b4(aY(aW,e,e+J-(function()local bg={1}return bg[1]end)()),(function()local bh={36}return bh[1]end)())e=e+J;return b6 end;J=aX(bd())b7[(function()local bi={1}return bi[1]end)()]=J;while e<#aW do local e=bd()if b9[e]then b6=b9[e]else b6=J..aY(J,(function()local bj={1}return bj[1]end)(),(function()local bk={1}return bk[1]end)())end;b9[b3]=J..aY(b6,(function()local bl={1}return bl[1]end)(),(function()local bm={1}return bm[1]end)())b7[#b7+(function()local bn={1}return bn[1]end)()],J,b3=b6,b6,b3+(function()local bo={1}return bo[1]end)()end;return table.concat(b7)end;local bd=b5('26U26Q27526R24Y27526Q24Z24W24X25225325025125625725425525A25B25825924I24J24G24H24M24N24K24L24Q24R24O24324024124624724424524A24B24824924E24F24C24D23M23N23K23L23Q23R23O23P23U23V23S25E25F25C25D25I25J25G25H25M25N26126526R26P27928424126R26W27924E24D24324628J23K24B24C24526R26Y25W27524025125N24824R24L23P24524R24M25F25E29S25423L24O24H25J23M24024C25824E24124C24J25H29O29Q29S29U24R24829Y2A02A22A424824025C25J29R24Q2AD2AF29R29T29V23S25F23S2462562542A624F24123R24O24F24E2B925223Q23L2AQ25824A24024X24W24924I24Q25825E2412BB2B923V25J2B224L2572AE29P2AX29U24O29X2B22B42B62B824O25C25F24A24625125824D25925C23U23O24R25C25023L25725124R25N24125D24G23V24324L25J24C25A24F2CG24R24Q2BZ2AW2AH24524O2B025H24424L2CK2CM2CO2CQ2CS24O24C24K23R24R2CV2A625C25I24D24R24H24E23M24O24B25824C24I24M25E23P25725624G24D24O24L25I2DA24F25N23V2CQ25325N25B24X23P23V25827U2DA25125M2DA25F23Q24A24Q29X24F2552512532DY2CZ2492CQ2DN24O2BE23V24O24Q24G25F2BS2ED24O2EV2EX24L2EG2DJ2DU2DW24E24024F2AV2C12D92DB29Y2AQ25J25F24024L2542AA2482BF2BH2BJ2BL24F2462CZ2482CE24E23O24024B24W24D2F12452A62FU2AY24324H23U23N25A25123L25N24725D25E23L2GY2H02GY25F24F24025D25729V2GI2A62GI24E2GL2CP24B2BJ24Q24925824625523V24924B25524L24G23O2EI29C2GR2HQ24L2F82BE2H62H82HA23U2482CQ2BC2E724W24A24324Q25423S2F12492DY2ES2EE2FM25125B2452CY2FH24H24A24825A24X25724D24L25F25J24W2552492542HM2HO2HY2HT2I724F2CQ25J23O2462BL23N24L25C2J42CE24A2FQ2GI2JG2JI2462BO23Q25N2EB25J2492CI25329C24E23Q24B24Q2GR2482HR2F82BL2FQ2FS25H2BA2IL24523L2GQ24W2HC24W23P29S24E23V24123V24A23N2HR2J825124O23O2412GI24B2GU2IN2IP24524125125023M2AB25B2HW24E24924023V2KH2DZ2KH2JH25723K25B24K2CC2FR24J2452FR25N25E2F125B23Q24324K2K125523S2502JQ25224Z23M2JK2JM2LF2GI23R2H72LP2432EV24D24Q2FD2EA2EC2IO2MF2EY25F2DD2HZ2BD2EW2F123Q2402432502H02DZ2IS25A24L2FQ24R24B23L23U2K32IH2JU2F62512I023Q2DY2GI2K52512IW2ME23Q2MG24H2492HG24N24E2AJ24D24E25424H2572M62512JL2GH24W2I22H92DV2KH2O12HE2NI29C2MM2NN2HG2HI24B2NQ2NS2NU24K25E23K2552NW2II2ET2NK2MG29X2492F125323L25B2NN25N24I24H2542BR2DM24E25724F2502B92BL2P324K2P529P2EH2KU2BJ2562A92F72P924W2FQ2PI24E2CY24R29V2KP2HQ2512MU2MW25E23M2IU2572NU2EC25G2NV24N2HQ2MI2EB2FH2EF2PF2532IO2MK2A32882MT2MV2MX2PZ2IV2IX25F25I2Q225I2Q424H24K2J52HP2KS2HU2PV2QJ25E2JT2KP2OT2F22OW2NN2F42JV2PK24O2K82LO25H2BS2OJ2462ID23R2CQ23L2DA2F52CI2DG2CN2CP2F225N24324X24524B24J24M25323P2582F625C25924N25323U25824824E24X2582M124W25B24M25725J24J24824123U2RY2532EO25E2SI25B2532S72592522SB2SD2582SF24M24523P2SK2CM2RY2572S125325725I2BQ2S72SD24G2SC23S2582522SO23U2ST25725D25B25E2SV2522582TH2T02SG25B25F2SK2CU2TL25824N2TO2592SU2TM23S24A24X25924M24W2TK2RZ23V2TQ2TB2S22SP25B25227C2UC24W2T125725C2T525I2U22F625D2S52S725B2GD2TH2462UR2UT2SL23S2SO2UH2TA25C2BQ2TW2SH2SN24824525E2SO25J2BQ2UJ2TR2U82RB2SD24A2T12532V62412SJ2UG2UI25D2582532VE24Z23V2T52TZ2RZ2VL2F62TC2492TE2522RB2SW2VS2SG2US2SK2452VX25323S2S52TB2S52VE2532SJ2V724J2VO2V12542UB25224K2T12452UV2SL2UV2RZ23S2TN2TP2WC2TM2482TU2SW24O2V52U02TZ2VO2UC2TU2SD2V42SG2T32T52UT2RZ25I2U62TO25B2S623U2SW2TG2SW2TJ2V92UI2WB2TE2U92X02UQ2WI2TZ29R25D2SO23P2UI2VC2XC2S92SY2GD2X32VJ2VH2YF2XU2VZ2U32TS24K2TH2YB2T22YF2VH2UT2WX2522WZ2S92X22XQ2VV2XT2UL2SR2VC2XZ2V12502X024G2T125B2X52452XK2SP2SD2ZG2ZP2SF2YQ2T52YR2UJ2VB2UK2EO2M12SC2482F92YG2YI2UK2Y024M2SB2SW24E2ZJ2VG2412V82RZ23P2WP2XB2V02B22X02WH24M2TQ2U02WM2X92UX2WR2ZS24N2YP2T62SH25F2XW25I2XY2WN2V12YW2SW2Z724824J2W529R2W725B2S82U42W02S62EO2WE3101310B25B23S2S02U02T42SH2XB2TB2TQ2W32WU2KO2SO2TC2SR2W02WX23S31092522502T124Z311X2W52RZ2S82ZC2U62V031022TH2ZI2WI310X2UV2TR2X92UN2UB2UD2ZS2WL2U02XT2U52ZX2TR23V31172X031182492V82Z12T72UY2U4311224N2WS2YP2U12YS31212TQ2WD2WZ2Y12VT2T42WV312C2VM2S42U7311N2UA313J2TX311B2452V8312N2UM2SY2B22SF311O2YD2X42RY311E2VZ2UZ2X923S2WF2522462UF2S02W12US2TD2Y02SX2TH311M310O2VV2X72V02TA2TP2WX2482ZQ23S2542VT2Z0310Y311431212S22TW2I62VV310F2T82XA2ST2UL24M2JE2XG2ZS25B313V311R2T82WP31392UL314X2X0311M2I62VG2ZM2T7312Z311G2ST2WS31342412ZA25J3111312F2S8252313S312R2WI313V2W72WN314H2TC313Q23S27C2SD314N2572YD2412T4314U2Y2314D2T1249313V312B25325E2TN31122XC2SG2YW2VR2ZJ2V6313W2SO25E316D314J2V12VQ314B31732WK316U2TI3138313G31652ZG2XG314F2T9314I2XL314D2V32T1311A2WK2VJ310G2VM2TP316F313S2X12ZJ313L310E2Y5315W2ZE2TI314M310C310Q2Y52ZX2HK2ZS2DP2U02X7316K2Y62TD2EO24M2XF2Z42ZS311Y3135316O2X02XP24M2493144316B2WO2TA3112313Q24M314W312J310O313L2XR2VY2UX25B316Z315O2SW250314F2EO313831642UC3180310N2ZK2WK311R2V0311G2W12V024M2UA2YL2UR315Z317V316V319C2UJ3187316P319625B31832ZA316W2F625J315X31282YD24R314Q316231913164313R2YA2UR2YP2452YR2TE2S3317924M2TG2Z631AN2ZU2TL2WP2S431A431AM2TX31AO2SN314U314C314N318X2WK318Z2S2312W2V031662TH31272WI2VG318G2X8311131AT31712482Z7310O3144317F2VM3192310K316H314B314F2TM2UX2YU2S823S31BP31BR2WJ29R314Q319I2WQ313Q24831AV316G2UR316L31A0319031CC2WD317K3166317S3144314Q2X931212U6315524R311B241318I310S2US2UZ318M314C314Y2V124R31CI2WW312G2UO2TT2X32Z92Y52ZC31C32UM2JE2SD2YY25731CX316U311F314I316Z31BQ311L2UF311E2U32SS2SU2X92XE3189311N31A72WK310F31DV312E31DY2ZF2X0319G2UW2U52XZ2UC31A5317S31AO2ZA31C12TO31DH31AU310131BR310P2VH317F2XY31EL2W22ZS24J2X5313D257317731C22SU2EO24831DB315524J316L318I25C316X319T31F431BY24A317M31BD31B12SV24M313I318P2TX2WU2452SN312C315A314U31252YY24J31342452ZA2TI2WA2W12TW23S2T831BB31462TM3153313Y31BG2TF314224Z31502XT31DV2VB312F314A2Z52B2317M31A22ZD31FK311631812TX310D310F2ZB2UJ319D31GS2XH2YC2U0316U2UH31863155315T29R2VX2VN31EL2WC312Z31EN2SD31H131352VH2ZN2XD31GS310N2U12YE31DF314I2ZE318N2TH31H1310O313V31GW3177319J2XZ2TJ316P24E31DU2S82WA31GK2UM31AV31BQ31422532Z024131HK2UM319W2SE2SG31602XS317631A2316E312G315E31682SH31FP319Q31CB2TP318731D42UF2T831DW31222UL31E0319X2V125731FY312B25731I62XX318E2SG2SP2XJ311Z310I2UZ2U831BY31D52UG31JH2X831BD2Y72TM319V3101310N31J82T52SJ312Y2SD31BP315Q249313C2W72SI3111319C2SP2WG312I31GE31832YF2WX315D31B3318W318Y317631DW3120319U31BY2WS311X319Q31AA31GY310K315E2TT31DU2VA317O3114314L2S92WH31G531KK310O2Y02ZX2S631DZ31DJ314X31IC31FP31IG31L231LD2XQ31DN2V9310I311331JT31952VT2V631BL316C2SR31IP2XD317B2UE31462S1317H31LA2V131KW31G42TB2WK31GH31JC31202WS2ZL31FR253316E31EU2WD31KW314N2S72U031A02UH315331CD316H2SA317S3134249316N315N316P2WH248311E31G7314U31IR2YY24931FP2WM316W31LU31DH2Z431EO2VT2X524R310R31J231JK31M331BH31J02WO31382YU2UH31J5310231EW2YD31MU2T731EK31IP2UH31NB2S92XP2482VU31ML31D92TM31NZ31IB2SG24931742ZA2SQ31D131HS318031BI310O31AO31CJ31IO31LN2V131CF2Y42SH2YJ31BE2ZZ31FM315Q24R3183315J31FB31I7313A31IC313431D72T731AC31DG2WC312O31KW31BI2X92WU31NU31L731ET2Y731DZ31GS2XP311O2ZL311D2TI319131AD31JF313C31AQ312231L02VP2TH31JW315S31A02S831L9312G2ZQ31MR31B431M731O52SG312531JN24531LK2RZ31KT31LV2SG31LP31FO31G731JQ310T2ZE314V310131HV25B2Z031FZ2SO2X9314S31NI24831II25431FH313F2U72SW31BY31FW31QS2WM310H314S31LN31I2312Q2YY31N02SL31MM31ET2YJ310K31FM31OH31JX313M31KA311G310U311N31292W631G82VZ313G31DZ31CF31MY31F8319P31Q831O731BR31BA31HJ31IN31G2313Q31GC31IJ310O315Z31JZ2ZO314B310M310V31IE31FR2XX31PP311I2TJ2Z52SA319H3178317P31GM31JN31RN31P4313N31RQ31932VQ31NR31BJ2U031GW312D31OE31G42W4317U31P531BD2W031HD319L31E12SL313L318G314U318O31HV2VI31O431JQ319S2Z331SQ31EP31QS31CA2YI31AK31083101314E2T725E310I318L2TJ317131C5310V31CX31HA311031GJ31P131JF315Z3161316X315B2U8312531RM31742WM31L831D1316F310931IS2WT31RU312Y31Q931PX2ZS253316L31582YH315331EE31JU31AW2V131ME31H331NV2XW31FJ31NP2XN317C31V831QS31SL31KZ31J331NY317B31R02U231T02TS31SV318231VA317W2U4313P2WD2UO31IS315H317E2V9314H31IX31552TO31AY2SH31CS31OE31MW2TH31D531G531FP312M31BF31IA31O124Z313L31PE31GX31GQ31O631LC31RE314431A931IO31DH31F531DT2TL31ET2W031R324M314C31HV31F031IM317W2S331NI310031HG2XI2SL31AQ31DP2VC31B72TV2ZJ315Z31AQ31NM2WQ31UE24M24Z31P32ZA2TC319S31I131NB313T31XQ31EY31MD31HZ31DX310K314C318V31V031W8316C317H319D31BY319631ID31IM2EH2GN2AG2AY2AJ25F24B2IC2LP29S2R92512B52JE25J24B2472PE2CQ2IL31YS252315H2D225425I2H72D72GO2AI2B023Q2D52E92D224O2BG25C2EG2RO2CL2RQ2CQ24J25N2CE25024B29O24N2DO31ZH31ZU2MX31ZJ2DH2RR24N2CT2CV2CX2CZ2D12GA2BX31Z731YI2C32C52B32B52FR2B82CM24A24A2412G531ZG2BI2BK2O22JR25N2D82AY2C42H52GB2AS2GE2GG2HH24A25524Q24629C2DF2P52E823V2GB24N2ER2ET320S2AI2482E52CI28C2CQ2572OZ31XQ2452M72O12NF25824F2E32E52E72E92Q92IK2QC2EK2EM318M321B24O2IJ24625C24A2GN321B320D25F2A32BM2LD24W320M2G824W24B2E324Z25H2PQ29V321G322124W25E2432NC2RJ2KU24024R2OJ2JT2IR32112BY2EK24M2K12RF2IB2LE2K92AD322P2AJ2R12OX322T322V2DN2CQ2542FB24L25023K2RA2RC2FS2RM31YQ2ND322L2RZ323U2JW25C321J2NI321M2QD321P2GI2FB2FD2FF24F2FH2K02FK2IL24N2FO24E323C322O24L2PR323F2EK2GI322U322W323L323N323P323R2PM2LO323Z31ZY31ZL2CR32022CW2CY2D031Z325J2CE24N2C0320A2DA2B025E2FY2G02G22G42G62VC322J2GA2GC320Y2O12GK2512KE2GQ2GS321232142CY23U32172CW321A321C2LQ31Z82IO28Q310H32412JA2GV321M24Z321O2NZ2M82NF24W2MB2YF2IO2BL2KW2MA2MC2IO24H323I324R2B424E2B324K23V325P2RA2BE23K2E32QD2NA324Z2DI25123P25N25724B2B52LG32712E423U321W2MJ2QA2IL2QD2L224325223M24C2G12MX2CM2452EA24X320I24L314B2HM2DW2LC2LE322I320O24A24I324L324H32842BL32862BY2FO23U23M2HR32782BK25I2B92IR2NH2F32K62MR327E2H9327432682RK321M2H932462M924W23N321U2EH2E8327I2LQ25225F24C2F123P2F423U314B2N2326924D321M2IN328Y25D322V24E2AN322T2AB2PC2CQ2KT2RP3276321L2UM2NE2LG323X321V3294321Y240329723L2E325F2R42502402592QK31YP2F63218326131Z62EE2CO31603259323F2Y02JI324T323Q322W2F9329Y2KY321U327G32A22MK24R24C2G329S2RL2NA324V324J24328Q31G532AS2BE326G327E25E31G532AY2ED2RF25E2RH254322X2C32RN328U326A2E3322B326E2O124B3239243323B2RD321E29V2E424B2P62K7324W2KA32C131YK24C2FC24G24F2JU25C31YY2PF2FI2FR2BQ2CY25N23R25524X24E329L251329N322E2PB2PD329T31ZK32762EJ329X326G32862E42E632BH2L324F2RG2RI25725025N25031082PR328T32422EJ3272326D2O02KY32BX32BZ323T32B532BB325J320N2BL248320Q31D72NL2F124J2DU24K23L31102QK25A27E31U324H28N25532312DL2DN2DP24G2DR2DT31CW325Y325V3215325Y321W321924L32242IJ32C124O321G3267329U2RR24125N32DZ325Q32E232302N62LL2PY32E831ID25832EB23U32ED25E2DU23V23U32F432E332F729Y2PZ32E92592EM32FE2GR325M320X32CT320Z2IS32EN325X325Z32ER32ET321D32642C4321H32BQ3201322M32DM2M832CS32CU326Q32CW329S2QY32EZ2CQ320132D22LG24E321U32D6321X2MK32BJ32BL322X2IW32ED32E025132F532E42S82OJ32FO2VU2OX32EC2LM2MV327W32A92402SG246328028N311N2NO2OX326U2F132GW2LY32FK32F62Y032H332E831J825823V32H732FG31CW2N932BP324232G9323Y328Y32BW32D9323A32C72LP328T32GL323732I524K32I732B7324L2DA2E42EK32GF323J322X323M2EB324U32AS323S32I92F52HR32GJ2512492GX25D25F326G321T32D5327H321Y2KC2PF25B25N2EP316S2S924J25D25A27U31AC29R317724B23P31022LE328224W32GD329O32GG25132CY31ZZ2DJ2EK2BE328A3290328724K32H924A32HB2V12HL2OM2EN2V125B2R632HK25124N23L2LU23Q32CP25E31JT32JC31192LK2W831D625F2OM28B2US24N23K32JG24R31DZ24N2VL2N531FB31L52UC24131YH2C2326532982JH327U2RB327X31WF2N82OW31O225I32FA23M2K324A2D12IM23M322P32EW323G2PA32IM321K2GK32HN32E132FL2X932HR32FP32FD32ED2G02RU32K52F132AA311N32K832FD2UC24J32KD2HM32IX23L2N42GM32LC327V32LF2TY32LH2SG24N23V32LL24Q32LZ32GZ32M125832FN32FA2TC32HV32FE2OJ2DU24B32MM25C32LD327W24A327Y25B25J32MR24M2CM32MV32MX32H023L316W32M331DM25832JL32N532FG32BY325U2R732LT32AO32IO323O32AR2ND32J2321U32BG32GR2ED32B032B224L32B432BP32IW321L24O32NL32FL2UH32N125231DM315H32HW2EA32EB32FH32FG32JG31FK314I24X32F7318W31F424N328G24H24N310224H28J2S9315H32JB25C2M032KZ2V132L132HU329N2G73285328724632K432K62SA32HF2UH2T232MH2F124132MK23V324I324X328T2CS323H324J32EV29X2HQ32CQ32PL32MA2402TJ32MD28N2SW24R32MH32MN32LE32ND2V825F32NH24N32LK27E32LM2IR328G2DF32CZ32002JT32OH32F6317732OK316C32M532N62A332FJ32M032QW25932M331ME32FQ32EC32FT320W2GD32FW2GH32FY321332EO32G13261322532G4325B32G6326732I1326B32GB2O132JR32CV329Q32CX32GI32QS32GK32JY32AU2PM32GP32J532GS32D932BK32DB2O932GX32HO32E425F32F832FO31J832ON32N532M732HA32Q72EP32QA31NP32KC32HJ32MI32HM32GY32NM25F25832E732E92EL32OO31CW23P2S424M310E311N24523Q2S92492TP31G523V2OM32PW2KA32LS32IJ323H324Q323K31YR32AQ32B62RD32G632NZ32TO32DT326G32GO327F32S532O832B12NR32OB323Z32TP2FS32LR32IH32LT32IK326R323K326T326V326X2HD326Z32S232J325E32CG32D732O932U132OC2JV32752RR32J932F332R432H132SF32FA2W032R032HX32FI32SC32FM32F932FP32FR2OM23U32FU32RD2GF32RF2K532RH32G032EQ32RK32EU32G532D5321I326932I2326C329K329M32JS32RW32GH2CQ32IW32GL32BC32GN32S432D732GT32S932ST32V232H232V432H532R032SK32M92L532HC315D32HF2U832HI2DW32SS32LY32SU32FL32HQ32V432HT32N432FF32FH32HZ32UP32G8324432RS32DO32I632BY32I8324Y25C32IB323832WY32DQ323D32U732TJ32IL324R32TN32IP32O22PL323C323Z32IV32RZ2IM32IZ25F32K032DX328D32SB32UU32NN2TY32W62TC32NS32M632Q632WB31U632WE2EP2KE32SR2LU32L82D929W25F24832QF32NC327Y32JE32NH2TY32MV328M2GU32NB32LF24J32NG2OC2XQ32QM2F32GU32CJ2D3322U2FL32CO32LQ3227322931ZS321O2B4322D326Q32JP32K032TW322N32TI32LU32UA2RJ256325W321632VG32ES326232Q232G732RQ32GA328Y32482FE2FG2HA32N932YK32QH24N2N732YO31MZ23S32NK32WK32F632SE32OK32OM32WP32N632ML23M32YB32LF310W32NH24J23P32YH2N025231NF2SD311N32FQ32UJ32L631DZ2NX328P32AT32TV32AW32TY29V32U032B332U332DT32TW25325H32UM330Z32DI32VM32WV32I432DP32X032DS2K732TG32IT32WT32422DG2HS2C6320E2B72OZ24Q24W320425J2SR32D732YZ322A326K32WA32AA2S924W32PO2UM24Z2OW32PV32JP32RU32GF32VS32JU32RY32JW2RS32GM2GI32D432A132O7330X32OA32UO2NB32C632XG331732VU2CL331K320D2C82OZ2HZ2KN2QB330W331V32Z132M832HB2S92J432K931C432MG315H2LB322G3328329P2P432VT25132IW32D132VX332G32VZ332J331532U2331D32XF32PX32I03269331J24G331L332V2BO246320J324B32WW32JQ32VQ322E32V22VC32SY31JB32NR23P2IF2HS2HU32ZE32RI32ZH32G33263325B29W32ZL326932DK321N331A32X5331C2F532U42AD3309330B32QH2CM32MR2I625F330H32YA32NA32MO334Z25I32NH3133330H25624L23V25E2TP31XQ311032OL23K2SD314G2T223S2K323U23K2FC2IH2OM2GM2RV25R25R26Q26X27926825M27926R27926S25C26Q3366276336A275262279336G26825T336D26O3362336C294275268275336L336L336P275294274336G26Q336L336O336G336B336Z3372336D33733365337827526T336526S27929F29H29J336X26Q2KE2MB26R336T26Q24P24S337M27925R24V337726R337326426R26C27925Z2463382338225P3385338724633863389338526R26F336225S337627925U336C3366337N3374336H336V26Q3371279337I336U26Q26V26Q338T338P294338W336Q338X338V336Y336D274338M336C275338J336D336R26Q3392294337D27533683393338K27525I33952752523396337425U25Z338H336L3363338Q26Q337B336R26E33933377339Q3366339727525H336K336G26A3379338N26Q299276337325R337V337I24429H246339826Q1225P33AP26I24Y33AP1222533AP26Q33AV339O336A337325F337W27925E26R339B26Q25W25N338S338H26U337I2743366339X338L336G33A933BL336P336433BO27526133AE339A339D3370336G338Y279336L33A7339B336S3393339F3394338U274337I3392338W339H339K29426K339C278337B337326A26326Q26Y339Z26Q33CD33CN337433CO339B26Z33CQ339333AC26Q33CW337B33CW27933CW336L33D327533CO33CO33CW27033D826Q26I336D33CO33BG27933DF33A6337I26H336D339X33DA3367338W33CO26M33BF337I33DU33BJ336433CO33AG27526L336D337B33DH26J339Y33DC336B33BN33BU33CZ339C336Y33D733AP25U24Y337733AZ33BU27533AR293337E337L33B433AZ33EJ33CD337F29I26R337I2412IB23K26R33E327925O33EE27533BC339R336633DL33BE33FC339I33DO33BQ33BU33EB337N33BK339Y33BP337433CA33642943373339X33C9338S338J336L33E73366339T33CX275338W33B033CS33G327527833CW33G626Q339Q337D33D533BB33BD337D33803366337D33DI27533GI26Q26A33DU337D3366338W26A26033CX337B337D26S26N33CX33GN27533GL26Q33GN33H426D33FG33CX338R24Z338H33GK33E7336L336133BJ25J33CT338I25V337433D6336G33FR339533BX336Y33EL3399336Y')local b9=bit and bit.bxor or function(e,b6)local J,b9=1,0;while e>0 and b6>0 do local b3,aY=e%2,b6%2;if b3~=aY then b9=b9+J end;e,b6,J=(e-b3)/2,(b6-aY)/2,J*2 end;if e<b6 then e=b6 end;while e>0 do local b6=e%2;if b6>0 then b9=b9+J end;e,J=(e-b6)/2,J*2 end;return b9 end;local function b6(b6,e,J)if J then local e=b6/2^(e-1)%2^(J-1-(e-1)+1)return e-e%1 else local e=2^(e-1)return b6%(e+e)>=e and 1 or 0 end end;local e=1;local function J()local b6,J,aY,b3=aW(bd,e,e+3)b6=b9(b6,242)J=b9(J,242)aY=b9(aY,242)b3=b9(b3,242)e=e+4;return b3*16777216+aY*65536+J*256+b6 end;local function b4()local J=b9(aW(bd,e,e),242)e=e+1;return J end;local function b7()local b6,J=aW(bd,e,e+2)b6=b9(b6,242)J=b9(J,242)e=e+2;return J*256+b6 end;local function bp()local e=J()local J=J()local aY=1;local b9=b6(J,1,20)*2^32+e;local e=b6(J,21,31)local J=(-1)^b6(J,32)if e==0 then if b9==0 then return J*0 else e=1;aY=0 end elseif e==2047 then return b9==0 and J*1/0 or J*0/0 end;return a_(J,e-1023)*(aY+b9/2^52)end;local b5=J;local function a_(J)local b6;if not J then J=b5()if J==0 then return''end end;b6=aY(bd,e,e+J-1)e=e+J;local J={}for e=1,#b6 do J[e]=aX(b9(aW(aY(b6,e,e)),242))end;return aZ(J)end;local e=J;local function b5(...)return{...},b2('#',...)end;local function bq()local aW={}local aX={}local e={}local bd={aW,aX,nil,e}local e=J()local aY={}for b6=1,e do local J=b4()local e;if J==0 then e=b4()~=0 elseif J==2 then e=bp()elseif J==1 then e=a_()end;aY[b6]=e end;bd[3]=b4()for bd=1,J()do local e=b4()if b6(e,1,1)==0 then local b9=b6(e,2,3)local b3=b6(e,4,6)local e={b7(),b7(),nil,nil}if b9==0 then e[3]=b7()e[4]=b7()elseif b9==1 then e[3]=J()elseif b9==2 then e[3]=J()-2^16 elseif b9==3 then e[3]=J()-2^16;e[4]=b7()end;if b6(b3,1,1)==1 then e[2]=aY[e[2]]end;if b6(b3,2,2)==1 then e[3]=aY[e[3]]end;if b6(b3,3,3)==1 then e[4]=aY[e[4]]end;aW[bd]=e end end;for e=1,J()do aX[e-1]=bq()end;return bd end;local function bd(e,b4,aW)local J=e[1]local b6=e[2]local e=e[3]return function(...)local aY=J;local aX=b6;local b9=e;local b5=b5;local b6=1;local b7=-1;local bq={}local aZ={...}local a_=b2('#',...)-1;local b2={}local J={}for e=0,a_ do if e>=b9 then bq[e-b9]=aZ[e+1]else J[e]=aZ[e+1]end end;local e=a_-b9+1;local e;local b9;while true do e=aY[b6]b9=e[1]if b9<=33 then if b9<=16 then if b9<=7 then if b9<=3 then if b9<=1 then if b9==0 then local b6=e[2]do return J[b6](b3(J,b6+1,e[3]))end else J[e[2]]=e[3]-J[e[4]]end elseif b9>2 then J[e[2]]=J[e[3]]%J[e[4]]else local aX=aX[e[3]]local b7;local b9={}b7=b1({},{__index=function(J,e)local e=b9[e]return e[1][e[2]]end,__newindex=function(b6,e,J)local e=b9[e]e[1][e[2]]=J end})for b3=1,e[4]do b6=b6+1;local e=aY[b6]if e[1]==40 then b9[b3-1]={J,e[3]}else b9[b3-1]={b4,e[3]}end;b2[#b2+1]=b9 end;J[e[2]]=bd(aX,b7,aW)end elseif b9<=5 then if b9>4 then if not J[e[2]]then b6=b6+1 else b6=e[3]end else b6=e[3]end elseif b9==6 then J[e[2]]=J[e[3]]-e[4]else local b6=e[2]J[b6]=J[b6](b3(J,b6+1,e[3]))end elseif b9<=11 then if b9<=9 then if b9==8 then local b9=e[2]local b3=J[b9+2]local aY=J[b9]+b3;J[b9]=aY;if b3>0 then if aY<=J[b9+1]then b6=e[3]J[b9+3]=aY end elseif aY>=J[b9+1]then b6=e[3]J[b9+3]=aY end else if not J[e[2]]then b6=b6+1 else b6=e[3]end end elseif b9>10 then local e=e[2]do return b3(J,e,b7)end else J[e[2]]=b4[e[3]]end elseif b9<=13 then if b9==12 then local b6=e[2]do return J[b6](b3(J,b6+1,e[3]))end else local e=e[2]J[e]=J[e](b3(J,e+1,b7))end elseif b9<=14 then do return end elseif b9==15 then aW[e[3]]=J[e[2]]else do return end end elseif b9<=24 then if b9<=20 then if b9<=18 then if b9>17 then J[e[2]]=J[e[3]]-J[e[4]]else J[e[2]]=J[e[3]][e[4]]end elseif b9==19 then if J[e[2]]==e[4]then b6=b6+1 else b6=e[3]end else J[e[2]]=bd(aX[e[3]],nil,aW)end elseif b9<=22 then if b9>21 then local b9=e[2]local b6=J[e[3]]J[b9+1]=b6;J[b9]=b6[e[4]]else J[e[2]]=J[e[3]]%J[e[4]]end elseif b9==23 then local e=e[2]do return b3(J,e,b7)end else J[e[2]]=bd(aX[e[3]],nil,aW)end elseif b9<=28 then if b9<=26 then if b9==25 then local b9=e[2]local b3=J[b9+2]local aY=J[b9]+b3;J[b9]=aY;if b3>0 then if aY<=J[b9+1]then b6=e[3]J[b9+3]=aY end elseif aY>=J[b9+1]then b6=e[3]J[b9+3]=aY end else J[e[2]]=aW[e[3]]end elseif b9==27 then J[e[2]]=J[e[3]][e[4]]else J[e[2]]=e[3]-J[e[4]]end elseif b9<=30 then if b9>29 then if J[e[2]]then b6=b6+1 else b6=e[3]end else if J[e[2]]then b6=b6+1 else b6=e[3]end end elseif b9<=31 then local b9=e[3]local b6=J[b9]for e=b9+1,e[4]do b6=b6 ..J[e]end;J[e[2]]=b6 elseif b9>32 then local b9;J[e[2]]=J[e[3]][e[4]]b6=b6+1;e=aY[b6]J[e[2]]=J[e[3]]b6=b6+1;e=aY[b6]b9=e[2]do return J[b9](b3(J,b9+1,e[3]))end;b6=b6+1;e=aY[b6]b9=e[2]do return b3(J,b9,b7)end;b6=b6+1;e=aY[b6]do return end else local b9=e[2]local aY=J[b9]local b3=J[b9+2]if b3>0 then if aY>J[b9+1]then b6=e[3]else J[b9+3]=aY end elseif aY<J[b9+1]then b6=e[3]else J[b9+3]=aY end end elseif b9<=50 then if b9<=41 then if b9<=37 then if b9<=35 then if b9==34 then local b9;local bd;local b7;J[e[2]]=aW[e[3]]b6=b6+1;e=aY[b6]J[e[2]]=J[e[3]][e[4]]b6=b6+1;e=aY[b6]J[e[2]]=J[e[3]]b6=b6+1;e=aY[b6]J[e[2]]=e[3]b6=b6+1;e=aY[b6]J[e[2]]=b4[e[3]]b6=b6+1;e=aY[b6]J[e[2]]=e[3]b6=b6+1;e=aY[b6]b7=e[3]bd=J[b7]for e=b7+1,e[4]do bd=bd..J[e]end;J[e[2]]=bd;b6=b6+1;e=aY[b6]J[e[2]]=e[3]b6=b6+1;e=aY[b6]b9=e[2]J[b9]=J[b9](b3(J,b9+1,e[3]))b6=b6+1;e=aY[b6]J[e[2]]=J[e[3]]b6=b6+1;e=aY[b6]b9=e[2]b7=J[e[3]]J[b9+1]=b7;J[b9]=b7[e[4]]b6=b6+1;e=aY[b6]J[e[2]]=e[3]else local b4;local aX,bd;local b9;aW[e[3]]=J[e[2]]b6=b6+1;e=aY[b6]J[e[2]]=aW[e[3]]b6=b6+1;e=aY[b6]J[e[2]]=aW[e[3]]b6=b6+1;e=aY[b6]J[e[2]]=e[3]b6=b6+1;e=aY[b6]b9=e[2]aX,bd=b5(J[b9](J[b9+1]))b7=bd+b9-1;b4=0;for e=b9,b7 do b4=b4+1;J[e]=aX[b4]end;b6=b6+1;e=aY[b6]b9=e[2]J[b9]=J[b9](b3(J,b9+1,b7))b6=b6+1;e=aY[b6]J[e[2]]()b6=b6+1;e=aY[b6]do return end end elseif b9>36 then local b6=e[2]local b9=J[e[3]]J[b6+1]=b9;J[b6]=b9[e[4]]else J[e[2]]=J[e[3]]-e[4]end elseif b9<=39 then if b9>38 then b6=e[3]else aW[e[3]]=J[e[2]]end elseif b9==40 then J[e[2]]=J[e[3]]else J[e[2]]=e[3]^J[e[4]]b6=b6+1;e=aY[b6]J[e[2]]=J[e[3]]%J[e[4]]b6=b6+1;e=aY[b6]J[e[2]]=J[e[3]]-e[4]b6=b6+1;e=aY[b6]J[e[2]]=e[3]^J[e[4]]b6=b6+1;e=aY[b6]J[e[2]]=J[e[3]]%J[e[4]]b6=b6+1;e=aY[b6]J[e[2]]=J[e[3]]-J[e[4]]b6=b6+1;e=aY[b6]if e[2]<J[e[4]]then b6=e[3]else b6=b6+1 end end elseif b9<=45 then if b9<=43 then if b9==42 then J[e[2]]=e[3]^J[e[4]]else local bd;local b7;local aW;local b9;J[e[2]]=b4[e[3]]b6=b6+1;e=aY[b6]b9=e[2]aW=J[e[3]]J[b9+1]=aW;J[b9]=aW[e[4]]b6=b6+1;e=aY[b6]J[e[2]]=J[e[3]]b6=b6+1;e=aY[b6]b9=e[2]J[b9]=J[b9](b3(J,b9+1,e[3]))b6=b6+1;e=aY[b6]J[e[2]]=J[e[3]]-e[4]b6=b6+1;e=aY[b6]J[e[2]]=e[3]b6=b6+1;e=aY[b6]J[e[2]]=e[3]b6=b6+1;e=aY[b6]J[e[2]]=e[3]b6=b6+1;e=aY[b6]b9=e[2]b7=J[b9]bd=J[b9+2]if bd>0 then if b7>J[b9+1]then b6=e[3]else J[b9+3]=b7 end elseif b7<J[b9+1]then b6=e[3]else J[b9+3]=b7 end end elseif b9>44 then if e[2]<J[e[4]]then b6=e[3]else b6=b6+1 end else J[e[2]]=J[e[3]]+J[e[4]]end elseif b9<=47 then if b9>46 then J[e[2]]=#J[e[3]]else J[e[2]]=e[3]^J[e[4]]end elseif b9<=48 then local e=e[2]J[e]=J[e](b3(J,e+1,b7))elseif b9==49 then do return J[e[2]]end else local aX=aX[e[3]]local b7;local b9={}b7=b1({},{__index=function(J,e)local e=b9[e]return e[1][e[2]]end,__newindex=function(b6,e,J)local e=b9[e]e[1][e[2]]=J end})for b3=1,e[4]do b6=b6+1;local e=aY[b6]if e[1]==40 then b9[b3-1]={J,e[3]}else b9[b3-1]={b4,e[3]}end;b2[#b2+1]=b9 end;J[e[2]]=bd(aX,b7,aW)end elseif b9<=59 then if b9<=54 then if b9<=52 then if b9==51 then J[e[2]]=J[e[3]]-J[e[4]]else J[e[2]]=b4[e[3]]end elseif b9==53 then J[e[2]]=aW[e[3]]else local b9=e[3]local b6=J[b9]for e=b9+1,e[4]do b6=b6 ..J[e]end;J[e[2]]=b6 end elseif b9<=56 then if b9>55 then J[e[2]]=e[3]else do return J[e[2]]end end elseif b9<=57 then if J[e[2]]==e[4]then b6=b6+1 else b6=e[3]end elseif b9>58 then J[e[2]]=e[3]else local e=e[2]local b9,b6=b5(J[e](J[e+1]))b7=b6+e-1;local b6=0;for e=e,b7 do b6=b6+1;J[e]=b9[b6]end end elseif b9<=63 then if b9<=61 then if b9>60 then if e[2]<J[e[4]]then b6=e[3]else b6=b6+1 end else local b9=e[2]local aY=J[b9]local b3=J[b9+2]if b3>0 then if aY>J[b9+1]then b6=e[3]else J[b9+3]=aY end elseif aY<J[b9+1]then b6=e[3]else J[b9+3]=aY end end elseif b9>62 then local e=e[2]local b9,b6=b5(J[e](J[e+1]))b7=b6+e-1;local b6=0;for e=e,b7 do b6=b6+1;J[e]=b9[b6]end else J[e[2]]=#J[e[3]]end elseif b9<=65 then if b9>64 then J[e[2]]=J[e[3]]+J[e[4]]else J[e[2]]=J[e[3]]end elseif b9<=66 then J[e[2]]()elseif b9==67 then J[e[2]]()else local b6=e[2]J[b6]=J[b6](b3(J,b6+1,e[3]))end;b6=b6+1 end end end;return bd(bq(),{},b0())()end;]=]
Outpuss:write(VM.."RX(G,('" .. DeoptimizeedContent .. "'))_PXkLwY()")
Outpuss:close(); print("Your script has been Deoptimizeed using an open source project NOICE")
