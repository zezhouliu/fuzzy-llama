; ModuleID = 'http_parser_main.o'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8* }
%struct.http_parser_settings = type { i32 (%struct.http_parser*)*, i32 (%struct.http_parser*, i8*, i64)*, i32 (%struct.http_parser*, i8*, i64)*, i32 (%struct.http_parser*, i8*, i64)*, i32 (%struct.http_parser*, i8*, i64)*, i32 (%struct.http_parser*)*, i3
%struct.http_parser = type { i8, i8, i8, i8, i32, i64, i16, i16, [2 x i8], i8, i8, i8* }
%struct.http_parser_url = type { i16, i16, [7 x %struct.anon.0] }
%struct.anon.0 = type { i16, i16 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"((enum http_errno) (parser)->http_errno) == HPE_OK\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"http_parser_main.c\00", align 1
@__PRETTY_FUNCTION__.http_parser_execute = private unnamed_addr constant [94 x i8] c"size_t http_parser_execute(http_parser *, const http_parser_settings *, const char *, size_t)\00", align 1
@method_strings = internal global [27 x i8*] [i8* getelementptr inbounds ([7 x i8]* @.str85, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str86, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str87, i32 0, i32 0), i8* getelementptr inbo
@tokens = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00!\00#$%&'\00\00*+\00-.\000123456789\00\00\00\00\00\00\00abcdefghijklmnopqrstuvwxyz\00\00\00^_`abcdefghijklmnopqrst
@.str2 = private unnamed_addr constant [11 x i8] c"connection\00", align 1
@.str3 = private unnamed_addr constant [17 x i8] c"proxy-connection\00", align 1
@.str4 = private unnamed_addr constant [15 x i8] c"content-length\00", align 1
@.str5 = private unnamed_addr constant [18 x i8] c"transfer-encoding\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"upgrade\00", align 1
@.str7 = private unnamed_addr constant [28 x i8] c"0 && \22Unknown header_state\22\00", align 1
@.str8 = private unnamed_addr constant [27 x i8] c"0 && \22Shouldn't get here.\22\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@.str10 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str12 = private unnamed_addr constant [91 x i8] c"parser->content_length != 0 && parser->content_length != (9223372036854775807LL*2ULL+1ULL)\00", align 1
@.str13 = private unnamed_addr constant [19 x i8] c"parser->nread == 1\00", align 1
@.str14 = private unnamed_addr constant [26 x i8] c"parser->flags & F_CHUNKED\00", align 1
@unhex = internal constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\
@.str15 = private unnamed_addr constant [28 x i8] c"parser->content_length == 0\00", align 1
@.str16 = private unnamed_addr constant [23 x i8] c"0 && \22unhandled state\22\00", align 1
@.str17 = private unnamed_addr constant [132 x i8] c"((header_field_mark ? 1 : 0) + (header_value_mark ? 1 : 0) + (url_mark ? 1 : 0) + (body_mark ? 1 : 0) + (status_mark ? 1 : 0)) <= 1\00", align 1
@.str18 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str19 = private unnamed_addr constant [63 x i8] c"err < (sizeof(http_strerror_tab)/sizeof(http_strerror_tab[0]))\00", align 1
@__PRETTY_FUNCTION__.http_errno_name = private unnamed_addr constant [45 x i8] c"const char *http_errno_name(enum http_errno)\00", align 1
@http_strerror_tab = internal global [30 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([7 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str26, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([21 x i8]* @
@__PRETTY_FUNCTION__.http_errno_description = private unnamed_addr constant [52 x i8] c"const char *http_errno_description(enum http_errno)\00", align 1
@.str20 = private unnamed_addr constant [20 x i8] c"!\22Unexpected state\22\00", align 1
@__PRETTY_FUNCTION__.http_parser_parse_url = private unnamed_addr constant [79 x i8] c"int http_parser_parse_url(const char *, size_t, int, struct http_parser_url *)\00", align 1
@.str21 = private unnamed_addr constant [49 x i8] c"0 && \22Attempting to pause parser in error state\22\00", align 1
@__PRETTY_FUNCTION__.http_parser_pause = private unnamed_addr constant [43 x i8] c"void http_parser_pause(http_parser *, int)\00", align 1
@.str22 = private unnamed_addr constant [9 x i8] c"err == 0\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@data = internal constant [521 x i8] c"POST /joyent/http-parser HTTP/1.1\0D\0AHost: github.com\0D\0ADNT: 1\0D\0AAccept-Encoding: gzip, deflate, sdch\0D\0AAccept-Language: ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4\0D\0AUser-Agent: Mozilla/5.0 (Macintosh; Intel 
@.str23 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@settings = internal global %struct.http_parser_settings { i32 (%struct.http_parser*)* @on_info, i32 (%struct.http_parser*, i8*, i64)* @on_data, i32 (%struct.http_parser*, i8*, i64)* @on_data, i32 (%struct.http_parser*, i8*, i64)* @on_data, i32 (%struct.
@.str24 = private unnamed_addr constant [19 x i8] c"parsed == data_len\00", align 1
@.str25 = private unnamed_addr constant [7 x i8] c"HPE_OK\00", align 1
@.str26 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str27 = private unnamed_addr constant [21 x i8] c"HPE_CB_message_begin\00", align 1
@.str28 = private unnamed_addr constant [37 x i8] c"the on_message_begin callback failed\00", align 1
@.str29 = private unnamed_addr constant [11 x i8] c"HPE_CB_url\00", align 1
@.str30 = private unnamed_addr constant [27 x i8] c"the on_url callback failed\00", align 1
@.str31 = private unnamed_addr constant [20 x i8] c"HPE_CB_header_field\00", align 1
@.str32 = private unnamed_addr constant [36 x i8] c"the on_header_field callback failed\00", align 1
@.str33 = private unnamed_addr constant [20 x i8] c"HPE_CB_header_value\00", align 1
@.str34 = private unnamed_addr constant [36 x i8] c"the on_header_value callback failed\00", align 1
@.str35 = private unnamed_addr constant [24 x i8] c"HPE_CB_headers_complete\00", align 1
@.str36 = private unnamed_addr constant [40 x i8] c"the on_headers_complete callback failed\00", align 1
@.str37 = private unnamed_addr constant [12 x i8] c"HPE_CB_body\00", align 1
@.str38 = private unnamed_addr constant [28 x i8] c"the on_body callback failed\00", align 1
@.str39 = private unnamed_addr constant [24 x i8] c"HPE_CB_message_complete\00", align 1
@.str40 = private unnamed_addr constant [40 x i8] c"the on_message_complete callback failed\00", align 1
@.str41 = private unnamed_addr constant [14 x i8] c"HPE_CB_status\00", align 1
@.str42 = private unnamed_addr constant [30 x i8] c"the on_status callback failed\00", align 1
@.str43 = private unnamed_addr constant [22 x i8] c"HPE_INVALID_EOF_STATE\00", align 1
@.str44 = private unnamed_addr constant [35 x i8] c"stream ended at an unexpected time\00", align 1
@.str45 = private unnamed_addr constant [20 x i8] c"HPE_HEADER_OVERFLOW\00", align 1
@.str46 = private unnamed_addr constant [46 x i8] c"too many header bytes seen; overflow detected\00", align 1
@.str47 = private unnamed_addr constant [22 x i8] c"HPE_CLOSED_CONNECTION\00", align 1
@.str48 = private unnamed_addr constant [56 x i8] c"data received after completed connection: close message\00", align 1
@.str49 = private unnamed_addr constant [20 x i8] c"HPE_INVALID_VERSION\00", align 1
@.str50 = private unnamed_addr constant [21 x i8] c"invalid HTTP version\00", align 1
@.str51 = private unnamed_addr constant [19 x i8] c"HPE_INVALID_STATUS\00", align 1
@.str52 = private unnamed_addr constant [25 x i8] c"invalid HTTP status code\00", align 1
@.str53 = private unnamed_addr constant [19 x i8] c"HPE_INVALID_METHOD\00", align 1
@.str54 = private unnamed_addr constant [20 x i8] c"invalid HTTP method\00", align 1
@.str55 = private unnamed_addr constant [16 x i8] c"HPE_INVALID_URL\00", align 1
@.str56 = private unnamed_addr constant [12 x i8] c"invalid URL\00", align 1
@.str57 = private unnamed_addr constant [17 x i8] c"HPE_INVALID_HOST\00", align 1
@.str58 = private unnamed_addr constant [13 x i8] c"invalid host\00", align 1
@.str59 = private unnamed_addr constant [17 x i8] c"HPE_INVALID_PORT\00", align 1
@.str60 = private unnamed_addr constant [13 x i8] c"invalid port\00", align 1
@.str61 = private unnamed_addr constant [17 x i8] c"HPE_INVALID_PATH\00", align 1
@.str62 = private unnamed_addr constant [13 x i8] c"invalid path\00", align 1
@.str63 = private unnamed_addr constant [25 x i8] c"HPE_INVALID_QUERY_STRING\00", align 1
@.str64 = private unnamed_addr constant [21 x i8] c"invalid query string\00", align 1
@.str65 = private unnamed_addr constant [21 x i8] c"HPE_INVALID_FRAGMENT\00", align 1
@.str66 = private unnamed_addr constant [17 x i8] c"invalid fragment\00", align 1
@.str67 = private unnamed_addr constant [16 x i8] c"HPE_LF_EXPECTED\00", align 1
@.str68 = private unnamed_addr constant [22 x i8] c"LF character expected\00", align 1
@.str69 = private unnamed_addr constant [25 x i8] c"HPE_INVALID_HEADER_TOKEN\00", align 1
@.str70 = private unnamed_addr constant [28 x i8] c"invalid character in header\00", align 1
@.str71 = private unnamed_addr constant [27 x i8] c"HPE_INVALID_CONTENT_LENGTH\00", align 1
@.str72 = private unnamed_addr constant [43 x i8] c"invalid character in content-length header\00", align 1
@.str73 = private unnamed_addr constant [23 x i8] c"HPE_INVALID_CHUNK_SIZE\00", align 1
@.str74 = private unnamed_addr constant [39 x i8] c"invalid character in chunk size header\00", align 1
@.str75 = private unnamed_addr constant [21 x i8] c"HPE_INVALID_CONSTANT\00", align 1
@.str76 = private unnamed_addr constant [24 x i8] c"invalid constant string\00", align 1
@.str77 = private unnamed_addr constant [27 x i8] c"HPE_INVALID_INTERNAL_STATE\00", align 1
@.str78 = private unnamed_addr constant [38 x i8] c"encountered unexpected internal state\00", align 1
@.str79 = private unnamed_addr constant [11 x i8] c"HPE_STRICT\00", align 1
@.str80 = private unnamed_addr constant [29 x i8] c"strict mode assertion failed\00", align 1
@.str81 = private unnamed_addr constant [11 x i8] c"HPE_PAUSED\00", align 1
@.str82 = private unnamed_addr constant [17 x i8] c"parser is paused\00", align 1
@.str83 = private unnamed_addr constant [12 x i8] c"HPE_UNKNOWN\00", align 1
@.str84 = private unnamed_addr constant [26 x i8] c"an unknown error occurred\00", align 1
@normal_url_char = internal constant [32 x i8] c"\00\00\00\00\F6\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str85 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str86 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str87 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str88 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str89 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str90 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@.str91 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@.str92 = private unnamed_addr constant [6 x i8] c"TRACE\00", align 1
@.str93 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1
@.str94 = private unnamed_addr constant [5 x i8] c"LOCK\00", align 1
@.str95 = private unnamed_addr constant [6 x i8] c"MKCOL\00", align 1
@.str96 = private unnamed_addr constant [5 x i8] c"MOVE\00", align 1
@.str97 = private unnamed_addr constant [9 x i8] c"PROPFIND\00", align 1
@.str98 = private unnamed_addr constant [10 x i8] c"PROPPATCH\00", align 1
@.str99 = private unnamed_addr constant [7 x i8] c"SEARCH\00", align 1
@.str100 = private unnamed_addr constant [7 x i8] c"UNLOCK\00", align 1
@.str101 = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1
@.str102 = private unnamed_addr constant [11 x i8] c"MKACTIVITY\00", align 1
@.str103 = private unnamed_addr constant [9 x i8] c"CHECKOUT\00", align 1
@.str104 = private unnamed_addr constant [6 x i8] c"MERGE\00", align 1
@.str105 = private unnamed_addr constant [9 x i8] c"M-SEARCH\00", align 1
@.str106 = private unnamed_addr constant [7 x i8] c"NOTIFY\00", align 1
@.str107 = private unnamed_addr constant [10 x i8] c"SUBSCRIBE\00", align 1
@.str108 = private unnamed_addr constant [12 x i8] c"UNSUBSCRIBE\00", align 1
@.str109 = private unnamed_addr constant [6 x i8] c"PATCH\00", align 1
@.str110 = private unnamed_addr constant [6 x i8] c"PURGE\00", align 1
@.str111 = private unnamed_addr constant [11 x i8] c"MKCALENDAR\00", align 1
@.str112 = private unnamed_addr constant [22 x i8] c"klee_div_zero_check.c\00", align 1
@.str1113 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str2114 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1
@.str3115 = private unnamed_addr constant [8 x i8] c"IGNORED\00", align 1
@.str14116 = private unnamed_addr constant [16 x i8] c"overshift error\00", align 1
@.str25117 = private unnamed_addr constant [14 x i8] c"overshift.err\00", align 1
@.str6118 = private unnamed_addr constant [13 x i8] c"klee_range.c\00", align 1
@.str17119 = private unnamed_addr constant [14 x i8] c"invalid range\00", align 1
@.str28120 = private unnamed_addr constant [5 x i8] c"user\00", align 1

define i64 @http_parser_execute(%struct.http_parser* %parser, %struct.http_parser_settings* %settings, i8* %data, i64 %len) nounwind uwtable {
entry:
  %retval = alloca i64, align 8
  %parser.addr = alloca %struct.http_parser*, align 8
  %settings.addr = alloca %struct.http_parser_settings*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %c = alloca i8, align 1
  %ch = alloca i8, align 1
  %unhex_val = alloca i8, align 1
  %p = alloca i8*, align 8
  %header_field_mark = alloca i8*, align 8
  %header_value_mark = alloca i8*, align 8
  %url_mark = alloca i8*, align 8
  %body_mark = alloca i8*, align 8
  %status_mark = alloca i8*, align 8
  %p_state = alloca i32, align 4
  %matcher = alloca i8*, align 8
  %start = alloca i8*, align 8
  %start1891 = alloca i8*, align 8
  %h_state = alloca i32, align 4
  %p_cr = alloca i8*, align 8
  %p_lf = alloca i8*, align 8
  %limit = alloca i64, align 8
  %t = alloca i64, align 8
  %to_read = alloca i64, align 8
  %t3163 = alloca i64, align 8
  %to_read3254 = alloca i64, align 8
  store %struct.http_parser* %parser, %struct.http_parser** %parser.addr, align 8
  store %struct.http_parser_settings* %settings, %struct.http_parser_settings** %settings.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8** %data.addr, align 8, !dbg !464
  store i8* %0, i8** %p, align 8, !dbg !464
  store i8* null, i8** %header_field_mark, align 8, !dbg !466
  store i8* null, i8** %header_value_mark, align 8, !dbg !467
  store i8* null, i8** %url_mark, align 8, !dbg !468
  store i8* null, i8** %body_mark, align 8, !dbg !469
  store i8* null, i8** %status_mark, align 8, !dbg !470
  %1 = load %struct.http_parser** %parser.addr, align 8, !dbg !471
  %2 = bitcast %struct.http_parser* %1 to i32*, !dbg !471
  %3 = load i32* %2, align 8, !dbg !471
  %int_cast_to_i64 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !471
  %4 = lshr i32 %3, 9, !dbg !471
  %bf.clear = and i32 %4, 127, !dbg !471
  store i32 %bf.clear, i32* %p_state, align 4, !dbg !471
  %5 = load %struct.http_parser** %parser.addr, align 8, !dbg !472
  %6 = bitcast %struct.http_parser* %5 to i8*, !dbg !472
  %bf.field.offs = getelementptr i8* %6, i32 20, !dbg !472
  %7 = bitcast i8* %bf.field.offs to i32*, !dbg !472
  %8 = load i32* %7, align 4, !dbg !472
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !472
  %9 = lshr i32 %8, 24, !dbg !472
  %bf.clear1 = and i32 %9, 127, !dbg !472
  %cmp = icmp ne i32 %bf.clear1, 0, !dbg !472
  br i1 %cmp, label %if.then, label %if.end, !dbg !472

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, !dbg !473
  br label %do.end3744, !dbg !473

if.end:                                           ; preds = %entry
  %10 = load i64* %len.addr, align 8, !dbg !475
  %cmp2 = icmp eq i64 %10, 0, !dbg !475
  %11 = load i32* %p_state, align 4, !dbg !476
  br i1 %cmp2, label %if.then3, label %if.end44, !dbg !475

if.then3:                                         ; preds = %if.end
  switch i32 %11, label %do.body41 [
    i32 61, label %do.body
    i32 1, label %sw.bb40
    i32 2, label %sw.bb40
    i32 4, label %sw.bb40
    i32 18, label %sw.bb40
  ], !dbg !476

do.body:                                          ; preds = %if.then3
  %12 = load %struct.http_parser** %parser.addr, align 8, !dbg !478
  %13 = bitcast %struct.http_parser* %12 to i8*, !dbg !478
  %bf.field.offs4 = getelementptr i8* %13, i32 20, !dbg !478
  %14 = bitcast i8* %bf.field.offs4 to i32*, !dbg !478
  %15 = load i32* %14, align 4, !dbg !478
  %int_cast_to_i642 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i642), !dbg !478
  %16 = lshr i32 %15, 24, !dbg !478
  %bf.clear5 = and i32 %16, 127, !dbg !478
  %cmp6 = icmp eq i32 %bf.clear5, 0, !dbg !478
  br i1 %cmp6, label %cond.end, label %cond.false, !dbg !478

cond.false:                                       ; preds = %do.body
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 655, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0))
  unreachable, !dbg !478

cond.end:                                         ; preds = %do.body
  %17 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !478
  %on_message_complete = getelementptr inbounds %struct.http_parser_settings* %17, i32 0, i32 7, !dbg !478
  %18 = load i32 (%struct.http_parser*)** %on_message_complete, align 8, !dbg !478
  %tobool = icmp ne i32 (%struct.http_parser*)* %18, null, !dbg !478
  %lnot = xor i1 %tobool, true, !dbg !478
  %lnot7 = xor i1 %lnot, true, !dbg !478
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !478
  %conv = sext i32 %lnot.ext to i64, !dbg !478
  %tobool8 = icmp ne i64 %conv, 0, !dbg !478
  br i1 %tobool8, label %if.then9, label %do.end39, !dbg !478

if.then9:                                         ; preds = %cond.end
  %19 = load i32* %p_state, align 4, !dbg !481
  %20 = load %struct.http_parser** %parser.addr, align 8, !dbg !481
  %bf.value = and i32 %19, 127, !dbg !481
  %21 = bitcast %struct.http_parser* %20 to i32*, !dbg !481
  %22 = and i32 %bf.value, 127, !dbg !481
  %int_cast_to_i643 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i643), !dbg !481
  %23 = shl i32 %22, 9, !dbg !481
  %24 = load i32* %21, align 8, !dbg !481
  %25 = and i32 %24, -65025, !dbg !481
  %26 = or i32 %25, %23, !dbg !481
  store i32 %26, i32* %21, align 8, !dbg !481
  %27 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !481
  %on_message_complete10 = getelementptr inbounds %struct.http_parser_settings* %27, i32 0, i32 7, !dbg !481
  %28 = load i32 (%struct.http_parser*)** %on_message_complete10, align 8, !dbg !481
  %29 = load %struct.http_parser** %parser.addr, align 8, !dbg !481
  %call = call i32 %28(%struct.http_parser* %29), !dbg !481
  %cmp11 = icmp ne i32 0, %call, !dbg !481
  %lnot13 = xor i1 %cmp11, true, !dbg !481
  %lnot15 = xor i1 %lnot13, true, !dbg !481
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !481
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !481
  %tobool19 = icmp ne i64 %conv17, 0, !dbg !481
  br i1 %tobool19, label %do.body21, label %if.end23, !dbg !481

do.body21:                                        ; preds = %if.then9
  %30 = load %struct.http_parser** %parser.addr, align 8, !dbg !483
  %31 = bitcast %struct.http_parser* %30 to i8*, !dbg !483
  %bf.field.offs22 = getelementptr i8* %31, i32 20, !dbg !483
  %32 = bitcast i8* %bf.field.offs22 to i32*, !dbg !483
  %33 = load i32* %32, align 4, !dbg !483
  %34 = and i32 %33, -2130706433, !dbg !483
  %35 = or i32 %34, 117440512, !dbg !483
  store i32 %35, i32* %32, align 4, !dbg !483
  br label %if.end23, !dbg !483

if.end23:                                         ; preds = %do.body21, %if.then9
  %36 = load %struct.http_parser** %parser.addr, align 8, !dbg !483
  %37 = bitcast %struct.http_parser* %36 to i32*, !dbg !483
  %38 = load i32* %37, align 8, !dbg !483
  %int_cast_to_i644 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i644), !dbg !483
  %39 = lshr i32 %38, 9, !dbg !483
  %bf.clear24 = and i32 %39, 127, !dbg !483
  store i32 %bf.clear24, i32* %p_state, align 4, !dbg !483
  %40 = load %struct.http_parser** %parser.addr, align 8, !dbg !483
  %41 = bitcast %struct.http_parser* %40 to i8*, !dbg !483
  %bf.field.offs25 = getelementptr i8* %41, i32 20, !dbg !483
  %42 = bitcast i8* %bf.field.offs25 to i32*, !dbg !483
  %43 = load i32* %42, align 4, !dbg !483
  %int_cast_to_i645 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i645), !dbg !483
  %44 = lshr i32 %43, 24, !dbg !483
  %bf.clear26 = and i32 %44, 127, !dbg !483
  %cmp27 = icmp ne i32 %bf.clear26, 0, !dbg !483
  %lnot29 = xor i1 %cmp27, true, !dbg !483
  %lnot31 = xor i1 %lnot29, true, !dbg !483
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !483
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !483
  %tobool35 = icmp ne i64 %conv33, 0, !dbg !483
  br i1 %tobool35, label %if.then36, label %do.end39, !dbg !483

if.then36:                                        ; preds = %if.end23
  %45 = load i8** %p, align 8, !dbg !486
  %46 = load i8** %data.addr, align 8, !dbg !486
  %sub.ptr.lhs.cast = ptrtoint i8* %45 to i64, !dbg !486
  %sub.ptr.rhs.cast = ptrtoint i8* %46 to i64, !dbg !486
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !486
  store i64 %sub.ptr.sub, i64* %retval, !dbg !486
  br label %do.end3744, !dbg !486

do.end39:                                         ; preds = %cond.end, %if.end23
  store i64 0, i64* %retval, !dbg !488
  br label %do.end3744, !dbg !488

sw.bb40:                                          ; preds = %if.then3, %if.then3, %if.then3, %if.then3
  store i64 0, i64* %retval, !dbg !489
  br label %do.end3744, !dbg !489

do.body41:                                        ; preds = %if.then3
  %47 = load %struct.http_parser** %parser.addr, align 8, !dbg !490
  %48 = bitcast %struct.http_parser* %47 to i8*, !dbg !490
  %bf.field.offs42 = getelementptr i8* %48, i32 20, !dbg !490
  %49 = bitcast i8* %bf.field.offs42 to i32*, !dbg !490
  %50 = load i32* %49, align 4, !dbg !490
  %51 = and i32 %50, -2130706433, !dbg !490
  %52 = or i32 %51, 150994944, !dbg !490
  store i32 %52, i32* %49, align 4, !dbg !490
  store i64 1, i64* %retval, !dbg !492
  br label %do.end3744, !dbg !492

if.end44:                                         ; preds = %if.end
  %cmp45 = icmp eq i32 %11, 43, !dbg !493
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !493

if.then47:                                        ; preds = %if.end44
  %53 = load i8** %data.addr, align 8, !dbg !494
  store i8* %53, i8** %header_field_mark, align 8, !dbg !494
  br label %if.end48, !dbg !494

if.end48:                                         ; preds = %if.then47, %if.end44
  %54 = load i32* %p_state, align 4, !dbg !495
  %cmp49 = icmp eq i32 %54, 48, !dbg !495
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !495

if.then51:                                        ; preds = %if.end48
  %55 = load i8** %data.addr, align 8, !dbg !496
  store i8* %55, i8** %header_value_mark, align 8, !dbg !496
  br label %if.end52, !dbg !496

if.end52:                                         ; preds = %if.then51, %if.end48
  %56 = load i32* %p_state, align 4, !dbg !497
  switch i32 %56, label %sw.epilog [
    i32 27, label %sw.bb53
    i32 21, label %sw.bb53
    i32 22, label %sw.bb53
    i32 23, label %sw.bb53
    i32 24, label %sw.bb53
    i32 25, label %sw.bb53
    i32 26, label %sw.bb53
    i32 28, label %sw.bb53
    i32 29, label %sw.bb53
    i32 30, label %sw.bb53
    i32 31, label %sw.bb53
    i32 16, label %sw.bb54
  ], !dbg !497

sw.bb53:                                          ; preds = %if.end52, %if.end52, %if.end52, %if.end52, %if.end52, %if.end52, %if.end52, %if.end52, %if.end52, %if.end52, %if.end52
  %57 = load i8** %data.addr, align 8, !dbg !498
  store i8* %57, i8** %url_mark, align 8, !dbg !498
  br label %sw.epilog, !dbg !500

sw.bb54:                                          ; preds = %if.end52
  %58 = load i8** %data.addr, align 8, !dbg !501
  store i8* %58, i8** %status_mark, align 8, !dbg !501
  br label %sw.epilog, !dbg !502

sw.epilog:                                        ; preds = %if.end52, %sw.bb54, %sw.bb53
  %59 = load i8** %data.addr, align 8, !dbg !503
  store i8* %59, i8** %p, align 8, !dbg !503
  br label %for.cond, !dbg !503

for.cond:                                         ; preds = %for.inc3405, %sw.epilog
  %60 = load i8** %p, align 8, !dbg !503
  %61 = load i8** %data.addr, align 8, !dbg !503
  %62 = load i64* %len.addr, align 8, !dbg !503
  %add.ptr = getelementptr inbounds i8* %61, i64 %62, !dbg !503
  %cmp56 = icmp ne i8* %60, %add.ptr, !dbg !503
  br i1 %cmp56, label %for.body, label %for.end3407, !dbg !503

for.body:                                         ; preds = %for.cond
  %63 = load i8** %p, align 8, !dbg !505
  %64 = load i8* %63, align 1, !dbg !505
  store i8 %64, i8* %ch, align 1, !dbg !505
  %65 = load i32* %p_state, align 4, !dbg !507
  %cmp58 = icmp ule i32 %65, 56, !dbg !507
  br i1 %cmp58, label %do.body61, label %reexecute, !dbg !507

do.body61:                                        ; preds = %for.body
  %66 = load %struct.http_parser** %parser.addr, align 8, !dbg !508
  %nread = getelementptr inbounds %struct.http_parser* %66, i32 0, i32 4, !dbg !508
  %67 = load i32* %nread, align 4, !dbg !508
  %add = add i32 %67, 1, !dbg !508
  store i32 %add, i32* %nread, align 4, !dbg !508
  %68 = load %struct.http_parser** %parser.addr, align 8, !dbg !508
  %nread62 = getelementptr inbounds %struct.http_parser* %68, i32 0, i32 4, !dbg !508
  %69 = load i32* %nread62, align 4, !dbg !508
  %cmp63 = icmp ugt i32 %69, 81920, !dbg !508
  %lnot65 = xor i1 %cmp63, true, !dbg !508
  %lnot67 = xor i1 %lnot65, true, !dbg !508
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !508
  %conv69 = sext i32 %lnot.ext68 to i64, !dbg !508
  %tobool71 = icmp ne i64 %conv69, 0, !dbg !508
  br i1 %tobool71, label %do.body73, label %reexecute, !dbg !508

do.body73:                                        ; preds = %do.body61
  %70 = load %struct.http_parser** %parser.addr, align 8, !dbg !510
  %71 = bitcast %struct.http_parser* %70 to i8*, !dbg !510
  %bf.field.offs74 = getelementptr i8* %71, i32 20, !dbg !510
  %72 = bitcast i8* %bf.field.offs74 to i32*, !dbg !510
  %73 = load i32* %72, align 4, !dbg !510
  %74 = and i32 %73, -2130706433, !dbg !510
  %75 = or i32 %74, 167772160, !dbg !510
  store i32 %75, i32* %72, align 4, !dbg !510
  br label %error, !dbg !510

reexecute:                                        ; preds = %if.end3052, %cond.end3002, %if.end2625, %if.end2510, %cond.end2460, %if.end2050, %cond.end2000, %for.body, %do.body61, %sw.epilog2407, %if.then2387, %if.then1498, %if.else
  %76 = load i32* %p_state, align 4, !dbg !513
  switch i32 %76, label %sw.default3403 [
    i32 1, label %sw.bb79
    i32 2, label %sw.bb98
    i32 3, label %sw.bb166
    i32 4, label %sw.bb189
    i32 5, label %do.body255
    i32 6, label %do.body266
    i32 7, label %do.body277
    i32 8, label %do.body288
    i32 9, label %sw.bb298
    i32 10, label %sw.bb321
    i32 11, label %sw.bb363
    i32 12, label %sw.bb387
    i32 13, label %sw.bb441
    i32 14, label %sw.bb463
    i32 15, label %sw.bb510
    i32 16, label %sw.bb526
    i32 17, label %do.body659
    i32 18, label %sw.bb669
    i32 19, label %sw.bb795
    i32 20, label %sw.bb1053
    i32 21, label %sw.bb1085
    i32 22, label %sw.bb1085
    i32 23, label %sw.bb1085
    i32 24, label %sw.bb1085
    i32 25, label %sw.bb1108
    i32 26, label %sw.bb1108
    i32 27, label %sw.bb1108
    i32 28, label %sw.bb1108
    i32 29, label %sw.bb1108
    i32 30, label %sw.bb1108
    i32 31, label %sw.bb1108
    i32 32, label %sw.bb1255
    i32 33, label %do.body1265
    i32 34, label %do.body1276
    i32 35, label %do.body1287
    i32 36, label %do.body1298
    i32 37, label %sw.bb1308
    i32 38, label %sw.bb1333
    i32 39, label %sw.bb1387
    i32 40, label %sw.bb1414
    i32 41, label %sw.bb1473
    i32 42, label %sw.bb1489
    i32 43, label %sw.bb1529
    i32 44, label %sw.bb1800
    i32 47, label %do.body1821
    i32 48, label %sw.bb1890
    i32 50, label %do.body2369
    i32 49, label %sw.bb2379
    i32 45, label %do.body2409
    i32 46, label %sw.bb2419
    i32 55, label %do.body2514
    i32 56, label %do.body2639
    i32 60, label %sw.bb2955
    i32 61, label %do.body3057
    i32 62, label %sw.bb3064
    i32 51, label %sw.bb3130
    i32 52, label %sw.bb3162
    i32 53, label %sw.bb3214
    i32 54, label %sw.bb3226
    i32 57, label %sw.bb3253
    i32 58, label %sw.bb3301
    i32 59, label %sw.bb3385
  ], !dbg !513

sw.bb79:                                          ; preds = %reexecute
  %77 = load i8* %ch, align 1, !dbg !514
  %conv80 = sext i8 %77 to i32, !dbg !514
  %cmp81 = icmp eq i32 %conv80, 13, !dbg !514
  br i1 %cmp81, label %lor.end, label %lor.rhs, !dbg !514

lor.rhs:                                          ; preds = %sw.bb79
  %78 = load i8* %ch, align 1, !dbg !514
  %conv83 = sext i8 %78 to i32, !dbg !514
  %cmp84 = icmp eq i32 %conv83, 10, !dbg !514
  br label %lor.end, !dbg !514

lor.end:                                          ; preds = %lor.rhs, %sw.bb79
  %79 = phi i1 [ true, %sw.bb79 ], [ %cmp84, %lor.rhs ]
  %lnot86 = xor i1 %79, true, !dbg !514
  %lnot88 = xor i1 %lnot86, true, !dbg !514
  %lnot.ext89 = zext i1 %lnot88 to i32, !dbg !514
  %conv90 = sext i32 %lnot.ext89 to i64, !dbg !514
  %tobool92 = icmp ne i64 %conv90, 0, !dbg !514
  br i1 %tobool92, label %for.inc3405, label %do.body95, !dbg !514

do.body95:                                        ; preds = %lor.end
  %80 = load %struct.http_parser** %parser.addr, align 8, !dbg !516
  %81 = bitcast %struct.http_parser* %80 to i8*, !dbg !516
  %bf.field.offs96 = getelementptr i8* %81, i32 20, !dbg !516
  %82 = bitcast i8* %bf.field.offs96 to i32*, !dbg !516
  %83 = load i32* %82, align 4, !dbg !516
  %84 = and i32 %83, -2130706433, !dbg !516
  %85 = or i32 %84, 184549376, !dbg !516
  store i32 %85, i32* %82, align 4, !dbg !516
  br label %error, !dbg !518

sw.bb98:                                          ; preds = %reexecute
  %86 = load i8* %ch, align 1, !dbg !519
  %conv99 = sext i8 %86 to i32, !dbg !519
  %cmp100 = icmp eq i32 %conv99, 13, !dbg !519
  br i1 %cmp100, label %for.inc3405, label %lor.lhs.false, !dbg !519

lor.lhs.false:                                    ; preds = %sw.bb98
  %87 = load i8* %ch, align 1, !dbg !519
  %conv102 = sext i8 %87 to i32, !dbg !519
  %cmp103 = icmp eq i32 %conv102, 10, !dbg !519
  br i1 %cmp103, label %for.inc3405, label %if.end106, !dbg !519

if.end106:                                        ; preds = %lor.lhs.false
  %88 = load %struct.http_parser** %parser.addr, align 8, !dbg !521
  %89 = bitcast %struct.http_parser* %88 to i32*, !dbg !521
  %90 = load i32* %89, align 8, !dbg !521
  %91 = and i32 %90, -509, !dbg !521
  store i32 %91, i32* %89, align 8, !dbg !521
  %92 = load %struct.http_parser** %parser.addr, align 8, !dbg !522
  %content_length = getelementptr inbounds %struct.http_parser* %92, i32 0, i32 5, !dbg !522
  store i64 -1, i64* %content_length, align 8, !dbg !522
  %93 = load i8* %ch, align 1, !dbg !523
  %conv107 = sext i8 %93 to i32, !dbg !523
  %cmp108 = icmp eq i32 %conv107, 72, !dbg !523
  br i1 %cmp108, label %if.then110, label %if.else, !dbg !523

if.then110:                                       ; preds = %if.end106
  store i32 3, i32* %p_state, align 4, !dbg !524
  %94 = load %struct.http_parser** %parser.addr, align 8, !dbg !526
  %95 = bitcast %struct.http_parser* %94 to i8*, !dbg !526
  %bf.field.offs112 = getelementptr i8* %95, i32 20, !dbg !526
  %96 = bitcast i8* %bf.field.offs112 to i32*, !dbg !526
  %97 = load i32* %96, align 4, !dbg !526
  %int_cast_to_i646 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i646), !dbg !526
  %98 = lshr i32 %97, 24, !dbg !526
  %bf.clear113 = and i32 %98, 127, !dbg !526
  %cmp114 = icmp eq i32 %bf.clear113, 0, !dbg !526
  br i1 %cmp114, label %cond.end118, label %cond.false117, !dbg !526

cond.false117:                                    ; preds = %if.then110
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 725, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0))
  unreachable, !dbg !526

cond.end118:                                      ; preds = %if.then110
  %99 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !526
  %on_message_begin = getelementptr inbounds %struct.http_parser_settings* %99, i32 0, i32 0, !dbg !526
  %100 = load i32 (%struct.http_parser*)** %on_message_begin, align 8, !dbg !526
  %tobool119 = icmp ne i32 (%struct.http_parser*)* %100, null, !dbg !526
  %lnot120 = xor i1 %tobool119, true, !dbg !526
  %lnot122 = xor i1 %lnot120, true, !dbg !526
  %lnot.ext123 = zext i1 %lnot122 to i32, !dbg !526
  %conv124 = sext i32 %lnot.ext123 to i64, !dbg !526
  %tobool126 = icmp ne i64 %conv124, 0, !dbg !526
  br i1 %tobool126, label %if.then127, label %for.inc3405, !dbg !526

if.then127:                                       ; preds = %cond.end118
  %101 = load i32* %p_state, align 4, !dbg !528
  %102 = load %struct.http_parser** %parser.addr, align 8, !dbg !528
  %bf.value128 = and i32 %101, 127, !dbg !528
  %103 = bitcast %struct.http_parser* %102 to i32*, !dbg !528
  %104 = and i32 %bf.value128, 127, !dbg !528
  %int_cast_to_i647 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i647), !dbg !528
  %105 = shl i32 %104, 9, !dbg !528
  %106 = load i32* %103, align 8, !dbg !528
  %107 = and i32 %106, -65025, !dbg !528
  %108 = or i32 %107, %105, !dbg !528
  store i32 %108, i32* %103, align 8, !dbg !528
  %109 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !528
  %on_message_begin129 = getelementptr inbounds %struct.http_parser_settings* %109, i32 0, i32 0, !dbg !528
  %110 = load i32 (%struct.http_parser*)** %on_message_begin129, align 8, !dbg !528
  %111 = load %struct.http_parser** %parser.addr, align 8, !dbg !528
  %call130 = call i32 %110(%struct.http_parser* %111), !dbg !528
  %cmp131 = icmp ne i32 0, %call130, !dbg !528
  %lnot133 = xor i1 %cmp131, true, !dbg !528
  %lnot135 = xor i1 %lnot133, true, !dbg !528
  %lnot.ext136 = zext i1 %lnot135 to i32, !dbg !528
  %conv137 = sext i32 %lnot.ext136 to i64, !dbg !528
  %tobool139 = icmp ne i64 %conv137, 0, !dbg !528
  br i1 %tobool139, label %do.body141, label %if.end144, !dbg !528

do.body141:                                       ; preds = %if.then127
  %112 = load %struct.http_parser** %parser.addr, align 8, !dbg !530
  %113 = bitcast %struct.http_parser* %112 to i8*, !dbg !530
  %bf.field.offs142 = getelementptr i8* %113, i32 20, !dbg !530
  %114 = bitcast i8* %bf.field.offs142 to i32*, !dbg !530
  %115 = load i32* %114, align 4, !dbg !530
  %116 = and i32 %115, -2130706433, !dbg !530
  %117 = or i32 %116, 16777216, !dbg !530
  store i32 %117, i32* %114, align 4, !dbg !530
  br label %if.end144, !dbg !530

if.end144:                                        ; preds = %do.body141, %if.then127
  %118 = load %struct.http_parser** %parser.addr, align 8, !dbg !530
  %119 = bitcast %struct.http_parser* %118 to i32*, !dbg !530
  %120 = load i32* %119, align 8, !dbg !530
  %int_cast_to_i648 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i648), !dbg !530
  %121 = lshr i32 %120, 9, !dbg !530
  %bf.clear145 = and i32 %121, 127, !dbg !530
  store i32 %bf.clear145, i32* %p_state, align 4, !dbg !530
  %122 = load %struct.http_parser** %parser.addr, align 8, !dbg !530
  %123 = bitcast %struct.http_parser* %122 to i8*, !dbg !530
  %bf.field.offs146 = getelementptr i8* %123, i32 20, !dbg !530
  %124 = bitcast i8* %bf.field.offs146 to i32*, !dbg !530
  %125 = load i32* %124, align 4, !dbg !530
  %int_cast_to_i649 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i649), !dbg !530
  %126 = lshr i32 %125, 24, !dbg !530
  %bf.clear147 = and i32 %126, 127, !dbg !530
  %cmp148 = icmp ne i32 %bf.clear147, 0, !dbg !530
  %lnot150 = xor i1 %cmp148, true, !dbg !530
  %lnot152 = xor i1 %lnot150, true, !dbg !530
  %lnot.ext153 = zext i1 %lnot152 to i32, !dbg !530
  %conv154 = sext i32 %lnot.ext153 to i64, !dbg !530
  %tobool156 = icmp ne i64 %conv154, 0, !dbg !530
  br i1 %tobool156, label %if.then157, label %for.inc3405, !dbg !530

if.then157:                                       ; preds = %if.end144
  %127 = load i8** %p, align 8, !dbg !533
  %128 = load i8** %data.addr, align 8, !dbg !533
  %sub.ptr.lhs.cast158 = ptrtoint i8* %127 to i64, !dbg !533
  %sub.ptr.rhs.cast159 = ptrtoint i8* %128 to i64, !dbg !533
  %sub.ptr.sub160 = sub i64 %sub.ptr.lhs.cast158, %sub.ptr.rhs.cast159, !dbg !533
  %add161 = add nsw i64 %sub.ptr.sub160, 1, !dbg !533
  store i64 %add161, i64* %retval, !dbg !533
  br label %do.end3744, !dbg !533

if.else:                                          ; preds = %if.end106
  %129 = load %struct.http_parser** %parser.addr, align 8, !dbg !535
  %130 = bitcast %struct.http_parser* %129 to i32*, !dbg !535
  %131 = load i32* %130, align 8, !dbg !535
  %132 = and i32 %131, -4, !dbg !535
  store i32 %132, i32* %130, align 8, !dbg !535
  store i32 18, i32* %p_state, align 4, !dbg !537
  br label %reexecute, !dbg !538

sw.bb166:                                         ; preds = %reexecute
  %133 = load i8* %ch, align 1, !dbg !539
  %conv167 = sext i8 %133 to i32, !dbg !539
  %cmp168 = icmp eq i32 %conv167, 84, !dbg !539
  br i1 %cmp168, label %if.then170, label %if.else171, !dbg !539

if.then170:                                       ; preds = %sw.bb166
  %134 = load %struct.http_parser** %parser.addr, align 8, !dbg !540
  %135 = bitcast %struct.http_parser* %134 to i32*, !dbg !540
  %136 = load i32* %135, align 8, !dbg !540
  %137 = and i32 %136, -4, !dbg !540
  %138 = or i32 %137, 1, !dbg !540
  store i32 %138, i32* %135, align 8, !dbg !540
  store i32 6, i32* %p_state, align 4, !dbg !542
  br label %for.inc3405, !dbg !543

if.else171:                                       ; preds = %sw.bb166
  %139 = load i8* %ch, align 1, !dbg !544
  %conv172 = sext i8 %139 to i32, !dbg !544
  %cmp173 = icmp ne i32 %conv172, 69, !dbg !544
  %lnot175 = xor i1 %cmp173, true, !dbg !544
  %lnot177 = xor i1 %lnot175, true, !dbg !544
  %lnot.ext178 = zext i1 %lnot177 to i32, !dbg !544
  %conv179 = sext i32 %lnot.ext178 to i64, !dbg !544
  %tobool181 = icmp ne i64 %conv179, 0, !dbg !544
  %140 = load %struct.http_parser** %parser.addr, align 8, !dbg !546
  br i1 %tobool181, label %do.body183, label %if.end186, !dbg !544

do.body183:                                       ; preds = %if.else171
  %141 = bitcast %struct.http_parser* %140 to i8*, !dbg !546
  %bf.field.offs184 = getelementptr i8* %141, i32 20, !dbg !546
  %142 = bitcast i8* %bf.field.offs184 to i32*, !dbg !546
  %143 = load i32* %142, align 4, !dbg !546
  %144 = and i32 %143, -2130706433, !dbg !546
  %145 = or i32 %144, 419430400, !dbg !546
  store i32 %145, i32* %142, align 4, !dbg !546
  br label %error, !dbg !549

if.end186:                                        ; preds = %if.else171
  %146 = bitcast %struct.http_parser* %140 to i32*, !dbg !550
  %147 = load i32* %146, align 8, !dbg !550
  %148 = and i32 %147, -4, !dbg !550
  store i32 %148, i32* %146, align 8, !dbg !550
  %149 = load %struct.http_parser** %parser.addr, align 8, !dbg !551
  %150 = bitcast %struct.http_parser* %149 to i8*, !dbg !551
  %bf.field.offs187 = getelementptr i8* %150, i32 20, !dbg !551
  %151 = bitcast i8* %bf.field.offs187 to i32*, !dbg !551
  %152 = load i32* %151, align 4, !dbg !551
  %153 = and i32 %152, -16711681, !dbg !551
  %154 = or i32 %153, 131072, !dbg !551
  store i32 %154, i32* %151, align 4, !dbg !551
  %155 = load %struct.http_parser** %parser.addr, align 8, !dbg !552
  %156 = bitcast %struct.http_parser* %155 to i32*, !dbg !552
  %157 = load i32* %156, align 8, !dbg !552
  %158 = and i32 %157, 16777215, !dbg !552
  %159 = or i32 %158, 33554432, !dbg !552
  store i32 %159, i32* %156, align 8, !dbg !552
  store i32 19, i32* %p_state, align 4, !dbg !553
  br label %for.inc3405

sw.bb189:                                         ; preds = %reexecute
  %160 = load %struct.http_parser** %parser.addr, align 8, !dbg !554
  %161 = bitcast %struct.http_parser* %160 to i32*, !dbg !554
  %162 = load i32* %161, align 8, !dbg !554
  %163 = and i32 %162, -509, !dbg !554
  store i32 %163, i32* %161, align 8, !dbg !554
  %164 = load %struct.http_parser** %parser.addr, align 8, !dbg !556
  %content_length190 = getelementptr inbounds %struct.http_parser* %164, i32 0, i32 5, !dbg !556
  store i64 -1, i64* %content_length190, align 8, !dbg !556
  %165 = load i8* %ch, align 1, !dbg !557
  %conv191 = sext i8 %165 to i32, !dbg !557
  switch i32 %conv191, label %do.body195 [
    i32 72, label %sw.bb192
    i32 13, label %do.body199
    i32 10, label %do.body199
  ], !dbg !557

sw.bb192:                                         ; preds = %sw.bb189
  store i32 5, i32* %p_state, align 4, !dbg !558
  br label %do.body199, !dbg !560

do.body195:                                       ; preds = %sw.bb189
  %166 = load %struct.http_parser** %parser.addr, align 8, !dbg !561
  %167 = bitcast %struct.http_parser* %166 to i8*, !dbg !561
  %bf.field.offs196 = getelementptr i8* %167, i32 20, !dbg !561
  %168 = bitcast i8* %bf.field.offs196 to i32*, !dbg !561
  %169 = load i32* %168, align 4, !dbg !561
  %170 = and i32 %169, -2130706433, !dbg !561
  %171 = or i32 %170, 419430400, !dbg !561
  store i32 %171, i32* %168, align 4, !dbg !561
  br label %error, !dbg !563

do.body199:                                       ; preds = %sw.bb192, %sw.bb189, %sw.bb189
  %172 = load %struct.http_parser** %parser.addr, align 8, !dbg !564
  %173 = bitcast %struct.http_parser* %172 to i8*, !dbg !564
  %bf.field.offs200 = getelementptr i8* %173, i32 20, !dbg !564
  %174 = bitcast i8* %bf.field.offs200 to i32*, !dbg !564
  %175 = load i32* %174, align 4, !dbg !564
  %int_cast_to_i6410 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6410), !dbg !564
  %176 = lshr i32 %175, 24, !dbg !564
  %bf.clear201 = and i32 %176, 127, !dbg !564
  %cmp202 = icmp eq i32 %bf.clear201, 0, !dbg !564
  br i1 %cmp202, label %cond.end206, label %cond.false205, !dbg !564

cond.false205:                                    ; preds = %do.body199
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 771, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0))
  unreachable, !dbg !564

cond.end206:                                      ; preds = %do.body199
  %177 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !564
  %on_message_begin207 = getelementptr inbounds %struct.http_parser_settings* %177, i32 0, i32 0, !dbg !564
  %178 = load i32 (%struct.http_parser*)** %on_message_begin207, align 8, !dbg !564
  %tobool208 = icmp ne i32 (%struct.http_parser*)* %178, null, !dbg !564
  %lnot209 = xor i1 %tobool208, true, !dbg !564
  %lnot211 = xor i1 %lnot209, true, !dbg !564
  %lnot.ext212 = zext i1 %lnot211 to i32, !dbg !564
  %conv213 = sext i32 %lnot.ext212 to i64, !dbg !564
  %tobool215 = icmp ne i64 %conv213, 0, !dbg !564
  br i1 %tobool215, label %if.then216, label %for.inc3405, !dbg !564

if.then216:                                       ; preds = %cond.end206
  %179 = load i32* %p_state, align 4, !dbg !566
  %180 = load %struct.http_parser** %parser.addr, align 8, !dbg !566
  %bf.value217 = and i32 %179, 127, !dbg !566
  %181 = bitcast %struct.http_parser* %180 to i32*, !dbg !566
  %182 = and i32 %bf.value217, 127, !dbg !566
  %int_cast_to_i6411 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6411), !dbg !566
  %183 = shl i32 %182, 9, !dbg !566
  %184 = load i32* %181, align 8, !dbg !566
  %185 = and i32 %184, -65025, !dbg !566
  %186 = or i32 %185, %183, !dbg !566
  store i32 %186, i32* %181, align 8, !dbg !566
  %187 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !566
  %on_message_begin218 = getelementptr inbounds %struct.http_parser_settings* %187, i32 0, i32 0, !dbg !566
  %188 = load i32 (%struct.http_parser*)** %on_message_begin218, align 8, !dbg !566
  %189 = load %struct.http_parser** %parser.addr, align 8, !dbg !566
  %call219 = call i32 %188(%struct.http_parser* %189), !dbg !566
  %cmp220 = icmp ne i32 0, %call219, !dbg !566
  %lnot222 = xor i1 %cmp220, true, !dbg !566
  %lnot224 = xor i1 %lnot222, true, !dbg !566
  %lnot.ext225 = zext i1 %lnot224 to i32, !dbg !566
  %conv226 = sext i32 %lnot.ext225 to i64, !dbg !566
  %tobool228 = icmp ne i64 %conv226, 0, !dbg !566
  br i1 %tobool228, label %do.body230, label %if.end233, !dbg !566

do.body230:                                       ; preds = %if.then216
  %190 = load %struct.http_parser** %parser.addr, align 8, !dbg !568
  %191 = bitcast %struct.http_parser* %190 to i8*, !dbg !568
  %bf.field.offs231 = getelementptr i8* %191, i32 20, !dbg !568
  %192 = bitcast i8* %bf.field.offs231 to i32*, !dbg !568
  %193 = load i32* %192, align 4, !dbg !568
  %194 = and i32 %193, -2130706433, !dbg !568
  %195 = or i32 %194, 16777216, !dbg !568
  store i32 %195, i32* %192, align 4, !dbg !568
  br label %if.end233, !dbg !568

if.end233:                                        ; preds = %do.body230, %if.then216
  %196 = load %struct.http_parser** %parser.addr, align 8, !dbg !568
  %197 = bitcast %struct.http_parser* %196 to i32*, !dbg !568
  %198 = load i32* %197, align 8, !dbg !568
  %int_cast_to_i6412 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6412), !dbg !568
  %199 = lshr i32 %198, 9, !dbg !568
  %bf.clear234 = and i32 %199, 127, !dbg !568
  store i32 %bf.clear234, i32* %p_state, align 4, !dbg !568
  %200 = load %struct.http_parser** %parser.addr, align 8, !dbg !568
  %201 = bitcast %struct.http_parser* %200 to i8*, !dbg !568
  %bf.field.offs235 = getelementptr i8* %201, i32 20, !dbg !568
  %202 = bitcast i8* %bf.field.offs235 to i32*, !dbg !568
  %203 = load i32* %202, align 4, !dbg !568
  %int_cast_to_i6413 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6413), !dbg !568
  %204 = lshr i32 %203, 24, !dbg !568
  %bf.clear236 = and i32 %204, 127, !dbg !568
  %cmp237 = icmp ne i32 %bf.clear236, 0, !dbg !568
  %lnot239 = xor i1 %cmp237, true, !dbg !568
  %lnot241 = xor i1 %lnot239, true, !dbg !568
  %lnot.ext242 = zext i1 %lnot241 to i32, !dbg !568
  %conv243 = sext i32 %lnot.ext242 to i64, !dbg !568
  %tobool245 = icmp ne i64 %conv243, 0, !dbg !568
  br i1 %tobool245, label %if.then246, label %for.inc3405, !dbg !568

if.then246:                                       ; preds = %if.end233
  %205 = load i8** %p, align 8, !dbg !571
  %206 = load i8** %data.addr, align 8, !dbg !571
  %sub.ptr.lhs.cast247 = ptrtoint i8* %205 to i64, !dbg !571
  %sub.ptr.rhs.cast248 = ptrtoint i8* %206 to i64, !dbg !571
  %sub.ptr.sub249 = sub i64 %sub.ptr.lhs.cast247, %sub.ptr.rhs.cast248, !dbg !571
  %add250 = add nsw i64 %sub.ptr.sub249, 1, !dbg !571
  store i64 %add250, i64* %retval, !dbg !571
  br label %do.end3744, !dbg !571

do.body255:                                       ; preds = %reexecute
  %207 = load i8* %ch, align 1, !dbg !573
  %conv256 = sext i8 %207 to i32, !dbg !573
  %cmp257 = icmp ne i32 %conv256, 84, !dbg !573
  br i1 %cmp257, label %do.body260, label %do.end264, !dbg !573

do.body260:                                       ; preds = %do.body255
  %208 = load %struct.http_parser** %parser.addr, align 8, !dbg !575
  %209 = bitcast %struct.http_parser* %208 to i8*, !dbg !575
  %bf.field.offs261 = getelementptr i8* %209, i32 20, !dbg !575
  %210 = bitcast i8* %bf.field.offs261 to i32*, !dbg !575
  %211 = load i32* %210, align 4, !dbg !575
  %212 = and i32 %211, -2130706433, !dbg !575
  %213 = or i32 %212, 452984832, !dbg !575
  store i32 %213, i32* %210, align 4, !dbg !575
  br label %error, !dbg !575

do.end264:                                        ; preds = %do.body255
  store i32 6, i32* %p_state, align 4, !dbg !578
  br label %for.inc3405, !dbg !579

do.body266:                                       ; preds = %reexecute
  %214 = load i8* %ch, align 1, !dbg !580
  %conv267 = sext i8 %214 to i32, !dbg !580
  %cmp268 = icmp ne i32 %conv267, 84, !dbg !580
  br i1 %cmp268, label %do.body271, label %do.end275, !dbg !580

do.body271:                                       ; preds = %do.body266
  %215 = load %struct.http_parser** %parser.addr, align 8, !dbg !582
  %216 = bitcast %struct.http_parser* %215 to i8*, !dbg !582
  %bf.field.offs272 = getelementptr i8* %216, i32 20, !dbg !582
  %217 = bitcast i8* %bf.field.offs272 to i32*, !dbg !582
  %218 = load i32* %217, align 4, !dbg !582
  %219 = and i32 %218, -2130706433, !dbg !582
  %220 = or i32 %219, 452984832, !dbg !582
  store i32 %220, i32* %217, align 4, !dbg !582
  br label %error, !dbg !582

do.end275:                                        ; preds = %do.body266
  store i32 7, i32* %p_state, align 4, !dbg !585
  br label %for.inc3405, !dbg !586

do.body277:                                       ; preds = %reexecute
  %221 = load i8* %ch, align 1, !dbg !587
  %conv278 = sext i8 %221 to i32, !dbg !587
  %cmp279 = icmp ne i32 %conv278, 80, !dbg !587
  br i1 %cmp279, label %do.body282, label %do.end286, !dbg !587

do.body282:                                       ; preds = %do.body277
  %222 = load %struct.http_parser** %parser.addr, align 8, !dbg !589
  %223 = bitcast %struct.http_parser* %222 to i8*, !dbg !589
  %bf.field.offs283 = getelementptr i8* %223, i32 20, !dbg !589
  %224 = bitcast i8* %bf.field.offs283 to i32*, !dbg !589
  %225 = load i32* %224, align 4, !dbg !589
  %226 = and i32 %225, -2130706433, !dbg !589
  %227 = or i32 %226, 452984832, !dbg !589
  store i32 %227, i32* %224, align 4, !dbg !589
  br label %error, !dbg !589

do.end286:                                        ; preds = %do.body277
  store i32 8, i32* %p_state, align 4, !dbg !592
  br label %for.inc3405, !dbg !593

do.body288:                                       ; preds = %reexecute
  %228 = load i8* %ch, align 1, !dbg !594
  %conv289 = sext i8 %228 to i32, !dbg !594
  %cmp290 = icmp ne i32 %conv289, 47, !dbg !594
  br i1 %cmp290, label %do.body293, label %do.end297, !dbg !594

do.body293:                                       ; preds = %do.body288
  %229 = load %struct.http_parser** %parser.addr, align 8, !dbg !596
  %230 = bitcast %struct.http_parser* %229 to i8*, !dbg !596
  %bf.field.offs294 = getelementptr i8* %230, i32 20, !dbg !596
  %231 = bitcast i8* %bf.field.offs294 to i32*, !dbg !596
  %232 = load i32* %231, align 4, !dbg !596
  %233 = and i32 %232, -2130706433, !dbg !596
  %234 = or i32 %233, 452984832, !dbg !596
  store i32 %234, i32* %231, align 4, !dbg !596
  br label %error, !dbg !596

do.end297:                                        ; preds = %do.body288
  store i32 9, i32* %p_state, align 4, !dbg !599
  br label %for.inc3405, !dbg !600

sw.bb298:                                         ; preds = %reexecute
  %235 = load i8* %ch, align 1, !dbg !601
  %conv299 = sext i8 %235 to i32, !dbg !601
  %cmp300 = icmp slt i32 %conv299, 48, !dbg !601
  br i1 %cmp300, label %lor.end306, label %lor.rhs302, !dbg !601

lor.rhs302:                                       ; preds = %sw.bb298
  %236 = load i8* %ch, align 1, !dbg !601
  %conv303 = sext i8 %236 to i32, !dbg !601
  %cmp304 = icmp sgt i32 %conv303, 57, !dbg !601
  br label %lor.end306, !dbg !601

lor.end306:                                       ; preds = %lor.rhs302, %sw.bb298
  %237 = phi i1 [ true, %sw.bb298 ], [ %cmp304, %lor.rhs302 ]
  %lnot307 = xor i1 %237, true, !dbg !601
  %lnot309 = xor i1 %lnot307, true, !dbg !601
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !601
  %conv311 = sext i32 %lnot.ext310 to i64, !dbg !601
  %tobool313 = icmp ne i64 %conv311, 0, !dbg !601
  br i1 %tobool313, label %do.body315, label %if.end318, !dbg !601

do.body315:                                       ; preds = %lor.end306
  %238 = load %struct.http_parser** %parser.addr, align 8, !dbg !602
  %239 = bitcast %struct.http_parser* %238 to i8*, !dbg !602
  %bf.field.offs316 = getelementptr i8* %239, i32 20, !dbg !602
  %240 = bitcast i8* %bf.field.offs316 to i32*, !dbg !602
  %241 = load i32* %240, align 4, !dbg !602
  %242 = and i32 %241, -2130706433, !dbg !602
  %243 = or i32 %242, 201326592, !dbg !602
  store i32 %243, i32* %240, align 4, !dbg !602
  br label %error, !dbg !605

if.end318:                                        ; preds = %lor.end306
  %244 = load i8* %ch, align 1, !dbg !606
  %conv319 = sext i8 %244 to i32, !dbg !606
  %sub = sub nsw i32 %conv319, 48, !dbg !606
  %conv320 = trunc i32 %sub to i16, !dbg !606
  %245 = load %struct.http_parser** %parser.addr, align 8, !dbg !606
  %http_major = getelementptr inbounds %struct.http_parser* %245, i32 0, i32 6, !dbg !606
  store i16 %conv320, i16* %http_major, align 2, !dbg !606
  store i32 10, i32* %p_state, align 4, !dbg !607
  br label %for.inc3405, !dbg !608

sw.bb321:                                         ; preds = %reexecute
  %246 = load i8* %ch, align 1, !dbg !609
  %conv322 = sext i8 %246 to i32, !dbg !609
  %cmp323 = icmp eq i32 %conv322, 46, !dbg !609
  br i1 %cmp323, label %if.then325, label %if.end326, !dbg !609

if.then325:                                       ; preds = %sw.bb321
  store i32 11, i32* %p_state, align 4, !dbg !611
  br label %for.inc3405, !dbg !613

if.end326:                                        ; preds = %sw.bb321
  %247 = load i8* %ch, align 1, !dbg !614
  %conv327 = sext i8 %247 to i32, !dbg !614
  %cmp328 = icmp sge i32 %conv327, 48, !dbg !614
  br i1 %cmp328, label %land.lhs.true, label %do.body334, !dbg !614

land.lhs.true:                                    ; preds = %if.end326
  %248 = load i8* %ch, align 1, !dbg !614
  %conv330 = sext i8 %248 to i32, !dbg !614
  %cmp331 = icmp sle i32 %conv330, 57, !dbg !614
  br i1 %cmp331, label %if.end337, label %do.body334, !dbg !614

do.body334:                                       ; preds = %if.end326, %land.lhs.true
  %249 = load %struct.http_parser** %parser.addr, align 8, !dbg !615
  %250 = bitcast %struct.http_parser* %249 to i8*, !dbg !615
  %bf.field.offs335 = getelementptr i8* %250, i32 20, !dbg !615
  %251 = bitcast i8* %bf.field.offs335 to i32*, !dbg !615
  %252 = load i32* %251, align 4, !dbg !615
  %253 = and i32 %252, -2130706433, !dbg !615
  %254 = or i32 %253, 201326592, !dbg !615
  store i32 %254, i32* %251, align 4, !dbg !615
  br label %error, !dbg !618

if.end337:                                        ; preds = %land.lhs.true
  %255 = load %struct.http_parser** %parser.addr, align 8, !dbg !619
  %http_major338 = getelementptr inbounds %struct.http_parser* %255, i32 0, i32 6, !dbg !619
  %256 = load i16* %http_major338, align 2, !dbg !619
  %conv339 = zext i16 %256 to i32, !dbg !619
  %mul = mul nsw i32 %conv339, 10, !dbg !619
  %conv340 = trunc i32 %mul to i16, !dbg !619
  store i16 %conv340, i16* %http_major338, align 2, !dbg !619
  %257 = load i8* %ch, align 1, !dbg !620
  %conv341 = sext i8 %257 to i32, !dbg !620
  %sub342 = sub nsw i32 %conv341, 48, !dbg !620
  %258 = load %struct.http_parser** %parser.addr, align 8, !dbg !620
  %http_major343 = getelementptr inbounds %struct.http_parser* %258, i32 0, i32 6, !dbg !620
  %259 = load i16* %http_major343, align 2, !dbg !620
  %conv344 = zext i16 %259 to i32, !dbg !620
  %add345 = add nsw i32 %conv344, %sub342, !dbg !620
  %conv346 = trunc i32 %add345 to i16, !dbg !620
  store i16 %conv346, i16* %http_major343, align 2, !dbg !620
  %260 = load %struct.http_parser** %parser.addr, align 8, !dbg !621
  %http_major347 = getelementptr inbounds %struct.http_parser* %260, i32 0, i32 6, !dbg !621
  %261 = load i16* %http_major347, align 2, !dbg !621
  %conv348 = zext i16 %261 to i32, !dbg !621
  %cmp349 = icmp sgt i32 %conv348, 999, !dbg !621
  %lnot351 = xor i1 %cmp349, true, !dbg !621
  %lnot353 = xor i1 %lnot351, true, !dbg !621
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !621
  %conv355 = sext i32 %lnot.ext354 to i64, !dbg !621
  %tobool357 = icmp ne i64 %conv355, 0, !dbg !621
  br i1 %tobool357, label %do.body359, label %for.inc3405, !dbg !621

do.body359:                                       ; preds = %if.end337
  %262 = load %struct.http_parser** %parser.addr, align 8, !dbg !622
  %263 = bitcast %struct.http_parser* %262 to i8*, !dbg !622
  %bf.field.offs360 = getelementptr i8* %263, i32 20, !dbg !622
  %264 = bitcast i8* %bf.field.offs360 to i32*, !dbg !622
  %265 = load i32* %264, align 4, !dbg !622
  %266 = and i32 %265, -2130706433, !dbg !622
  %267 = or i32 %266, 201326592, !dbg !622
  store i32 %267, i32* %264, align 4, !dbg !622
  br label %error, !dbg !625

sw.bb363:                                         ; preds = %reexecute
  %268 = load i8* %ch, align 1, !dbg !626
  %conv364 = sext i8 %268 to i32, !dbg !626
  %cmp365 = icmp sge i32 %conv364, 48, !dbg !626
  br i1 %cmp365, label %land.rhs, label %land.end, !dbg !626

land.rhs:                                         ; preds = %sw.bb363
  %269 = load i8* %ch, align 1, !dbg !626
  %conv367 = sext i8 %269 to i32, !dbg !626
  %cmp368 = icmp sle i32 %conv367, 57, !dbg !626
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb363
  %270 = phi i1 [ false, %sw.bb363 ], [ %cmp368, %land.rhs ]
  %lnot370 = xor i1 %270, true
  %lnot372 = xor i1 %lnot370, true
  %lnot374 = xor i1 %lnot372, true
  %lnot.ext375 = zext i1 %lnot374 to i32
  %conv376 = sext i32 %lnot.ext375 to i64
  %tobool378 = icmp ne i64 %conv376, 0
  br i1 %tobool378, label %do.body380, label %if.end383

do.body380:                                       ; preds = %land.end
  %271 = load %struct.http_parser** %parser.addr, align 8, !dbg !627
  %272 = bitcast %struct.http_parser* %271 to i8*, !dbg !627
  %bf.field.offs381 = getelementptr i8* %272, i32 20, !dbg !627
  %273 = bitcast i8* %bf.field.offs381 to i32*, !dbg !627
  %274 = load i32* %273, align 4, !dbg !627
  %275 = and i32 %274, -2130706433, !dbg !627
  %276 = or i32 %275, 201326592, !dbg !627
  store i32 %276, i32* %273, align 4, !dbg !627
  br label %error, !dbg !630

if.end383:                                        ; preds = %land.end
  %277 = load i8* %ch, align 1, !dbg !631
  %conv384 = sext i8 %277 to i32, !dbg !631
  %sub385 = sub nsw i32 %conv384, 48, !dbg !631
  %conv386 = trunc i32 %sub385 to i16, !dbg !631
  %278 = load %struct.http_parser** %parser.addr, align 8, !dbg !631
  %http_minor = getelementptr inbounds %struct.http_parser* %278, i32 0, i32 7, !dbg !631
  store i16 %conv386, i16* %http_minor, align 2, !dbg !631
  store i32 12, i32* %p_state, align 4, !dbg !632
  br label %for.inc3405, !dbg !633

sw.bb387:                                         ; preds = %reexecute
  %279 = load i8* %ch, align 1, !dbg !634
  %conv388 = sext i8 %279 to i32, !dbg !634
  %cmp389 = icmp eq i32 %conv388, 32, !dbg !634
  br i1 %cmp389, label %if.then391, label %if.end392, !dbg !634

if.then391:                                       ; preds = %sw.bb387
  store i32 13, i32* %p_state, align 4, !dbg !636
  br label %for.inc3405, !dbg !638

if.end392:                                        ; preds = %sw.bb387
  %280 = load i8* %ch, align 1, !dbg !639
  %conv393 = sext i8 %280 to i32, !dbg !639
  %cmp394 = icmp sge i32 %conv393, 48, !dbg !639
  br i1 %cmp394, label %land.rhs396, label %land.end400, !dbg !639

land.rhs396:                                      ; preds = %if.end392
  %281 = load i8* %ch, align 1, !dbg !639
  %conv397 = sext i8 %281 to i32, !dbg !639
  %cmp398 = icmp sle i32 %conv397, 57, !dbg !639
  br label %land.end400

land.end400:                                      ; preds = %land.rhs396, %if.end392
  %282 = phi i1 [ false, %if.end392 ], [ %cmp398, %land.rhs396 ]
  %lnot401 = xor i1 %282, true
  %lnot403 = xor i1 %lnot401, true
  %lnot405 = xor i1 %lnot403, true
  %lnot.ext406 = zext i1 %lnot405 to i32
  %conv407 = sext i32 %lnot.ext406 to i64
  %tobool409 = icmp ne i64 %conv407, 0
  %283 = load %struct.http_parser** %parser.addr, align 8, !dbg !640
  br i1 %tobool409, label %do.body411, label %if.end414

do.body411:                                       ; preds = %land.end400
  %284 = bitcast %struct.http_parser* %283 to i8*, !dbg !640
  %bf.field.offs412 = getelementptr i8* %284, i32 20, !dbg !640
  %285 = bitcast i8* %bf.field.offs412 to i32*, !dbg !640
  %286 = load i32* %285, align 4, !dbg !640
  %287 = and i32 %286, -2130706433, !dbg !640
  %288 = or i32 %287, 201326592, !dbg !640
  store i32 %288, i32* %285, align 4, !dbg !640
  br label %error, !dbg !643

if.end414:                                        ; preds = %land.end400
  %http_minor415 = getelementptr inbounds %struct.http_parser* %283, i32 0, i32 7, !dbg !644
  %289 = load i16* %http_minor415, align 2, !dbg !644
  %conv416 = zext i16 %289 to i32, !dbg !644
  %mul417 = mul nsw i32 %conv416, 10, !dbg !644
  %conv418 = trunc i32 %mul417 to i16, !dbg !644
  store i16 %conv418, i16* %http_minor415, align 2, !dbg !644
  %290 = load i8* %ch, align 1, !dbg !645
  %conv419 = sext i8 %290 to i32, !dbg !645
  %sub420 = sub nsw i32 %conv419, 48, !dbg !645
  %291 = load %struct.http_parser** %parser.addr, align 8, !dbg !645
  %http_minor421 = getelementptr inbounds %struct.http_parser* %291, i32 0, i32 7, !dbg !645
  %292 = load i16* %http_minor421, align 2, !dbg !645
  %conv422 = zext i16 %292 to i32, !dbg !645
  %add423 = add nsw i32 %conv422, %sub420, !dbg !645
  %conv424 = trunc i32 %add423 to i16, !dbg !645
  store i16 %conv424, i16* %http_minor421, align 2, !dbg !645
  %293 = load %struct.http_parser** %parser.addr, align 8, !dbg !646
  %http_minor425 = getelementptr inbounds %struct.http_parser* %293, i32 0, i32 7, !dbg !646
  %294 = load i16* %http_minor425, align 2, !dbg !646
  %conv426 = zext i16 %294 to i32, !dbg !646
  %cmp427 = icmp sgt i32 %conv426, 999, !dbg !646
  %lnot429 = xor i1 %cmp427, true, !dbg !646
  %lnot431 = xor i1 %lnot429, true, !dbg !646
  %lnot.ext432 = zext i1 %lnot431 to i32, !dbg !646
  %conv433 = sext i32 %lnot.ext432 to i64, !dbg !646
  %tobool435 = icmp ne i64 %conv433, 0, !dbg !646
  br i1 %tobool435, label %do.body437, label %for.inc3405, !dbg !646

do.body437:                                       ; preds = %if.end414
  %295 = load %struct.http_parser** %parser.addr, align 8, !dbg !647
  %296 = bitcast %struct.http_parser* %295 to i8*, !dbg !647
  %bf.field.offs438 = getelementptr i8* %296, i32 20, !dbg !647
  %297 = bitcast i8* %bf.field.offs438 to i32*, !dbg !647
  %298 = load i32* %297, align 4, !dbg !647
  %299 = and i32 %298, -2130706433, !dbg !647
  %300 = or i32 %299, 201326592, !dbg !647
  store i32 %300, i32* %297, align 4, !dbg !647
  br label %error, !dbg !650

sw.bb441:                                         ; preds = %reexecute
  %301 = load i8* %ch, align 1, !dbg !651
  %conv442 = sext i8 %301 to i32, !dbg !651
  %cmp443 = icmp sge i32 %conv442, 48, !dbg !651
  br i1 %cmp443, label %land.lhs.true445, label %if.then449, !dbg !651

land.lhs.true445:                                 ; preds = %sw.bb441
  %302 = load i8* %ch, align 1, !dbg !651
  %conv446 = sext i8 %302 to i32, !dbg !651
  %cmp447 = icmp sle i32 %conv446, 57, !dbg !651
  br i1 %cmp447, label %if.end458, label %if.then449, !dbg !651

if.then449:                                       ; preds = %land.lhs.true445, %sw.bb441
  %303 = load i8* %ch, align 1, !dbg !653
  %conv450 = sext i8 %303 to i32, !dbg !653
  %cmp451 = icmp eq i32 %conv450, 32, !dbg !653
  br i1 %cmp451, label %for.inc3405, label %do.body455, !dbg !653

do.body455:                                       ; preds = %if.then449
  %304 = load %struct.http_parser** %parser.addr, align 8, !dbg !655
  %305 = bitcast %struct.http_parser* %304 to i8*, !dbg !655
  %bf.field.offs456 = getelementptr i8* %305, i32 20, !dbg !655
  %306 = bitcast i8* %bf.field.offs456 to i32*, !dbg !655
  %307 = load i32* %306, align 4, !dbg !655
  %308 = and i32 %307, -2130706433, !dbg !655
  %309 = or i32 %308, 218103808, !dbg !655
  store i32 %309, i32* %306, align 4, !dbg !655
  br label %error, !dbg !657

if.end458:                                        ; preds = %land.lhs.true445
  %310 = load i8* %ch, align 1, !dbg !658
  %conv459 = sext i8 %310 to i32, !dbg !658
  %sub460 = sub nsw i32 %conv459, 48, !dbg !658
  %311 = load %struct.http_parser** %parser.addr, align 8, !dbg !658
  %bf.value461 = and i32 %sub460, 65535, !dbg !658
  %312 = bitcast %struct.http_parser* %311 to i8*, !dbg !658
  %bf.field.offs462 = getelementptr i8* %312, i32 20, !dbg !658
  %313 = bitcast i8* %bf.field.offs462 to i32*, !dbg !658
  %314 = and i32 %bf.value461, 65535, !dbg !658
  %315 = load i32* %313, align 4, !dbg !658
  %316 = and i32 %315, -65536, !dbg !658
  %317 = or i32 %316, %314, !dbg !658
  store i32 %317, i32* %313, align 4, !dbg !658
  store i32 14, i32* %p_state, align 4, !dbg !659
  br label %for.inc3405, !dbg !660

sw.bb463:                                         ; preds = %reexecute
  %318 = load i8* %ch, align 1, !dbg !661
  %conv464 = sext i8 %318 to i32, !dbg !661
  %cmp465 = icmp sge i32 %conv464, 48, !dbg !661
  br i1 %cmp465, label %land.lhs.true467, label %if.then471, !dbg !661

land.lhs.true467:                                 ; preds = %sw.bb463
  %319 = load i8* %ch, align 1, !dbg !661
  %conv468 = sext i8 %319 to i32, !dbg !661
  %cmp469 = icmp sle i32 %conv468, 57, !dbg !661
  br i1 %cmp469, label %if.end481, label %if.then471, !dbg !661

if.then471:                                       ; preds = %land.lhs.true467, %sw.bb463
  %320 = load i8* %ch, align 1, !dbg !663
  %conv472 = sext i8 %320 to i32, !dbg !663
  switch i32 %conv472, label %do.body477 [
    i32 32, label %sw.bb473
    i32 13, label %sw.bb474
    i32 10, label %sw.bb475
  ], !dbg !663

sw.bb473:                                         ; preds = %if.then471
  store i32 15, i32* %p_state, align 4, !dbg !665
  br label %for.inc3405, !dbg !667

sw.bb474:                                         ; preds = %if.then471
  store i32 17, i32* %p_state, align 4, !dbg !668
  br label %for.inc3405, !dbg !669

sw.bb475:                                         ; preds = %if.then471
  store i32 42, i32* %p_state, align 4, !dbg !670
  br label %for.inc3405, !dbg !671

do.body477:                                       ; preds = %if.then471
  %321 = load %struct.http_parser** %parser.addr, align 8, !dbg !672
  %322 = bitcast %struct.http_parser* %321 to i8*, !dbg !672
  %bf.field.offs478 = getelementptr i8* %322, i32 20, !dbg !672
  %323 = bitcast i8* %bf.field.offs478 to i32*, !dbg !672
  %324 = load i32* %323, align 4, !dbg !672
  %325 = and i32 %324, -2130706433, !dbg !672
  %326 = or i32 %325, 218103808, !dbg !672
  store i32 %326, i32* %323, align 4, !dbg !672
  br label %error, !dbg !674

if.end481:                                        ; preds = %land.lhs.true467
  %327 = load %struct.http_parser** %parser.addr, align 8, !dbg !675
  %328 = bitcast %struct.http_parser* %327 to i8*, !dbg !675
  %bf.field.offs482 = getelementptr i8* %328, i32 20, !dbg !675
  %329 = bitcast i8* %bf.field.offs482 to i32*, !dbg !675
  %330 = load i32* %329, align 4, !dbg !675
  %bf.clear483 = and i32 %330, 65535, !dbg !675
  %mul484 = mul nsw i32 %bf.clear483, 10, !dbg !675
  %bf.value485 = and i32 %mul484, 65535, !dbg !675
  %331 = bitcast %struct.http_parser* %327 to i8*, !dbg !675
  %bf.field.offs486 = getelementptr i8* %331, i32 20, !dbg !675
  %332 = bitcast i8* %bf.field.offs486 to i32*, !dbg !675
  %333 = and i32 %bf.value485, 65535, !dbg !675
  %334 = load i32* %332, align 4, !dbg !675
  %335 = and i32 %334, -65536, !dbg !675
  %336 = or i32 %335, %333, !dbg !675
  store i32 %336, i32* %332, align 4, !dbg !675
  %337 = load i8* %ch, align 1, !dbg !676
  %conv487 = sext i8 %337 to i32, !dbg !676
  %sub488 = sub nsw i32 %conv487, 48, !dbg !676
  %338 = load %struct.http_parser** %parser.addr, align 8, !dbg !676
  %339 = bitcast %struct.http_parser* %338 to i8*, !dbg !676
  %bf.field.offs489 = getelementptr i8* %339, i32 20, !dbg !676
  %340 = bitcast i8* %bf.field.offs489 to i32*, !dbg !676
  %341 = load i32* %340, align 4, !dbg !676
  %bf.clear490 = and i32 %341, 65535, !dbg !676
  %add491 = add nsw i32 %bf.clear490, %sub488, !dbg !676
  %bf.value492 = and i32 %add491, 65535, !dbg !676
  %342 = bitcast %struct.http_parser* %338 to i8*, !dbg !676
  %bf.field.offs493 = getelementptr i8* %342, i32 20, !dbg !676
  %343 = bitcast i8* %bf.field.offs493 to i32*, !dbg !676
  %344 = and i32 %bf.value492, 65535, !dbg !676
  %345 = load i32* %343, align 4, !dbg !676
  %346 = and i32 %345, -65536, !dbg !676
  %347 = or i32 %346, %344, !dbg !676
  store i32 %347, i32* %343, align 4, !dbg !676
  %348 = load %struct.http_parser** %parser.addr, align 8, !dbg !677
  %349 = bitcast %struct.http_parser* %348 to i8*, !dbg !677
  %bf.field.offs494 = getelementptr i8* %349, i32 20, !dbg !677
  %350 = bitcast i8* %bf.field.offs494 to i32*, !dbg !677
  %351 = load i32* %350, align 4, !dbg !677
  %bf.clear495 = and i32 %351, 65535, !dbg !677
  %cmp496 = icmp sgt i32 %bf.clear495, 999, !dbg !677
  %lnot498 = xor i1 %cmp496, true, !dbg !677
  %lnot500 = xor i1 %lnot498, true, !dbg !677
  %lnot.ext501 = zext i1 %lnot500 to i32, !dbg !677
  %conv502 = sext i32 %lnot.ext501 to i64, !dbg !677
  %tobool504 = icmp ne i64 %conv502, 0, !dbg !677
  br i1 %tobool504, label %do.body506, label %for.inc3405, !dbg !677

do.body506:                                       ; preds = %if.end481
  %352 = load %struct.http_parser** %parser.addr, align 8, !dbg !678
  %353 = bitcast %struct.http_parser* %352 to i8*, !dbg !678
  %bf.field.offs507 = getelementptr i8* %353, i32 20, !dbg !678
  %354 = bitcast i8* %bf.field.offs507 to i32*, !dbg !678
  %355 = load i32* %354, align 4, !dbg !678
  %356 = and i32 %355, -2130706433, !dbg !678
  %357 = or i32 %356, 218103808, !dbg !678
  store i32 %357, i32* %354, align 4, !dbg !678
  br label %error, !dbg !681

sw.bb510:                                         ; preds = %reexecute
  %358 = load i8* %ch, align 1, !dbg !682
  %conv511 = sext i8 %358 to i32, !dbg !682
  %cmp512 = icmp eq i32 %conv511, 13, !dbg !682
  br i1 %cmp512, label %if.then514, label %if.end515, !dbg !682

if.then514:                                       ; preds = %sw.bb510
  store i32 17, i32* %p_state, align 4, !dbg !684
  br label %for.inc3405, !dbg !686

if.end515:                                        ; preds = %sw.bb510
  %359 = load i8* %ch, align 1, !dbg !687
  %conv516 = sext i8 %359 to i32, !dbg !687
  %cmp517 = icmp eq i32 %conv516, 10, !dbg !687
  br i1 %cmp517, label %if.then519, label %do.body521, !dbg !687

if.then519:                                       ; preds = %if.end515
  store i32 42, i32* %p_state, align 4, !dbg !688
  br label %for.inc3405, !dbg !690

do.body521:                                       ; preds = %if.end515
  %360 = load i8** %status_mark, align 8, !dbg !691
  %tobool522 = icmp ne i8* %360, null, !dbg !691
  br i1 %tobool522, label %do.end525, label %if.then523, !dbg !691

if.then523:                                       ; preds = %do.body521
  %361 = load i8** %p, align 8, !dbg !693
  store i8* %361, i8** %status_mark, align 8, !dbg !693
  br label %do.end525, !dbg !693

do.end525:                                        ; preds = %do.body521, %if.then523
  store i32 16, i32* %p_state, align 4, !dbg !695
  %362 = load %struct.http_parser** %parser.addr, align 8, !dbg !696
  %363 = bitcast %struct.http_parser* %362 to i32*, !dbg !696
  %364 = load i32* %363, align 8, !dbg !696
  %365 = and i32 %364, 16777215, !dbg !696
  store i32 %365, i32* %363, align 8, !dbg !696
  br label %for.inc3405, !dbg !697

sw.bb526:                                         ; preds = %reexecute
  %366 = load i8* %ch, align 1, !dbg !698
  %conv527 = sext i8 %366 to i32, !dbg !698
  %cmp528 = icmp eq i32 %conv527, 13, !dbg !698
  br i1 %cmp528, label %if.then530, label %if.end591, !dbg !698

if.then530:                                       ; preds = %sw.bb526
  store i32 17, i32* %p_state, align 4, !dbg !699
  %367 = load %struct.http_parser** %parser.addr, align 8, !dbg !701
  %368 = bitcast %struct.http_parser* %367 to i8*, !dbg !701
  %bf.field.offs532 = getelementptr i8* %368, i32 20, !dbg !701
  %369 = bitcast i8* %bf.field.offs532 to i32*, !dbg !701
  %370 = load i32* %369, align 4, !dbg !701
  %int_cast_to_i6414 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6414), !dbg !701
  %371 = lshr i32 %370, 24, !dbg !701
  %bf.clear533 = and i32 %371, 127, !dbg !701
  %cmp534 = icmp eq i32 %bf.clear533, 0, !dbg !701
  br i1 %cmp534, label %cond.end538, label %cond.false537, !dbg !701

cond.false537:                                    ; preds = %if.then530
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 931, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0))
  unreachable, !dbg !701

cond.end538:                                      ; preds = %if.then530
  %372 = load i8** %status_mark, align 8, !dbg !701
  %tobool539 = icmp ne i8* %372, null, !dbg !701
  br i1 %tobool539, label %if.then540, label %for.inc3405, !dbg !701

if.then540:                                       ; preds = %cond.end538
  %373 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !703
  %on_status = getelementptr inbounds %struct.http_parser_settings* %373, i32 0, i32 2, !dbg !703
  %374 = load i32 (%struct.http_parser*, i8*, i64)** %on_status, align 8, !dbg !703
  %tobool541 = icmp ne i32 (%struct.http_parser*, i8*, i64)* %374, null, !dbg !703
  %lnot542 = xor i1 %tobool541, true, !dbg !703
  %lnot544 = xor i1 %lnot542, true, !dbg !703
  %lnot.ext545 = zext i1 %lnot544 to i32, !dbg !703
  %conv546 = sext i32 %lnot.ext545 to i64, !dbg !703
  %tobool548 = icmp ne i64 %conv546, 0, !dbg !703
  br i1 %tobool548, label %if.then549, label %if.end588, !dbg !703

if.then549:                                       ; preds = %if.then540
  %375 = load i32* %p_state, align 4, !dbg !705
  %376 = load %struct.http_parser** %parser.addr, align 8, !dbg !705
  %bf.value550 = and i32 %375, 127, !dbg !705
  %377 = bitcast %struct.http_parser* %376 to i32*, !dbg !705
  %378 = and i32 %bf.value550, 127, !dbg !705
  %int_cast_to_i6415 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6415), !dbg !705
  %379 = shl i32 %378, 9, !dbg !705
  %380 = load i32* %377, align 8, !dbg !705
  %381 = and i32 %380, -65025, !dbg !705
  %382 = or i32 %381, %379, !dbg !705
  store i32 %382, i32* %377, align 8, !dbg !705
  %383 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !705
  %on_status551 = getelementptr inbounds %struct.http_parser_settings* %383, i32 0, i32 2, !dbg !705
  %384 = load i32 (%struct.http_parser*, i8*, i64)** %on_status551, align 8, !dbg !705
  %385 = load %struct.http_parser** %parser.addr, align 8, !dbg !705
  %386 = load i8** %status_mark, align 8, !dbg !705
  %387 = load i8** %p, align 8, !dbg !705
  %388 = load i8** %status_mark, align 8, !dbg !705
  %sub.ptr.lhs.cast552 = ptrtoint i8* %387 to i64, !dbg !705
  %sub.ptr.rhs.cast553 = ptrtoint i8* %388 to i64, !dbg !705
  %sub.ptr.sub554 = sub i64 %sub.ptr.lhs.cast552, %sub.ptr.rhs.cast553, !dbg !705
  %call555 = call i32 %384(%struct.http_parser* %385, i8* %386, i64 %sub.ptr.sub554), !dbg !705
  %cmp556 = icmp ne i32 0, %call555, !dbg !705
  %lnot558 = xor i1 %cmp556, true, !dbg !705
  %lnot560 = xor i1 %lnot558, true, !dbg !705
  %lnot.ext561 = zext i1 %lnot560 to i32, !dbg !705
  %conv562 = sext i32 %lnot.ext561 to i64, !dbg !705
  %tobool564 = icmp ne i64 %conv562, 0, !dbg !705
  br i1 %tobool564, label %do.body566, label %if.end569, !dbg !705

do.body566:                                       ; preds = %if.then549
  %389 = load %struct.http_parser** %parser.addr, align 8, !dbg !707
  %390 = bitcast %struct.http_parser* %389 to i8*, !dbg !707
  %bf.field.offs567 = getelementptr i8* %390, i32 20, !dbg !707
  %391 = bitcast i8* %bf.field.offs567 to i32*, !dbg !707
  %392 = load i32* %391, align 4, !dbg !707
  %393 = and i32 %392, -2130706433, !dbg !707
  %394 = or i32 %393, 134217728, !dbg !707
  store i32 %394, i32* %391, align 4, !dbg !707
  br label %if.end569, !dbg !707

if.end569:                                        ; preds = %do.body566, %if.then549
  %395 = load %struct.http_parser** %parser.addr, align 8, !dbg !707
  %396 = bitcast %struct.http_parser* %395 to i32*, !dbg !707
  %397 = load i32* %396, align 8, !dbg !707
  %int_cast_to_i6416 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6416), !dbg !707
  %398 = lshr i32 %397, 9, !dbg !707
  %bf.clear570 = and i32 %398, 127, !dbg !707
  store i32 %bf.clear570, i32* %p_state, align 4, !dbg !707
  %399 = load %struct.http_parser** %parser.addr, align 8, !dbg !707
  %400 = bitcast %struct.http_parser* %399 to i8*, !dbg !707
  %bf.field.offs571 = getelementptr i8* %400, i32 20, !dbg !707
  %401 = bitcast i8* %bf.field.offs571 to i32*, !dbg !707
  %402 = load i32* %401, align 4, !dbg !707
  %int_cast_to_i6417 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6417), !dbg !707
  %403 = lshr i32 %402, 24, !dbg !707
  %bf.clear572 = and i32 %403, 127, !dbg !707
  %cmp573 = icmp ne i32 %bf.clear572, 0, !dbg !707
  %lnot575 = xor i1 %cmp573, true, !dbg !707
  %lnot577 = xor i1 %lnot575, true, !dbg !707
  %lnot.ext578 = zext i1 %lnot577 to i32, !dbg !707
  %conv579 = sext i32 %lnot.ext578 to i64, !dbg !707
  %tobool581 = icmp ne i64 %conv579, 0, !dbg !707
  br i1 %tobool581, label %if.then582, label %if.end588, !dbg !707

if.then582:                                       ; preds = %if.end569
  %404 = load i8** %p, align 8, !dbg !710
  %405 = load i8** %data.addr, align 8, !dbg !710
  %sub.ptr.lhs.cast583 = ptrtoint i8* %404 to i64, !dbg !710
  %sub.ptr.rhs.cast584 = ptrtoint i8* %405 to i64, !dbg !710
  %sub.ptr.sub585 = sub i64 %sub.ptr.lhs.cast583, %sub.ptr.rhs.cast584, !dbg !710
  %add586 = add nsw i64 %sub.ptr.sub585, 1, !dbg !710
  store i64 %add586, i64* %retval, !dbg !710
  br label %do.end3744, !dbg !710

if.end588:                                        ; preds = %if.end569, %if.then540
  store i8* null, i8** %status_mark, align 8, !dbg !710
  br label %for.inc3405, !dbg !710

if.end591:                                        ; preds = %sw.bb526
  %406 = load i8* %ch, align 1, !dbg !712
  %conv592 = sext i8 %406 to i32, !dbg !712
  %cmp593 = icmp eq i32 %conv592, 10, !dbg !712
  br i1 %cmp593, label %if.then595, label %for.inc3405, !dbg !712

if.then595:                                       ; preds = %if.end591
  store i32 42, i32* %p_state, align 4, !dbg !713
  %407 = load %struct.http_parser** %parser.addr, align 8, !dbg !715
  %408 = bitcast %struct.http_parser* %407 to i8*, !dbg !715
  %bf.field.offs597 = getelementptr i8* %408, i32 20, !dbg !715
  %409 = bitcast i8* %bf.field.offs597 to i32*, !dbg !715
  %410 = load i32* %409, align 4, !dbg !715
  %int_cast_to_i6418 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6418), !dbg !715
  %411 = lshr i32 %410, 24, !dbg !715
  %bf.clear598 = and i32 %411, 127, !dbg !715
  %cmp599 = icmp eq i32 %bf.clear598, 0, !dbg !715
  br i1 %cmp599, label %cond.end603, label %cond.false602, !dbg !715

cond.false602:                                    ; preds = %if.then595
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 937, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0))
  unreachable, !dbg !715

cond.end603:                                      ; preds = %if.then595
  %412 = load i8** %status_mark, align 8, !dbg !715
  %tobool604 = icmp ne i8* %412, null, !dbg !715
  br i1 %tobool604, label %if.then605, label %for.inc3405, !dbg !715

if.then605:                                       ; preds = %cond.end603
  %413 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !717
  %on_status606 = getelementptr inbounds %struct.http_parser_settings* %413, i32 0, i32 2, !dbg !717
  %414 = load i32 (%struct.http_parser*, i8*, i64)** %on_status606, align 8, !dbg !717
  %tobool607 = icmp ne i32 (%struct.http_parser*, i8*, i64)* %414, null, !dbg !717
  %lnot608 = xor i1 %tobool607, true, !dbg !717
  %lnot610 = xor i1 %lnot608, true, !dbg !717
  %lnot.ext611 = zext i1 %lnot610 to i32, !dbg !717
  %conv612 = sext i32 %lnot.ext611 to i64, !dbg !717
  %tobool614 = icmp ne i64 %conv612, 0, !dbg !717
  br i1 %tobool614, label %if.then615, label %if.end654, !dbg !717

if.then615:                                       ; preds = %if.then605
  %415 = load i32* %p_state, align 4, !dbg !719
  %416 = load %struct.http_parser** %parser.addr, align 8, !dbg !719
  %bf.value616 = and i32 %415, 127, !dbg !719
  %417 = bitcast %struct.http_parser* %416 to i32*, !dbg !719
  %418 = and i32 %bf.value616, 127, !dbg !719
  %int_cast_to_i6419 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6419), !dbg !719
  %419 = shl i32 %418, 9, !dbg !719
  %420 = load i32* %417, align 8, !dbg !719
  %421 = and i32 %420, -65025, !dbg !719
  %422 = or i32 %421, %419, !dbg !719
  store i32 %422, i32* %417, align 8, !dbg !719
  %423 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !719
  %on_status617 = getelementptr inbounds %struct.http_parser_settings* %423, i32 0, i32 2, !dbg !719
  %424 = load i32 (%struct.http_parser*, i8*, i64)** %on_status617, align 8, !dbg !719
  %425 = load %struct.http_parser** %parser.addr, align 8, !dbg !719
  %426 = load i8** %status_mark, align 8, !dbg !719
  %427 = load i8** %p, align 8, !dbg !719
  %428 = load i8** %status_mark, align 8, !dbg !719
  %sub.ptr.lhs.cast618 = ptrtoint i8* %427 to i64, !dbg !719
  %sub.ptr.rhs.cast619 = ptrtoint i8* %428 to i64, !dbg !719
  %sub.ptr.sub620 = sub i64 %sub.ptr.lhs.cast618, %sub.ptr.rhs.cast619, !dbg !719
  %call621 = call i32 %424(%struct.http_parser* %425, i8* %426, i64 %sub.ptr.sub620), !dbg !719
  %cmp622 = icmp ne i32 0, %call621, !dbg !719
  %lnot624 = xor i1 %cmp622, true, !dbg !719
  %lnot626 = xor i1 %lnot624, true, !dbg !719
  %lnot.ext627 = zext i1 %lnot626 to i32, !dbg !719
  %conv628 = sext i32 %lnot.ext627 to i64, !dbg !719
  %tobool630 = icmp ne i64 %conv628, 0, !dbg !719
  br i1 %tobool630, label %do.body632, label %if.end635, !dbg !719

do.body632:                                       ; preds = %if.then615
  %429 = load %struct.http_parser** %parser.addr, align 8, !dbg !721
  %430 = bitcast %struct.http_parser* %429 to i8*, !dbg !721
  %bf.field.offs633 = getelementptr i8* %430, i32 20, !dbg !721
  %431 = bitcast i8* %bf.field.offs633 to i32*, !dbg !721
  %432 = load i32* %431, align 4, !dbg !721
  %433 = and i32 %432, -2130706433, !dbg !721
  %434 = or i32 %433, 134217728, !dbg !721
  store i32 %434, i32* %431, align 4, !dbg !721
  br label %if.end635, !dbg !721

if.end635:                                        ; preds = %do.body632, %if.then615
  %435 = load %struct.http_parser** %parser.addr, align 8, !dbg !721
  %436 = bitcast %struct.http_parser* %435 to i32*, !dbg !721
  %437 = load i32* %436, align 8, !dbg !721
  %int_cast_to_i6420 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6420), !dbg !721
  %438 = lshr i32 %437, 9, !dbg !721
  %bf.clear636 = and i32 %438, 127, !dbg !721
  store i32 %bf.clear636, i32* %p_state, align 4, !dbg !721
  %439 = load %struct.http_parser** %parser.addr, align 8, !dbg !721
  %440 = bitcast %struct.http_parser* %439 to i8*, !dbg !721
  %bf.field.offs637 = getelementptr i8* %440, i32 20, !dbg !721
  %441 = bitcast i8* %bf.field.offs637 to i32*, !dbg !721
  %442 = load i32* %441, align 4, !dbg !721
  %int_cast_to_i6421 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6421), !dbg !721
  %443 = lshr i32 %442, 24, !dbg !721
  %bf.clear638 = and i32 %443, 127, !dbg !721
  %cmp639 = icmp ne i32 %bf.clear638, 0, !dbg !721
  %lnot641 = xor i1 %cmp639, true, !dbg !721
  %lnot643 = xor i1 %lnot641, true, !dbg !721
  %lnot.ext644 = zext i1 %lnot643 to i32, !dbg !721
  %conv645 = sext i32 %lnot.ext644 to i64, !dbg !721
  %tobool647 = icmp ne i64 %conv645, 0, !dbg !721
  br i1 %tobool647, label %if.then648, label %if.end654, !dbg !721

if.then648:                                       ; preds = %if.end635
  %444 = load i8** %p, align 8, !dbg !724
  %445 = load i8** %data.addr, align 8, !dbg !724
  %sub.ptr.lhs.cast649 = ptrtoint i8* %444 to i64, !dbg !724
  %sub.ptr.rhs.cast650 = ptrtoint i8* %445 to i64, !dbg !724
  %sub.ptr.sub651 = sub i64 %sub.ptr.lhs.cast649, %sub.ptr.rhs.cast650, !dbg !724
  %add652 = add nsw i64 %sub.ptr.sub651, 1, !dbg !724
  store i64 %add652, i64* %retval, !dbg !724
  br label %do.end3744, !dbg !724

if.end654:                                        ; preds = %if.end635, %if.then605
  store i8* null, i8** %status_mark, align 8, !dbg !724
  br label %for.inc3405, !dbg !724

do.body659:                                       ; preds = %reexecute
  %446 = load i8* %ch, align 1, !dbg !726
  %conv660 = sext i8 %446 to i32, !dbg !726
  %cmp661 = icmp ne i32 %conv660, 10, !dbg !726
  br i1 %cmp661, label %do.body664, label %do.end668, !dbg !726

do.body664:                                       ; preds = %do.body659
  %447 = load %struct.http_parser** %parser.addr, align 8, !dbg !728
  %448 = bitcast %struct.http_parser* %447 to i8*, !dbg !728
  %bf.field.offs665 = getelementptr i8* %448, i32 20, !dbg !728
  %449 = bitcast i8* %bf.field.offs665 to i32*, !dbg !728
  %450 = load i32* %449, align 4, !dbg !728
  %451 = and i32 %450, -2130706433, !dbg !728
  %452 = or i32 %451, 452984832, !dbg !728
  store i32 %452, i32* %449, align 4, !dbg !728
  br label %error, !dbg !728

do.end668:                                        ; preds = %do.body659
  store i32 42, i32* %p_state, align 4, !dbg !731
  br label %for.inc3405, !dbg !732

sw.bb669:                                         ; preds = %reexecute
  %453 = load i8* %ch, align 1, !dbg !733
  %conv670 = sext i8 %453 to i32, !dbg !733
  %cmp671 = icmp eq i32 %conv670, 13, !dbg !733
  br i1 %cmp671, label %for.inc3405, label %lor.lhs.false673, !dbg !733

lor.lhs.false673:                                 ; preds = %sw.bb669
  %454 = load i8* %ch, align 1, !dbg !733
  %conv674 = sext i8 %454 to i32, !dbg !733
  %cmp675 = icmp eq i32 %conv674, 10, !dbg !733
  br i1 %cmp675, label %for.inc3405, label %if.end678, !dbg !733

if.end678:                                        ; preds = %lor.lhs.false673
  %455 = load %struct.http_parser** %parser.addr, align 8, !dbg !735
  %456 = bitcast %struct.http_parser* %455 to i32*, !dbg !735
  %457 = load i32* %456, align 8, !dbg !735
  %458 = and i32 %457, -509, !dbg !735
  store i32 %458, i32* %456, align 8, !dbg !735
  %459 = load %struct.http_parser** %parser.addr, align 8, !dbg !736
  %content_length679 = getelementptr inbounds %struct.http_parser* %459, i32 0, i32 5, !dbg !736
  store i64 -1, i64* %content_length679, align 8, !dbg !736
  %460 = load i8* %ch, align 1, !dbg !737
  %conv680 = sext i8 %460 to i32, !dbg !737
  %or = or i32 %conv680, 32, !dbg !737
  %conv681 = trunc i32 %or to i8, !dbg !737
  %conv682 = zext i8 %conv681 to i32, !dbg !737
  %cmp683 = icmp sge i32 %conv682, 97, !dbg !737
  br i1 %cmp683, label %land.rhs685, label %land.end692, !dbg !737

land.rhs685:                                      ; preds = %if.end678
  %461 = load i8* %ch, align 1, !dbg !737
  %conv686 = sext i8 %461 to i32, !dbg !737
  %or687 = or i32 %conv686, 32, !dbg !737
  %conv688 = trunc i32 %or687 to i8, !dbg !737
  %conv689 = zext i8 %conv688 to i32, !dbg !737
  %cmp690 = icmp sle i32 %conv689, 122, !dbg !737
  br label %land.end692

land.end692:                                      ; preds = %land.rhs685, %if.end678
  %462 = phi i1 [ false, %if.end678 ], [ %cmp690, %land.rhs685 ]
  %lnot693 = xor i1 %462, true
  %lnot695 = xor i1 %lnot693, true
  %lnot697 = xor i1 %lnot695, true
  %lnot.ext698 = zext i1 %lnot697 to i32
  %conv699 = sext i32 %lnot.ext698 to i64
  %tobool701 = icmp ne i64 %conv699, 0
  %463 = load %struct.http_parser** %parser.addr, align 8, !dbg !738
  %464 = bitcast %struct.http_parser* %463 to i8*, !dbg !738
  %bf.field.offs704 = getelementptr i8* %464, i32 20, !dbg !738
  %465 = bitcast i8* %bf.field.offs704 to i32*, !dbg !738
  %466 = load i32* %465, align 4, !dbg !738
  br i1 %tobool701, label %do.body703, label %if.end706

do.body703:                                       ; preds = %land.end692
  %467 = and i32 %466, -2130706433, !dbg !738
  %468 = or i32 %467, 234881024, !dbg !738
  store i32 %468, i32* %465, align 4, !dbg !738
  br label %error, !dbg !741

if.end706:                                        ; preds = %land.end692
  %469 = and i32 %466, -16711681, !dbg !742
  store i32 %469, i32* %465, align 4, !dbg !742
  %470 = load %struct.http_parser** %parser.addr, align 8, !dbg !743
  %471 = bitcast %struct.http_parser* %470 to i32*, !dbg !743
  %472 = load i32* %471, align 8, !dbg !743
  %473 = and i32 %472, 16777215, !dbg !743
  %474 = or i32 %473, 16777216, !dbg !743
  store i32 %474, i32* %471, align 8, !dbg !743
  %475 = load i8* %ch, align 1, !dbg !744
  %conv708 = sext i8 %475 to i32, !dbg !744
  switch i32 %conv708, label %do.body736 [
    i32 67, label %sw.bb709
    i32 68, label %sw.bb711
    i32 71, label %sw.bb713
    i32 72, label %sw.bb715
    i32 76, label %sw.bb717
    i32 77, label %sw.bb719
    i32 78, label %sw.bb721
    i32 79, label %sw.bb723
    i32 80, label %sw.bb725
    i32 82, label %sw.bb727
    i32 83, label %sw.bb729
    i32 84, label %sw.bb731
    i32 85, label %sw.bb733
  ], !dbg !744

sw.bb709:                                         ; preds = %if.end706
  %476 = load %struct.http_parser** %parser.addr, align 8, !dbg !745
  %477 = bitcast %struct.http_parser* %476 to i8*, !dbg !745
  %bf.field.offs710 = getelementptr i8* %477, i32 20, !dbg !745
  %478 = bitcast i8* %bf.field.offs710 to i32*, !dbg !745
  %479 = load i32* %478, align 4, !dbg !745
  %480 = and i32 %479, -16711681, !dbg !745
  %481 = or i32 %480, 327680, !dbg !745
  store i32 %481, i32* %478, align 4, !dbg !745
  br label %sw.epilog739, !dbg !745

sw.bb711:                                         ; preds = %if.end706
  %482 = load %struct.http_parser** %parser.addr, align 8, !dbg !747
  %483 = bitcast %struct.http_parser* %482 to i8*, !dbg !747
  %bf.field.offs712 = getelementptr i8* %483, i32 20, !dbg !747
  %484 = bitcast i8* %bf.field.offs712 to i32*, !dbg !747
  %485 = load i32* %484, align 4, !dbg !747
  %486 = and i32 %485, -16711681, !dbg !747
  store i32 %486, i32* %484, align 4, !dbg !747
  br label %sw.epilog739, !dbg !747

sw.bb713:                                         ; preds = %if.end706
  %487 = load %struct.http_parser** %parser.addr, align 8, !dbg !748
  %488 = bitcast %struct.http_parser* %487 to i8*, !dbg !748
  %bf.field.offs714 = getelementptr i8* %488, i32 20, !dbg !748
  %489 = bitcast i8* %bf.field.offs714 to i32*, !dbg !748
  %490 = load i32* %489, align 4, !dbg !748
  %491 = and i32 %490, -16711681, !dbg !748
  %492 = or i32 %491, 65536, !dbg !748
  store i32 %492, i32* %489, align 4, !dbg !748
  br label %sw.epilog739, !dbg !748

sw.bb715:                                         ; preds = %if.end706
  %493 = load %struct.http_parser** %parser.addr, align 8, !dbg !749
  %494 = bitcast %struct.http_parser* %493 to i8*, !dbg !749
  %bf.field.offs716 = getelementptr i8* %494, i32 20, !dbg !749
  %495 = bitcast i8* %bf.field.offs716 to i32*, !dbg !749
  %496 = load i32* %495, align 4, !dbg !749
  %497 = and i32 %496, -16711681, !dbg !749
  %498 = or i32 %497, 131072, !dbg !749
  store i32 %498, i32* %495, align 4, !dbg !749
  br label %sw.epilog739, !dbg !749

sw.bb717:                                         ; preds = %if.end706
  %499 = load %struct.http_parser** %parser.addr, align 8, !dbg !750
  %500 = bitcast %struct.http_parser* %499 to i8*, !dbg !750
  %bf.field.offs718 = getelementptr i8* %500, i32 20, !dbg !750
  %501 = bitcast i8* %bf.field.offs718 to i32*, !dbg !750
  %502 = load i32* %501, align 4, !dbg !750
  %503 = and i32 %502, -16711681, !dbg !750
  %504 = or i32 %503, 589824, !dbg !750
  store i32 %504, i32* %501, align 4, !dbg !750
  br label %sw.epilog739, !dbg !750

sw.bb719:                                         ; preds = %if.end706
  %505 = load %struct.http_parser** %parser.addr, align 8, !dbg !751
  %506 = bitcast %struct.http_parser* %505 to i8*, !dbg !751
  %bf.field.offs720 = getelementptr i8* %506, i32 20, !dbg !751
  %507 = bitcast i8* %bf.field.offs720 to i32*, !dbg !751
  %508 = load i32* %507, align 4, !dbg !751
  %509 = and i32 %508, -16711681, !dbg !751
  %510 = or i32 %509, 655360, !dbg !751
  store i32 %510, i32* %507, align 4, !dbg !751
  br label %sw.epilog739, !dbg !751

sw.bb721:                                         ; preds = %if.end706
  %511 = load %struct.http_parser** %parser.addr, align 8, !dbg !752
  %512 = bitcast %struct.http_parser* %511 to i8*, !dbg !752
  %bf.field.offs722 = getelementptr i8* %512, i32 20, !dbg !752
  %513 = bitcast i8* %bf.field.offs722 to i32*, !dbg !752
  %514 = load i32* %513, align 4, !dbg !752
  %515 = and i32 %514, -16711681, !dbg !752
  %516 = or i32 %515, 1376256, !dbg !752
  store i32 %516, i32* %513, align 4, !dbg !752
  br label %sw.epilog739, !dbg !752

sw.bb723:                                         ; preds = %if.end706
  %517 = load %struct.http_parser** %parser.addr, align 8, !dbg !753
  %518 = bitcast %struct.http_parser* %517 to i8*, !dbg !753
  %bf.field.offs724 = getelementptr i8* %518, i32 20, !dbg !753
  %519 = bitcast i8* %bf.field.offs724 to i32*, !dbg !753
  %520 = load i32* %519, align 4, !dbg !753
  %521 = and i32 %520, -16711681, !dbg !753
  %522 = or i32 %521, 393216, !dbg !753
  store i32 %522, i32* %519, align 4, !dbg !753
  br label %sw.epilog739, !dbg !753

sw.bb725:                                         ; preds = %if.end706
  %523 = load %struct.http_parser** %parser.addr, align 8, !dbg !754
  %524 = bitcast %struct.http_parser* %523 to i8*, !dbg !754
  %bf.field.offs726 = getelementptr i8* %524, i32 20, !dbg !754
  %525 = bitcast i8* %bf.field.offs726 to i32*, !dbg !754
  %526 = load i32* %525, align 4, !dbg !754
  %527 = and i32 %526, -16711681, !dbg !754
  %528 = or i32 %527, 196608, !dbg !754
  store i32 %528, i32* %525, align 4, !dbg !754
  br label %sw.epilog739, !dbg !755

sw.bb727:                                         ; preds = %if.end706
  %529 = load %struct.http_parser** %parser.addr, align 8, !dbg !756
  %530 = bitcast %struct.http_parser* %529 to i8*, !dbg !756
  %bf.field.offs728 = getelementptr i8* %530, i32 20, !dbg !756
  %531 = bitcast i8* %bf.field.offs728 to i32*, !dbg !756
  %532 = load i32* %531, align 4, !dbg !756
  %533 = and i32 %532, -16711681, !dbg !756
  %534 = or i32 %533, 1048576, !dbg !756
  store i32 %534, i32* %531, align 4, !dbg !756
  br label %sw.epilog739, !dbg !756

sw.bb729:                                         ; preds = %if.end706
  %535 = load %struct.http_parser** %parser.addr, align 8, !dbg !757
  %536 = bitcast %struct.http_parser* %535 to i8*, !dbg !757
  %bf.field.offs730 = getelementptr i8* %536, i32 20, !dbg !757
  %537 = bitcast i8* %bf.field.offs730 to i32*, !dbg !757
  %538 = load i32* %537, align 4, !dbg !757
  %539 = and i32 %538, -16711681, !dbg !757
  %540 = or i32 %539, 1441792, !dbg !757
  store i32 %540, i32* %537, align 4, !dbg !757
  br label %sw.epilog739, !dbg !757

sw.bb731:                                         ; preds = %if.end706
  %541 = load %struct.http_parser** %parser.addr, align 8, !dbg !758
  %542 = bitcast %struct.http_parser* %541 to i8*, !dbg !758
  %bf.field.offs732 = getelementptr i8* %542, i32 20, !dbg !758
  %543 = bitcast i8* %bf.field.offs732 to i32*, !dbg !758
  %544 = load i32* %543, align 4, !dbg !758
  %545 = and i32 %544, -16711681, !dbg !758
  %546 = or i32 %545, 458752, !dbg !758
  store i32 %546, i32* %543, align 4, !dbg !758
  br label %sw.epilog739, !dbg !758

sw.bb733:                                         ; preds = %if.end706
  %547 = load %struct.http_parser** %parser.addr, align 8, !dbg !759
  %548 = bitcast %struct.http_parser* %547 to i8*, !dbg !759
  %bf.field.offs734 = getelementptr i8* %548, i32 20, !dbg !759
  %549 = bitcast i8* %bf.field.offs734 to i32*, !dbg !759
  %550 = load i32* %549, align 4, !dbg !759
  %551 = and i32 %550, -16711681, !dbg !759
  %552 = or i32 %551, 983040, !dbg !759
  store i32 %552, i32* %549, align 4, !dbg !759
  br label %sw.epilog739, !dbg !759

do.body736:                                       ; preds = %if.end706
  %553 = load %struct.http_parser** %parser.addr, align 8, !dbg !760
  %554 = bitcast %struct.http_parser* %553 to i8*, !dbg !760
  %bf.field.offs737 = getelementptr i8* %554, i32 20, !dbg !760
  %555 = bitcast i8* %bf.field.offs737 to i32*, !dbg !760
  %556 = load i32* %555, align 4, !dbg !760
  %557 = and i32 %556, -2130706433, !dbg !760
  %558 = or i32 %557, 234881024, !dbg !760
  store i32 %558, i32* %555, align 4, !dbg !760
  br label %error, !dbg !762

sw.epilog739:                                     ; preds = %sw.bb733, %sw.bb731, %sw.bb729, %sw.bb727, %sw.bb725, %sw.bb723, %sw.bb721, %sw.bb719, %sw.bb717, %sw.bb715, %sw.bb713, %sw.bb711, %sw.bb709
  store i32 19, i32* %p_state, align 4, !dbg !763
  %559 = load %struct.http_parser** %parser.addr, align 8, !dbg !764
  %560 = bitcast %struct.http_parser* %559 to i8*, !dbg !764
  %bf.field.offs741 = getelementptr i8* %560, i32 20, !dbg !764
  %561 = bitcast i8* %bf.field.offs741 to i32*, !dbg !764
  %562 = load i32* %561, align 4, !dbg !764
  %int_cast_to_i6422 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6422), !dbg !764
  %563 = lshr i32 %562, 24, !dbg !764
  %bf.clear742 = and i32 %563, 127, !dbg !764
  %cmp743 = icmp eq i32 %bf.clear742, 0, !dbg !764
  br i1 %cmp743, label %cond.end747, label %cond.false746, !dbg !764

cond.false746:                                    ; preds = %sw.epilog739
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 984, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0))
  unreachable, !dbg !764

cond.end747:                                      ; preds = %sw.epilog739
  %564 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !764
  %on_message_begin748 = getelementptr inbounds %struct.http_parser_settings* %564, i32 0, i32 0, !dbg !764
  %565 = load i32 (%struct.http_parser*)** %on_message_begin748, align 8, !dbg !764
  %tobool749 = icmp ne i32 (%struct.http_parser*)* %565, null, !dbg !764
  %lnot750 = xor i1 %tobool749, true, !dbg !764
  %lnot752 = xor i1 %lnot750, true, !dbg !764
  %lnot.ext753 = zext i1 %lnot752 to i32, !dbg !764
  %conv754 = sext i32 %lnot.ext753 to i64, !dbg !764
  %tobool756 = icmp ne i64 %conv754, 0, !dbg !764
  br i1 %tobool756, label %if.then757, label %for.inc3405, !dbg !764

if.then757:                                       ; preds = %cond.end747
  %566 = load i32* %p_state, align 4, !dbg !766
  %567 = load %struct.http_parser** %parser.addr, align 8, !dbg !766
  %bf.value758 = and i32 %566, 127, !dbg !766
  %568 = bitcast %struct.http_parser* %567 to i32*, !dbg !766
  %569 = and i32 %bf.value758, 127, !dbg !766
  %int_cast_to_i6423 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6423), !dbg !766
  %570 = shl i32 %569, 9, !dbg !766
  %571 = load i32* %568, align 8, !dbg !766
  %572 = and i32 %571, -65025, !dbg !766
  %573 = or i32 %572, %570, !dbg !766
  store i32 %573, i32* %568, align 8, !dbg !766
  %574 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !766
  %on_message_begin759 = getelementptr inbounds %struct.http_parser_settings* %574, i32 0, i32 0, !dbg !766
  %575 = load i32 (%struct.http_parser*)** %on_message_begin759, align 8, !dbg !766
  %576 = load %struct.http_parser** %parser.addr, align 8, !dbg !766
  %call760 = call i32 %575(%struct.http_parser* %576), !dbg !766
  %cmp761 = icmp ne i32 0, %call760, !dbg !766
  %lnot763 = xor i1 %cmp761, true, !dbg !766
  %lnot765 = xor i1 %lnot763, true, !dbg !766
  %lnot.ext766 = zext i1 %lnot765 to i32, !dbg !766
  %conv767 = sext i32 %lnot.ext766 to i64, !dbg !766
  %tobool769 = icmp ne i64 %conv767, 0, !dbg !766
  br i1 %tobool769, label %do.body771, label %if.end774, !dbg !766

do.body771:                                       ; preds = %if.then757
  %577 = load %struct.http_parser** %parser.addr, align 8, !dbg !768
  %578 = bitcast %struct.http_parser* %577 to i8*, !dbg !768
  %bf.field.offs772 = getelementptr i8* %578, i32 20, !dbg !768
  %579 = bitcast i8* %bf.field.offs772 to i32*, !dbg !768
  %580 = load i32* %579, align 4, !dbg !768
  %581 = and i32 %580, -2130706433, !dbg !768
  %582 = or i32 %581, 16777216, !dbg !768
  store i32 %582, i32* %579, align 4, !dbg !768
  br label %if.end774, !dbg !768

if.end774:                                        ; preds = %do.body771, %if.then757
  %583 = load %struct.http_parser** %parser.addr, align 8, !dbg !768
  %584 = bitcast %struct.http_parser* %583 to i32*, !dbg !768
  %585 = load i32* %584, align 8, !dbg !768
  %int_cast_to_i6424 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6424), !dbg !768
  %586 = lshr i32 %585, 9, !dbg !768
  %bf.clear775 = and i32 %586, 127, !dbg !768
  store i32 %bf.clear775, i32* %p_state, align 4, !dbg !768
  %587 = load %struct.http_parser** %parser.addr, align 8, !dbg !768
  %588 = bitcast %struct.http_parser* %587 to i8*, !dbg !768
  %bf.field.offs776 = getelementptr i8* %588, i32 20, !dbg !768
  %589 = bitcast i8* %bf.field.offs776 to i32*, !dbg !768
  %590 = load i32* %589, align 4, !dbg !768
  %int_cast_to_i6425 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6425), !dbg !768
  %591 = lshr i32 %590, 24, !dbg !768
  %bf.clear777 = and i32 %591, 127, !dbg !768
  %cmp778 = icmp ne i32 %bf.clear777, 0, !dbg !768
  %lnot780 = xor i1 %cmp778, true, !dbg !768
  %lnot782 = xor i1 %lnot780, true, !dbg !768
  %lnot.ext783 = zext i1 %lnot782 to i32, !dbg !768
  %conv784 = sext i32 %lnot.ext783 to i64, !dbg !768
  %tobool786 = icmp ne i64 %conv784, 0, !dbg !768
  br i1 %tobool786, label %if.then787, label %for.inc3405, !dbg !768

if.then787:                                       ; preds = %if.end774
  %592 = load i8** %p, align 8, !dbg !771
  %593 = load i8** %data.addr, align 8, !dbg !771
  %sub.ptr.lhs.cast788 = ptrtoint i8* %592 to i64, !dbg !771
  %sub.ptr.rhs.cast789 = ptrtoint i8* %593 to i64, !dbg !771
  %sub.ptr.sub790 = sub i64 %sub.ptr.lhs.cast788, %sub.ptr.rhs.cast789, !dbg !771
  %add791 = add nsw i64 %sub.ptr.sub790, 1, !dbg !771
  store i64 %add791, i64* %retval, !dbg !771
  br label %do.end3744, !dbg !771

sw.bb795:                                         ; preds = %reexecute
  %594 = load i8* %ch, align 1, !dbg !773
  %conv796 = sext i8 %594 to i32, !dbg !773
  %cmp797 = icmp eq i32 %conv796, 0, !dbg !773
  %lnot799 = xor i1 %cmp797, true, !dbg !773
  %lnot801 = xor i1 %lnot799, true, !dbg !773
  %lnot.ext802 = zext i1 %lnot801 to i32, !dbg !773
  %conv803 = sext i32 %lnot.ext802 to i64, !dbg !773
  %tobool805 = icmp ne i64 %conv803, 0, !dbg !773
  %595 = load %struct.http_parser** %parser.addr, align 8, !dbg !775
  %596 = bitcast %struct.http_parser* %595 to i8*, !dbg !775
  %bf.field.offs808 = getelementptr i8* %596, i32 20, !dbg !775
  %597 = bitcast i8* %bf.field.offs808 to i32*, !dbg !775
  %598 = load i32* %597, align 4, !dbg !775
  br i1 %tobool805, label %do.body807, label %if.end810, !dbg !773

do.body807:                                       ; preds = %sw.bb795
  %599 = and i32 %598, -2130706433, !dbg !775
  %600 = or i32 %599, 234881024, !dbg !775
  store i32 %600, i32* %597, align 4, !dbg !775
  br label %error, !dbg !778

if.end810:                                        ; preds = %sw.bb795
  %int_cast_to_i6426 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6426), !dbg !779
  %601 = lshr i32 %598, 16, !dbg !779
  %bf.clear812 = and i32 %601, 255, !dbg !779
  %idxprom = zext i32 %bf.clear812 to i64, !dbg !779
  %arrayidx = getelementptr inbounds [27 x i8*]* @method_strings, i32 0, i64 %idxprom, !dbg !779
  %602 = load i8** %arrayidx, align 8, !dbg !779
  store i8* %602, i8** %matcher, align 8, !dbg !779
  %603 = load i8* %ch, align 1, !dbg !780
  %conv813 = sext i8 %603 to i32, !dbg !780
  %cmp814 = icmp eq i32 %conv813, 32, !dbg !780
  br i1 %cmp814, label %land.lhs.true816, label %if.else824, !dbg !780

land.lhs.true816:                                 ; preds = %if.end810
  %604 = load %struct.http_parser** %parser.addr, align 8, !dbg !780
  %605 = bitcast %struct.http_parser* %604 to i32*, !dbg !780
  %606 = load i32* %605, align 8, !dbg !780
  %int_cast_to_i6427 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6427), !dbg !780
  %607 = lshr i32 %606, 24, !dbg !780
  %bf.clear817 = and i32 %607, 255, !dbg !780
  %idxprom818 = zext i32 %bf.clear817 to i64, !dbg !780
  %608 = load i8** %matcher, align 8, !dbg !780
  %arrayidx819 = getelementptr inbounds i8* %608, i64 %idxprom818, !dbg !780
  %609 = load i8* %arrayidx819, align 1, !dbg !780
  %conv820 = sext i8 %609 to i32, !dbg !780
  %cmp821 = icmp eq i32 %conv820, 0, !dbg !780
  br i1 %cmp821, label %if.then823, label %if.else824, !dbg !780

if.then823:                                       ; preds = %land.lhs.true816
  store i32 20, i32* %p_state, align 4, !dbg !781
  br label %if.end1050, !dbg !783

if.else824:                                       ; preds = %land.lhs.true816, %if.end810
  %610 = load i8* %ch, align 1, !dbg !784
  %conv825 = sext i8 %610 to i32, !dbg !784
  %611 = load %struct.http_parser** %parser.addr, align 8, !dbg !784
  %612 = bitcast %struct.http_parser* %611 to i32*, !dbg !784
  %613 = load i32* %612, align 8, !dbg !784
  %int_cast_to_i6428 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6428), !dbg !784
  %614 = lshr i32 %613, 24, !dbg !784
  %bf.clear826 = and i32 %614, 255, !dbg !784
  %idxprom827 = zext i32 %bf.clear826 to i64, !dbg !784
  %615 = load i8** %matcher, align 8, !dbg !784
  %arrayidx828 = getelementptr inbounds i8* %615, i64 %idxprom827, !dbg !784
  %616 = load i8* %arrayidx828, align 1, !dbg !784
  %conv829 = sext i8 %616 to i32, !dbg !784
  %cmp830 = icmp eq i32 %conv825, %conv829, !dbg !784
  br i1 %cmp830, label %if.end1050, label %if.else833, !dbg !784

if.else833:                                       ; preds = %if.else824
  %617 = load %struct.http_parser** %parser.addr, align 8, !dbg !785
  %618 = bitcast %struct.http_parser* %617 to i8*, !dbg !785
  %bf.field.offs834 = getelementptr i8* %618, i32 20, !dbg !785
  %619 = bitcast i8* %bf.field.offs834 to i32*, !dbg !785
  %620 = load i32* %619, align 4, !dbg !785
  %int_cast_to_i6429 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6429), !dbg !785
  %621 = lshr i32 %620, 16, !dbg !785
  %bf.clear835 = and i32 %621, 255, !dbg !785
  %cmp836 = icmp eq i32 %bf.clear835, 5, !dbg !785
  %622 = load %struct.http_parser** %parser.addr, align 8, !dbg !786
  br i1 %cmp836, label %if.then838, label %if.else864, !dbg !785

if.then838:                                       ; preds = %if.else833
  %623 = bitcast %struct.http_parser* %622 to i32*, !dbg !786
  %624 = load i32* %623, align 8, !dbg !786
  %int_cast_to_i6430 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6430), !dbg !786
  %625 = lshr i32 %624, 24, !dbg !786
  %bf.clear839 = and i32 %625, 255, !dbg !786
  %cmp840 = icmp eq i32 %bf.clear839, 1, !dbg !786
  br i1 %cmp840, label %land.lhs.true842, label %if.else848, !dbg !786

land.lhs.true842:                                 ; preds = %if.then838
  %626 = load i8* %ch, align 1, !dbg !786
  %conv843 = sext i8 %626 to i32, !dbg !786
  %cmp844 = icmp eq i32 %conv843, 72, !dbg !786
  br i1 %cmp844, label %if.then846, label %if.else848, !dbg !786

if.then846:                                       ; preds = %land.lhs.true842
  %627 = load %struct.http_parser** %parser.addr, align 8, !dbg !788
  %628 = bitcast %struct.http_parser* %627 to i8*, !dbg !788
  %bf.field.offs847 = getelementptr i8* %628, i32 20, !dbg !788
  %629 = bitcast i8* %bf.field.offs847 to i32*, !dbg !788
  %630 = load i32* %629, align 4, !dbg !788
  %631 = and i32 %630, -16711681, !dbg !788
  %632 = or i32 %631, 1179648, !dbg !788
  store i32 %632, i32* %629, align 4, !dbg !788
  br label %if.end1050, !dbg !790

if.else848:                                       ; preds = %land.lhs.true842, %if.then838
  %633 = load %struct.http_parser** %parser.addr, align 8, !dbg !791
  %634 = bitcast %struct.http_parser* %633 to i32*, !dbg !791
  %635 = load i32* %634, align 8, !dbg !791
  %int_cast_to_i6431 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6431), !dbg !791
  %636 = lshr i32 %635, 24, !dbg !791
  %bf.clear849 = and i32 %636, 255, !dbg !791
  %cmp850 = icmp eq i32 %bf.clear849, 2, !dbg !791
  br i1 %cmp850, label %land.lhs.true852, label %do.body859, !dbg !791

land.lhs.true852:                                 ; preds = %if.else848
  %637 = load i8* %ch, align 1, !dbg !791
  %conv853 = sext i8 %637 to i32, !dbg !791
  %cmp854 = icmp eq i32 %conv853, 80, !dbg !791
  br i1 %cmp854, label %if.then856, label %do.body859, !dbg !791

if.then856:                                       ; preds = %land.lhs.true852
  %638 = load %struct.http_parser** %parser.addr, align 8, !dbg !792
  %639 = bitcast %struct.http_parser* %638 to i8*, !dbg !792
  %bf.field.offs857 = getelementptr i8* %639, i32 20, !dbg !792
  %640 = bitcast i8* %bf.field.offs857 to i32*, !dbg !792
  %641 = load i32* %640, align 4, !dbg !792
  %642 = and i32 %641, -16711681, !dbg !792
  %643 = or i32 %642, 524288, !dbg !792
  store i32 %643, i32* %640, align 4, !dbg !792
  br label %if.end1050

do.body859:                                       ; preds = %if.else848, %land.lhs.true852
  %644 = load %struct.http_parser** %parser.addr, align 8, !dbg !794
  %645 = bitcast %struct.http_parser* %644 to i8*, !dbg !794
  %bf.field.offs860 = getelementptr i8* %645, i32 20, !dbg !794
  %646 = bitcast i8* %bf.field.offs860 to i32*, !dbg !794
  %647 = load i32* %646, align 4, !dbg !794
  %648 = and i32 %647, -2130706433, !dbg !794
  %649 = or i32 %648, 234881024, !dbg !794
  store i32 %649, i32* %646, align 4, !dbg !794
  br label %error, !dbg !797

if.else864:                                       ; preds = %if.else833
  %650 = bitcast %struct.http_parser* %622 to i8*, !dbg !798
  %bf.field.offs865 = getelementptr i8* %650, i32 20, !dbg !798
  %651 = bitcast i8* %bf.field.offs865 to i32*, !dbg !798
  %652 = load i32* %651, align 4, !dbg !798
  %int_cast_to_i6432 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6432), !dbg !798
  %653 = lshr i32 %652, 16, !dbg !798
  %bf.clear866 = and i32 %653, 255, !dbg !798
  %cmp867 = icmp eq i32 %bf.clear866, 10, !dbg !798
  %654 = load %struct.http_parser** %parser.addr, align 8, !dbg !799
  br i1 %cmp867, label %if.then869, label %if.else928, !dbg !798

if.then869:                                       ; preds = %if.else864
  %655 = bitcast %struct.http_parser* %654 to i32*, !dbg !799
  %656 = load i32* %655, align 8, !dbg !799
  %int_cast_to_i6433 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6433), !dbg !799
  %657 = lshr i32 %656, 24, !dbg !799
  %bf.clear870 = and i32 %657, 255, !dbg !799
  %cmp871 = icmp eq i32 %bf.clear870, 1, !dbg !799
  br i1 %cmp871, label %land.lhs.true873, label %if.else879, !dbg !799

land.lhs.true873:                                 ; preds = %if.then869
  %658 = load i8* %ch, align 1, !dbg !799
  %conv874 = sext i8 %658 to i32, !dbg !799
  %cmp875 = icmp eq i32 %conv874, 79, !dbg !799
  br i1 %cmp875, label %if.then877, label %if.else879, !dbg !799

if.then877:                                       ; preds = %land.lhs.true873
  %659 = load %struct.http_parser** %parser.addr, align 8, !dbg !801
  %660 = bitcast %struct.http_parser* %659 to i8*, !dbg !801
  %bf.field.offs878 = getelementptr i8* %660, i32 20, !dbg !801
  %661 = bitcast i8* %bf.field.offs878 to i32*, !dbg !801
  %662 = load i32* %661, align 4, !dbg !801
  %663 = and i32 %662, -16711681, !dbg !801
  %664 = or i32 %663, 720896, !dbg !801
  store i32 %664, i32* %661, align 4, !dbg !801
  br label %if.end1050, !dbg !803

if.else879:                                       ; preds = %land.lhs.true873, %if.then869
  %665 = load %struct.http_parser** %parser.addr, align 8, !dbg !804
  %666 = bitcast %struct.http_parser* %665 to i32*, !dbg !804
  %667 = load i32* %666, align 8, !dbg !804
  %int_cast_to_i6434 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6434), !dbg !804
  %668 = lshr i32 %667, 24, !dbg !804
  %bf.clear880 = and i32 %668, 255, !dbg !804
  %cmp881 = icmp eq i32 %bf.clear880, 1, !dbg !804
  br i1 %cmp881, label %land.lhs.true883, label %if.else889, !dbg !804

land.lhs.true883:                                 ; preds = %if.else879
  %669 = load i8* %ch, align 1, !dbg !804
  %conv884 = sext i8 %669 to i32, !dbg !804
  %cmp885 = icmp eq i32 %conv884, 69, !dbg !804
  br i1 %cmp885, label %if.then887, label %if.else889, !dbg !804

if.then887:                                       ; preds = %land.lhs.true883
  %670 = load %struct.http_parser** %parser.addr, align 8, !dbg !805
  %671 = bitcast %struct.http_parser* %670 to i8*, !dbg !805
  %bf.field.offs888 = getelementptr i8* %671, i32 20, !dbg !805
  %672 = bitcast i8* %bf.field.offs888 to i32*, !dbg !805
  %673 = load i32* %672, align 4, !dbg !805
  %674 = and i32 %673, -16711681, !dbg !805
  %675 = or i32 %674, 1245184, !dbg !805
  store i32 %675, i32* %672, align 4, !dbg !805
  br label %if.end1050, !dbg !807

if.else889:                                       ; preds = %land.lhs.true883, %if.else879
  %676 = load %struct.http_parser** %parser.addr, align 8, !dbg !808
  %677 = bitcast %struct.http_parser* %676 to i32*, !dbg !808
  %678 = load i32* %677, align 8, !dbg !808
  %int_cast_to_i6435 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6435), !dbg !808
  %679 = lshr i32 %678, 24, !dbg !808
  %bf.clear890 = and i32 %679, 255, !dbg !808
  %cmp891 = icmp eq i32 %bf.clear890, 1, !dbg !808
  br i1 %cmp891, label %land.lhs.true893, label %if.else899, !dbg !808

land.lhs.true893:                                 ; preds = %if.else889
  %680 = load i8* %ch, align 1, !dbg !808
  %conv894 = sext i8 %680 to i32, !dbg !808
  %cmp895 = icmp eq i32 %conv894, 45, !dbg !808
  br i1 %cmp895, label %if.then897, label %if.else899, !dbg !808

if.then897:                                       ; preds = %land.lhs.true893
  %681 = load %struct.http_parser** %parser.addr, align 8, !dbg !809
  %682 = bitcast %struct.http_parser* %681 to i8*, !dbg !809
  %bf.field.offs898 = getelementptr i8* %682, i32 20, !dbg !809
  %683 = bitcast i8* %bf.field.offs898 to i32*, !dbg !809
  %684 = load i32* %683, align 4, !dbg !809
  %685 = and i32 %684, -16711681, !dbg !809
  %686 = or i32 %685, 1310720, !dbg !809
  store i32 %686, i32* %683, align 4, !dbg !809
  br label %if.end1050, !dbg !811

if.else899:                                       ; preds = %land.lhs.true893, %if.else889
  %687 = load %struct.http_parser** %parser.addr, align 8, !dbg !812
  %688 = bitcast %struct.http_parser* %687 to i32*, !dbg !812
  %689 = load i32* %688, align 8, !dbg !812
  %int_cast_to_i6436 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6436), !dbg !812
  %690 = lshr i32 %689, 24, !dbg !812
  %bf.clear900 = and i32 %690, 255, !dbg !812
  %cmp901 = icmp eq i32 %bf.clear900, 2, !dbg !812
  br i1 %cmp901, label %land.lhs.true903, label %if.else909, !dbg !812

land.lhs.true903:                                 ; preds = %if.else899
  %691 = load i8* %ch, align 1, !dbg !812
  %conv904 = sext i8 %691 to i32, !dbg !812
  %cmp905 = icmp eq i32 %conv904, 65, !dbg !812
  br i1 %cmp905, label %if.then907, label %if.else909, !dbg !812

if.then907:                                       ; preds = %land.lhs.true903
  %692 = load %struct.http_parser** %parser.addr, align 8, !dbg !813
  %693 = bitcast %struct.http_parser* %692 to i8*, !dbg !813
  %bf.field.offs908 = getelementptr i8* %693, i32 20, !dbg !813
  %694 = bitcast i8* %bf.field.offs908 to i32*, !dbg !813
  %695 = load i32* %694, align 4, !dbg !813
  %696 = and i32 %695, -16711681, !dbg !813
  %697 = or i32 %696, 1114112, !dbg !813
  store i32 %697, i32* %694, align 4, !dbg !813
  br label %if.end1050, !dbg !815

if.else909:                                       ; preds = %land.lhs.true903, %if.else899
  %698 = load %struct.http_parser** %parser.addr, align 8, !dbg !816
  %699 = bitcast %struct.http_parser* %698 to i32*, !dbg !816
  %700 = load i32* %699, align 8, !dbg !816
  %int_cast_to_i6437 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6437), !dbg !816
  %701 = lshr i32 %700, 24, !dbg !816
  %bf.clear910 = and i32 %701, 255, !dbg !816
  %cmp911 = icmp eq i32 %bf.clear910, 3, !dbg !816
  br i1 %cmp911, label %land.lhs.true913, label %do.body920, !dbg !816

land.lhs.true913:                                 ; preds = %if.else909
  %702 = load i8* %ch, align 1, !dbg !816
  %conv914 = sext i8 %702 to i32, !dbg !816
  %cmp915 = icmp eq i32 %conv914, 65, !dbg !816
  br i1 %cmp915, label %if.then917, label %do.body920, !dbg !816

if.then917:                                       ; preds = %land.lhs.true913
  %703 = load %struct.http_parser** %parser.addr, align 8, !dbg !817
  %704 = bitcast %struct.http_parser* %703 to i8*, !dbg !817
  %bf.field.offs918 = getelementptr i8* %704, i32 20, !dbg !817
  %705 = bitcast i8* %bf.field.offs918 to i32*, !dbg !817
  %706 = load i32* %705, align 4, !dbg !817
  %707 = and i32 %706, -16711681, !dbg !817
  %708 = or i32 %707, 1703936, !dbg !817
  store i32 %708, i32* %705, align 4, !dbg !817
  br label %if.end1050

do.body920:                                       ; preds = %if.else909, %land.lhs.true913
  %709 = load %struct.http_parser** %parser.addr, align 8, !dbg !819
  %710 = bitcast %struct.http_parser* %709 to i8*, !dbg !819
  %bf.field.offs921 = getelementptr i8* %710, i32 20, !dbg !819
  %711 = bitcast i8* %bf.field.offs921 to i32*, !dbg !819
  %712 = load i32* %711, align 4, !dbg !819
  %713 = and i32 %712, -2130706433, !dbg !819
  %714 = or i32 %713, 234881024, !dbg !819
  store i32 %714, i32* %711, align 4, !dbg !819
  br label %error, !dbg !822

if.else928:                                       ; preds = %if.else864
  %715 = bitcast %struct.http_parser* %654 to i8*, !dbg !823
  %bf.field.offs929 = getelementptr i8* %715, i32 20, !dbg !823
  %716 = bitcast i8* %bf.field.offs929 to i32*, !dbg !823
  %717 = load i32* %716, align 4, !dbg !823
  %int_cast_to_i6438 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6438), !dbg !823
  %718 = lshr i32 %717, 16, !dbg !823
  %bf.clear930 = and i32 %718, 255, !dbg !823
  %cmp931 = icmp eq i32 %bf.clear930, 22, !dbg !823
  %719 = load %struct.http_parser** %parser.addr, align 8, !dbg !824
  %720 = bitcast %struct.http_parser* %719 to i32*, !dbg !824
  %721 = load i32* %720, align 8, !dbg !824
  %int_cast_to_i6439 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6439), !dbg !824
  %722 = lshr i32 %721, 24, !dbg !824
  %bf.clear934 = and i32 %722, 255, !dbg !824
  %cmp935 = icmp eq i32 %bf.clear934, 1, !dbg !824
  br i1 %cmp931, label %if.then933, label %if.else948, !dbg !823

if.then933:                                       ; preds = %if.else928
  br i1 %cmp935, label %land.lhs.true937, label %do.body944, !dbg !824

land.lhs.true937:                                 ; preds = %if.then933
  %723 = load i8* %ch, align 1, !dbg !824
  %conv938 = sext i8 %723 to i32, !dbg !824
  %cmp939 = icmp eq i32 %conv938, 69, !dbg !824
  br i1 %cmp939, label %if.then941, label %do.body944, !dbg !824

if.then941:                                       ; preds = %land.lhs.true937
  %724 = load %struct.http_parser** %parser.addr, align 8, !dbg !826
  %725 = bitcast %struct.http_parser* %724 to i8*, !dbg !826
  %bf.field.offs942 = getelementptr i8* %725, i32 20, !dbg !826
  %726 = bitcast i8* %bf.field.offs942 to i32*, !dbg !826
  %727 = load i32* %726, align 4, !dbg !826
  %728 = and i32 %727, -16711681, !dbg !826
  %729 = or i32 %728, 917504, !dbg !826
  store i32 %729, i32* %726, align 4, !dbg !826
  br label %if.end1050, !dbg !828

do.body944:                                       ; preds = %if.then933, %land.lhs.true937
  %730 = load %struct.http_parser** %parser.addr, align 8, !dbg !829
  %731 = bitcast %struct.http_parser* %730 to i8*, !dbg !829
  %bf.field.offs945 = getelementptr i8* %731, i32 20, !dbg !829
  %732 = bitcast i8* %bf.field.offs945 to i32*, !dbg !829
  %733 = load i32* %732, align 4, !dbg !829
  %734 = and i32 %733, -2130706433, !dbg !829
  %735 = or i32 %734, 234881024, !dbg !829
  store i32 %735, i32* %732, align 4, !dbg !829
  br label %error, !dbg !832

if.else948:                                       ; preds = %if.else928
  br i1 %cmp935, label %land.lhs.true952, label %if.else982, !dbg !833

land.lhs.true952:                                 ; preds = %if.else948
  %736 = load %struct.http_parser** %parser.addr, align 8, !dbg !833
  %737 = bitcast %struct.http_parser* %736 to i8*, !dbg !833
  %bf.field.offs953 = getelementptr i8* %737, i32 20, !dbg !833
  %738 = bitcast i8* %bf.field.offs953 to i32*, !dbg !833
  %739 = load i32* %738, align 4, !dbg !833
  %int_cast_to_i6441 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6441), !dbg !833
  %740 = lshr i32 %739, 16, !dbg !833
  %bf.clear954 = and i32 %740, 255, !dbg !833
  %cmp955 = icmp eq i32 %bf.clear954, 3, !dbg !833
  br i1 %cmp955, label %if.then957, label %if.else982, !dbg !833

if.then957:                                       ; preds = %land.lhs.true952
  %741 = load i8* %ch, align 1, !dbg !834
  %conv958 = sext i8 %741 to i32, !dbg !834
  %cmp959 = icmp eq i32 %conv958, 82, !dbg !834
  br i1 %cmp959, label %if.then961, label %if.else963, !dbg !834

if.then961:                                       ; preds = %if.then957
  %742 = load %struct.http_parser** %parser.addr, align 8, !dbg !836
  %743 = bitcast %struct.http_parser* %742 to i8*, !dbg !836
  %bf.field.offs962 = getelementptr i8* %743, i32 20, !dbg !836
  %744 = bitcast i8* %bf.field.offs962 to i32*, !dbg !836
  %745 = load i32* %744, align 4, !dbg !836
  %746 = and i32 %745, -16711681, !dbg !836
  %747 = or i32 %746, 786432, !dbg !836
  store i32 %747, i32* %744, align 4, !dbg !836
  br label %if.end1050, !dbg !838

if.else963:                                       ; preds = %if.then957
  %748 = load i8* %ch, align 1, !dbg !839
  %conv964 = sext i8 %748 to i32, !dbg !839
  %cmp965 = icmp eq i32 %conv964, 85, !dbg !839
  br i1 %cmp965, label %if.then967, label %if.else969, !dbg !839

if.then967:                                       ; preds = %if.else963
  %749 = load %struct.http_parser** %parser.addr, align 8, !dbg !840
  %750 = bitcast %struct.http_parser* %749 to i8*, !dbg !840
  %bf.field.offs968 = getelementptr i8* %750, i32 20, !dbg !840
  %751 = bitcast i8* %bf.field.offs968 to i32*, !dbg !840
  %752 = load i32* %751, align 4, !dbg !840
  %753 = and i32 %752, -16711681, !dbg !840
  %754 = or i32 %753, 262144, !dbg !840
  store i32 %754, i32* %751, align 4, !dbg !840
  br label %if.end1050, !dbg !842

if.else969:                                       ; preds = %if.else963
  %755 = load i8* %ch, align 1, !dbg !843
  %conv970 = sext i8 %755 to i32, !dbg !843
  %cmp971 = icmp eq i32 %conv970, 65, !dbg !843
  %756 = load %struct.http_parser** %parser.addr, align 8, !dbg !844
  %757 = bitcast %struct.http_parser* %756 to i8*, !dbg !844
  %bf.field.offs974 = getelementptr i8* %757, i32 20, !dbg !844
  %758 = bitcast i8* %bf.field.offs974 to i32*, !dbg !844
  %759 = load i32* %758, align 4, !dbg !844
  br i1 %cmp971, label %if.then973, label %do.body976, !dbg !843

if.then973:                                       ; preds = %if.else969
  %760 = and i32 %759, -16711681, !dbg !844
  %761 = or i32 %760, 1572864, !dbg !844
  store i32 %761, i32* %758, align 4, !dbg !844
  br label %if.end1050

do.body976:                                       ; preds = %if.else969
  %762 = and i32 %759, -2130706433, !dbg !846
  %763 = or i32 %762, 234881024, !dbg !846
  store i32 %763, i32* %758, align 4, !dbg !846
  br label %error, !dbg !849

if.else982:                                       ; preds = %land.lhs.true952, %if.else948
  %764 = load %struct.http_parser** %parser.addr, align 8, !dbg !850
  %765 = bitcast %struct.http_parser* %764 to i32*, !dbg !850
  %766 = load i32* %765, align 8, !dbg !850
  %int_cast_to_i6442 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6442), !dbg !850
  %767 = lshr i32 %766, 24, !dbg !850
  %bf.clear983 = and i32 %767, 255, !dbg !850
  %cmp984 = icmp eq i32 %bf.clear983, 2, !dbg !850
  %768 = load %struct.http_parser** %parser.addr, align 8, !dbg !851
  br i1 %cmp984, label %if.then986, label %if.else1024, !dbg !850

if.then986:                                       ; preds = %if.else982
  %769 = bitcast %struct.http_parser* %768 to i8*, !dbg !851
  %bf.field.offs987 = getelementptr i8* %769, i32 20, !dbg !851
  %770 = bitcast i8* %bf.field.offs987 to i32*, !dbg !851
  %771 = load i32* %770, align 4, !dbg !851
  %int_cast_to_i6443 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6443), !dbg !851
  %772 = lshr i32 %771, 16, !dbg !851
  %bf.clear988 = and i32 %772, 255, !dbg !851
  %cmp989 = icmp eq i32 %bf.clear988, 4, !dbg !851
  br i1 %cmp989, label %if.then991, label %if.else1002, !dbg !851

if.then991:                                       ; preds = %if.then986
  %773 = load i8* %ch, align 1, !dbg !853
  %conv992 = sext i8 %773 to i32, !dbg !853
  %cmp993 = icmp eq i32 %conv992, 82, !dbg !853
  %774 = load %struct.http_parser** %parser.addr, align 8, !dbg !855
  %775 = bitcast %struct.http_parser* %774 to i8*, !dbg !855
  %bf.field.offs996 = getelementptr i8* %775, i32 20, !dbg !855
  %776 = bitcast i8* %bf.field.offs996 to i32*, !dbg !855
  %777 = load i32* %776, align 4, !dbg !855
  br i1 %cmp993, label %if.then995, label %do.body998, !dbg !853

if.then995:                                       ; preds = %if.then991
  %778 = and i32 %777, -16711681, !dbg !855
  %779 = or i32 %778, 1638400, !dbg !855
  store i32 %779, i32* %776, align 4, !dbg !855
  br label %if.end1050, !dbg !857

do.body998:                                       ; preds = %if.then991
  %780 = and i32 %777, -2130706433, !dbg !858
  %781 = or i32 %780, 234881024, !dbg !858
  store i32 %781, i32* %776, align 4, !dbg !858
  br label %error, !dbg !861

if.else1002:                                      ; preds = %if.then986
  %782 = load %struct.http_parser** %parser.addr, align 8, !dbg !862
  %783 = bitcast %struct.http_parser* %782 to i8*, !dbg !862
  %bf.field.offs1003 = getelementptr i8* %783, i32 20, !dbg !862
  %784 = bitcast i8* %bf.field.offs1003 to i32*, !dbg !862
  %785 = load i32* %784, align 4, !dbg !862
  %int_cast_to_i6444 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6444), !dbg !862
  %786 = lshr i32 %785, 16, !dbg !862
  %bf.clear1004 = and i32 %786, 255, !dbg !862
  %cmp1005 = icmp eq i32 %bf.clear1004, 15, !dbg !862
  br i1 %cmp1005, label %if.then1007, label %do.body1019, !dbg !862

if.then1007:                                      ; preds = %if.else1002
  %787 = load i8* %ch, align 1, !dbg !863
  %conv1008 = sext i8 %787 to i32, !dbg !863
  %cmp1009 = icmp eq i32 %conv1008, 83, !dbg !863
  %788 = load %struct.http_parser** %parser.addr, align 8, !dbg !865
  %789 = bitcast %struct.http_parser* %788 to i8*, !dbg !865
  %bf.field.offs1012 = getelementptr i8* %789, i32 20, !dbg !865
  %790 = bitcast i8* %bf.field.offs1012 to i32*, !dbg !865
  %791 = load i32* %790, align 4, !dbg !865
  br i1 %cmp1009, label %if.then1011, label %do.body1014, !dbg !863

if.then1011:                                      ; preds = %if.then1007
  %792 = and i32 %791, -16711681, !dbg !865
  %793 = or i32 %792, 1507328, !dbg !865
  store i32 %793, i32* %790, align 4, !dbg !865
  br label %if.end1050

do.body1014:                                      ; preds = %if.then1007
  %794 = and i32 %791, -2130706433, !dbg !867
  %795 = or i32 %794, 234881024, !dbg !867
  store i32 %795, i32* %790, align 4, !dbg !867
  br label %error, !dbg !870

do.body1019:                                      ; preds = %if.else1002
  %796 = load %struct.http_parser** %parser.addr, align 8, !dbg !871
  %797 = bitcast %struct.http_parser* %796 to i8*, !dbg !871
  %bf.field.offs1020 = getelementptr i8* %797, i32 20, !dbg !871
  %798 = bitcast i8* %bf.field.offs1020 to i32*, !dbg !871
  %799 = load i32* %798, align 4, !dbg !871
  %800 = and i32 %799, -2130706433, !dbg !871
  %801 = or i32 %800, 234881024, !dbg !871
  store i32 %801, i32* %798, align 4, !dbg !871
  br label %error, !dbg !874

if.else1024:                                      ; preds = %if.else982
  %802 = bitcast %struct.http_parser* %768 to i32*, !dbg !875
  %803 = load i32* %802, align 8, !dbg !875
  %int_cast_to_i6445 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6445), !dbg !875
  %804 = lshr i32 %803, 24, !dbg !875
  %bf.clear1025 = and i32 %804, 255, !dbg !875
  %cmp1026 = icmp eq i32 %bf.clear1025, 4, !dbg !875
  br i1 %cmp1026, label %land.lhs.true1028, label %do.body1040, !dbg !875

land.lhs.true1028:                                ; preds = %if.else1024
  %805 = load %struct.http_parser** %parser.addr, align 8, !dbg !875
  %806 = bitcast %struct.http_parser* %805 to i8*, !dbg !875
  %bf.field.offs1029 = getelementptr i8* %806, i32 20, !dbg !875
  %807 = bitcast i8* %bf.field.offs1029 to i32*, !dbg !875
  %808 = load i32* %807, align 4, !dbg !875
  %int_cast_to_i6446 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6446), !dbg !875
  %809 = lshr i32 %808, 16, !dbg !875
  %bf.clear1030 = and i32 %809, 255, !dbg !875
  %cmp1031 = icmp eq i32 %bf.clear1030, 12, !dbg !875
  br i1 %cmp1031, label %land.lhs.true1033, label %do.body1040, !dbg !875

land.lhs.true1033:                                ; preds = %land.lhs.true1028
  %810 = load i8* %ch, align 1, !dbg !875
  %conv1034 = sext i8 %810 to i32, !dbg !875
  %cmp1035 = icmp eq i32 %conv1034, 80, !dbg !875
  br i1 %cmp1035, label %if.then1037, label %do.body1040, !dbg !875

if.then1037:                                      ; preds = %land.lhs.true1033
  %811 = load %struct.http_parser** %parser.addr, align 8, !dbg !876
  %812 = bitcast %struct.http_parser* %811 to i8*, !dbg !876
  %bf.field.offs1038 = getelementptr i8* %812, i32 20, !dbg !876
  %813 = bitcast i8* %bf.field.offs1038 to i32*, !dbg !876
  %814 = load i32* %813, align 4, !dbg !876
  %815 = and i32 %814, -16711681, !dbg !876
  %816 = or i32 %815, 851968, !dbg !876
  store i32 %816, i32* %813, align 4, !dbg !876
  br label %if.end1050

do.body1040:                                      ; preds = %if.else1024, %land.lhs.true1028, %land.lhs.true1033
  %817 = load %struct.http_parser** %parser.addr, align 8, !dbg !878
  %818 = bitcast %struct.http_parser* %817 to i8*, !dbg !878
  %bf.field.offs1041 = getelementptr i8* %818, i32 20, !dbg !878
  %819 = bitcast i8* %bf.field.offs1041 to i32*, !dbg !878
  %820 = load i32* %819, align 4, !dbg !878
  %821 = and i32 %820, -2130706433, !dbg !878
  %822 = or i32 %821, 234881024, !dbg !878
  store i32 %822, i32* %819, align 4, !dbg !878
  br label %error, !dbg !881

if.end1050:                                       ; preds = %if.else824, %if.then887, %if.then907, %if.then917, %if.then897, %if.then877, %if.then967, %if.then973, %if.then961, %if.then995, %if.then1011, %if.then1037, %if.then941, %if.then846, %if.then85
  %823 = load %struct.http_parser** %parser.addr, align 8, !dbg !882
  %824 = bitcast %struct.http_parser* %823 to i32*, !dbg !882
  %825 = load i32* %824, align 8, !dbg !882
  %int_cast_to_i6447 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6447), !dbg !882
  %826 = lshr i32 %825, 24, !dbg !882
  %bf.clear1051 = and i32 %826, 255, !dbg !882
  %inc = add i32 %bf.clear1051, 1, !dbg !882
  %bf.value1052 = and i32 %inc, 255, !dbg !882
  %827 = bitcast %struct.http_parser* %823 to i32*, !dbg !882
  %828 = and i32 %bf.value1052, 255, !dbg !882
  %int_cast_to_i6448 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6448), !dbg !882
  %829 = shl i32 %828, 24, !dbg !882
  %830 = load i32* %827, align 8, !dbg !882
  %831 = and i32 %830, 16777215, !dbg !882
  %832 = or i32 %831, %829, !dbg !882
  store i32 %832, i32* %827, align 8, !dbg !882
  br label %for.inc3405, !dbg !883

sw.bb1053:                                        ; preds = %reexecute
  %833 = load i8* %ch, align 1, !dbg !884
  %conv1054 = sext i8 %833 to i32, !dbg !884
  %cmp1055 = icmp eq i32 %conv1054, 32, !dbg !884
  br i1 %cmp1055, label %for.inc3405, label %do.body1059, !dbg !884

do.body1059:                                      ; preds = %sw.bb1053
  %834 = load i8** %url_mark, align 8, !dbg !886
  %tobool1060 = icmp ne i8* %834, null, !dbg !886
  br i1 %tobool1060, label %do.end1063, label %if.then1061, !dbg !886

if.then1061:                                      ; preds = %do.body1059
  %835 = load i8** %p, align 8, !dbg !888
  store i8* %835, i8** %url_mark, align 8, !dbg !888
  br label %do.end1063, !dbg !888

do.end1063:                                       ; preds = %do.body1059, %if.then1061
  %836 = load %struct.http_parser** %parser.addr, align 8, !dbg !890
  %837 = bitcast %struct.http_parser* %836 to i8*, !dbg !890
  %bf.field.offs1064 = getelementptr i8* %837, i32 20, !dbg !890
  %838 = bitcast i8* %bf.field.offs1064 to i32*, !dbg !890
  %839 = load i32* %838, align 4, !dbg !890
  %int_cast_to_i6449 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6449), !dbg !890
  %840 = lshr i32 %839, 16, !dbg !890
  %bf.clear1065 = and i32 %840, 255, !dbg !890
  %cmp1066 = icmp eq i32 %bf.clear1065, 5, !dbg !890
  br i1 %cmp1066, label %if.then1068, label %if.end1069, !dbg !890

if.then1068:                                      ; preds = %do.end1063
  store i32 24, i32* %p_state, align 4, !dbg !891
  br label %if.end1069, !dbg !893

if.end1069:                                       ; preds = %if.then1068, %do.end1063
  %841 = load i32* %p_state, align 4, !dbg !894
  %842 = load i8* %ch, align 1, !dbg !894
  %call1070 = call i32 @parse_url_char(i32 %841, i8 signext %842), !dbg !894
  store i32 %call1070, i32* %p_state, align 4, !dbg !894
  %843 = load i32* %p_state, align 4, !dbg !895
  %cmp1071 = icmp eq i32 %843, 1, !dbg !895
  %lnot1073 = xor i1 %cmp1071, true, !dbg !895
  %lnot1075 = xor i1 %lnot1073, true, !dbg !895
  %lnot.ext1076 = zext i1 %lnot1075 to i32, !dbg !895
  %conv1077 = sext i32 %lnot.ext1076 to i64, !dbg !895
  %tobool1079 = icmp ne i64 %conv1077, 0, !dbg !895
  br i1 %tobool1079, label %do.body1081, label %for.inc3405, !dbg !895

do.body1081:                                      ; preds = %if.end1069
  %844 = load %struct.http_parser** %parser.addr, align 8, !dbg !896
  %845 = bitcast %struct.http_parser* %844 to i8*, !dbg !896
  %bf.field.offs1082 = getelementptr i8* %845, i32 20, !dbg !896
  %846 = bitcast i8* %bf.field.offs1082 to i32*, !dbg !896
  %847 = load i32* %846, align 4, !dbg !896
  %848 = and i32 %847, -2130706433, !dbg !896
  %849 = or i32 %848, 251658240, !dbg !896
  store i32 %849, i32* %846, align 4, !dbg !896
  br label %error, !dbg !899

sw.bb1085:                                        ; preds = %reexecute, %reexecute, %reexecute, %reexecute
  %850 = load i8* %ch, align 1, !dbg !900
  %conv1086 = sext i8 %850 to i32, !dbg !900
  switch i32 %conv1086, label %sw.default1091 [
    i32 32, label %do.body1088
    i32 13, label %do.body1088
    i32 10, label %do.body1088
  ], !dbg !900

do.body1088:                                      ; preds = %sw.bb1085, %sw.bb1085, %sw.bb1085
  %851 = load %struct.http_parser** %parser.addr, align 8, !dbg !902
  %852 = bitcast %struct.http_parser* %851 to i8*, !dbg !902
  %bf.field.offs1089 = getelementptr i8* %852, i32 20, !dbg !902
  %853 = bitcast i8* %bf.field.offs1089 to i32*, !dbg !902
  %854 = load i32* %853, align 4, !dbg !902
  %855 = and i32 %854, -2130706433, !dbg !902
  %856 = or i32 %855, 251658240, !dbg !902
  store i32 %856, i32* %853, align 4, !dbg !902
  br label %error, !dbg !905

sw.default1091:                                   ; preds = %sw.bb1085
  %857 = load i32* %p_state, align 4, !dbg !906
  %858 = load i8* %ch, align 1, !dbg !906
  %call1092 = call i32 @parse_url_char(i32 %857, i8 signext %858), !dbg !906
  store i32 %call1092, i32* %p_state, align 4, !dbg !906
  %859 = load i32* %p_state, align 4, !dbg !907
  %cmp1093 = icmp eq i32 %859, 1, !dbg !907
  %lnot1095 = xor i1 %cmp1093, true, !dbg !907
  %lnot1097 = xor i1 %lnot1095, true, !dbg !907
  %lnot.ext1098 = zext i1 %lnot1097 to i32, !dbg !907
  %conv1099 = sext i32 %lnot.ext1098 to i64, !dbg !907
  %tobool1101 = icmp ne i64 %conv1099, 0, !dbg !907
  br i1 %tobool1101, label %do.body1103, label %for.inc3405, !dbg !907

do.body1103:                                      ; preds = %sw.default1091
  %860 = load %struct.http_parser** %parser.addr, align 8, !dbg !908
  %861 = bitcast %struct.http_parser* %860 to i8*, !dbg !908
  %bf.field.offs1104 = getelementptr i8* %861, i32 20, !dbg !908
  %862 = bitcast i8* %bf.field.offs1104 to i32*, !dbg !908
  %863 = load i32* %862, align 4, !dbg !908
  %864 = and i32 %863, -2130706433, !dbg !908
  %865 = or i32 %864, 251658240, !dbg !908
  store i32 %865, i32* %862, align 4, !dbg !908
  br label %error, !dbg !911

sw.bb1108:                                        ; preds = %reexecute, %reexecute, %reexecute, %reexecute, %reexecute, %reexecute, %reexecute
  %866 = load i8* %ch, align 1, !dbg !912
  %conv1109 = sext i8 %866 to i32, !dbg !912
  switch i32 %conv1109, label %sw.default1238 [
    i32 32, label %sw.bb1110
    i32 13, label %sw.bb1171
    i32 10, label %sw.bb1171
  ], !dbg !912

sw.bb1110:                                        ; preds = %sw.bb1108
  store i32 32, i32* %p_state, align 4, !dbg !914
  %867 = load %struct.http_parser** %parser.addr, align 8, !dbg !916
  %868 = bitcast %struct.http_parser* %867 to i8*, !dbg !916
  %bf.field.offs1112 = getelementptr i8* %868, i32 20, !dbg !916
  %869 = bitcast i8* %bf.field.offs1112 to i32*, !dbg !916
  %870 = load i32* %869, align 4, !dbg !916
  %int_cast_to_i6450 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6450), !dbg !916
  %871 = lshr i32 %870, 24, !dbg !916
  %bf.clear1113 = and i32 %871, 127, !dbg !916
  %cmp1114 = icmp eq i32 %bf.clear1113, 0, !dbg !916
  br i1 %cmp1114, label %cond.end1118, label %cond.false1117, !dbg !916

cond.false1117:                                   ; preds = %sw.bb1110
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1126, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !916

cond.end1118:                                     ; preds = %sw.bb1110
  %872 = load i8** %url_mark, align 8, !dbg !916
  %tobool1119 = icmp ne i8* %872, null, !dbg !916
  br i1 %tobool1119, label %if.then1120, label %for.inc3405, !dbg !916

if.then1120:                                      ; preds = %cond.end1118
  %873 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !918
  %on_url = getelementptr inbounds %struct.http_parser_settings* %873, i32 0, i32 1, !dbg !918
  %874 = load i32 (%struct.http_parser*, i8*, i64)** %on_url, align 8, !dbg !918
  %tobool1121 = icmp ne i32 (%struct.http_parser*, i8*, i64)* %874, null, !dbg !918
  %lnot1122 = xor i1 %tobool1121, true, !dbg !918
  %lnot1124 = xor i1 %lnot1122, true, !dbg !918
  %lnot.ext1125 = zext i1 %lnot1124 to i32, !dbg !918
  %conv1126 = sext i32 %lnot.ext1125 to i64, !dbg !918
  %tobool1128 = icmp ne i64 %conv1126, 0, !dbg !918
  br i1 %tobool1128, label %if.then1129, label %if.end1168, !dbg !918

if.then1129:                                      ; preds = %if.then1120
  %875 = load i32* %p_state, align 4, !dbg !920
  %876 = load %struct.http_parser** %parser.addr, align 8, !dbg !920
  %bf.value1130 = and i32 %875, 127, !dbg !920
  %877 = bitcast %struct.http_parser* %876 to i32*, !dbg !920
  %878 = and i32 %bf.value1130, 127, !dbg !920
  %int_cast_to_i6451 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6451), !dbg !920
  %879 = shl i32 %878, 9, !dbg !920
  %880 = load i32* %877, align 8, !dbg !920
  %881 = and i32 %880, -65025, !dbg !920
  %882 = or i32 %881, %879, !dbg !920
  store i32 %882, i32* %877, align 8, !dbg !920
  %883 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !920
  %on_url1131 = getelementptr inbounds %struct.http_parser_settings* %883, i32 0, i32 1, !dbg !920
  %884 = load i32 (%struct.http_parser*, i8*, i64)** %on_url1131, align 8, !dbg !920
  %885 = load %struct.http_parser** %parser.addr, align 8, !dbg !920
  %886 = load i8** %url_mark, align 8, !dbg !920
  %887 = load i8** %p, align 8, !dbg !920
  %888 = load i8** %url_mark, align 8, !dbg !920
  %sub.ptr.lhs.cast1132 = ptrtoint i8* %887 to i64, !dbg !920
  %sub.ptr.rhs.cast1133 = ptrtoint i8* %888 to i64, !dbg !920
  %sub.ptr.sub1134 = sub i64 %sub.ptr.lhs.cast1132, %sub.ptr.rhs.cast1133, !dbg !920
  %call1135 = call i32 %884(%struct.http_parser* %885, i8* %886, i64 %sub.ptr.sub1134), !dbg !920
  %cmp1136 = icmp ne i32 0, %call1135, !dbg !920
  %lnot1138 = xor i1 %cmp1136, true, !dbg !920
  %lnot1140 = xor i1 %lnot1138, true, !dbg !920
  %lnot.ext1141 = zext i1 %lnot1140 to i32, !dbg !920
  %conv1142 = sext i32 %lnot.ext1141 to i64, !dbg !920
  %tobool1144 = icmp ne i64 %conv1142, 0, !dbg !920
  br i1 %tobool1144, label %do.body1146, label %if.end1149, !dbg !920

do.body1146:                                      ; preds = %if.then1129
  %889 = load %struct.http_parser** %parser.addr, align 8, !dbg !922
  %890 = bitcast %struct.http_parser* %889 to i8*, !dbg !922
  %bf.field.offs1147 = getelementptr i8* %890, i32 20, !dbg !922
  %891 = bitcast i8* %bf.field.offs1147 to i32*, !dbg !922
  %892 = load i32* %891, align 4, !dbg !922
  %893 = and i32 %892, -2130706433, !dbg !922
  %894 = or i32 %893, 33554432, !dbg !922
  store i32 %894, i32* %891, align 4, !dbg !922
  br label %if.end1149, !dbg !922

if.end1149:                                       ; preds = %do.body1146, %if.then1129
  %895 = load %struct.http_parser** %parser.addr, align 8, !dbg !922
  %896 = bitcast %struct.http_parser* %895 to i32*, !dbg !922
  %897 = load i32* %896, align 8, !dbg !922
  %int_cast_to_i6452 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6452), !dbg !922
  %898 = lshr i32 %897, 9, !dbg !922
  %bf.clear1150 = and i32 %898, 127, !dbg !922
  store i32 %bf.clear1150, i32* %p_state, align 4, !dbg !922
  %899 = load %struct.http_parser** %parser.addr, align 8, !dbg !922
  %900 = bitcast %struct.http_parser* %899 to i8*, !dbg !922
  %bf.field.offs1151 = getelementptr i8* %900, i32 20, !dbg !922
  %901 = bitcast i8* %bf.field.offs1151 to i32*, !dbg !922
  %902 = load i32* %901, align 4, !dbg !922
  %int_cast_to_i6453 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6453), !dbg !922
  %903 = lshr i32 %902, 24, !dbg !922
  %bf.clear1152 = and i32 %903, 127, !dbg !922
  %cmp1153 = icmp ne i32 %bf.clear1152, 0, !dbg !922
  %lnot1155 = xor i1 %cmp1153, true, !dbg !922
  %lnot1157 = xor i1 %lnot1155, true, !dbg !922
  %lnot.ext1158 = zext i1 %lnot1157 to i32, !dbg !922
  %conv1159 = sext i32 %lnot.ext1158 to i64, !dbg !922
  %tobool1161 = icmp ne i64 %conv1159, 0, !dbg !922
  br i1 %tobool1161, label %if.then1162, label %if.end1168, !dbg !922

if.then1162:                                      ; preds = %if.end1149
  %904 = load i8** %p, align 8, !dbg !925
  %905 = load i8** %data.addr, align 8, !dbg !925
  %sub.ptr.lhs.cast1163 = ptrtoint i8* %904 to i64, !dbg !925
  %sub.ptr.rhs.cast1164 = ptrtoint i8* %905 to i64, !dbg !925
  %sub.ptr.sub1165 = sub i64 %sub.ptr.lhs.cast1163, %sub.ptr.rhs.cast1164, !dbg !925
  %add1166 = add nsw i64 %sub.ptr.sub1165, 1, !dbg !925
  store i64 %add1166, i64* %retval, !dbg !925
  br label %do.end3744, !dbg !925

if.end1168:                                       ; preds = %if.end1149, %if.then1120
  store i8* null, i8** %url_mark, align 8, !dbg !925
  br label %for.inc3405, !dbg !925

sw.bb1171:                                        ; preds = %sw.bb1108, %sw.bb1108
  %906 = load %struct.http_parser** %parser.addr, align 8, !dbg !927
  %http_major1172 = getelementptr inbounds %struct.http_parser* %906, i32 0, i32 6, !dbg !927
  store i16 0, i16* %http_major1172, align 2, !dbg !927
  %907 = load %struct.http_parser** %parser.addr, align 8, !dbg !928
  %http_minor1173 = getelementptr inbounds %struct.http_parser* %907, i32 0, i32 7, !dbg !928
  store i16 9, i16* %http_minor1173, align 2, !dbg !928
  %908 = load i8* %ch, align 1, !dbg !929
  %conv1174 = sext i8 %908 to i32, !dbg !929
  %cmp1175 = icmp eq i32 %conv1174, 13, !dbg !929
  %cond = select i1 %cmp1175, i32 41, i32 42, !dbg !929
  store i32 %cond, i32* %p_state, align 4, !dbg !929
  %909 = load %struct.http_parser** %parser.addr, align 8, !dbg !930
  %910 = bitcast %struct.http_parser* %909 to i8*, !dbg !930
  %bf.field.offs1178 = getelementptr i8* %910, i32 20, !dbg !930
  %911 = bitcast i8* %bf.field.offs1178 to i32*, !dbg !930
  %912 = load i32* %911, align 4, !dbg !930
  %int_cast_to_i6454 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6454), !dbg !930
  %913 = lshr i32 %912, 24, !dbg !930
  %bf.clear1179 = and i32 %913, 127, !dbg !930
  %cmp1180 = icmp eq i32 %bf.clear1179, 0, !dbg !930
  br i1 %cmp1180, label %cond.end1184, label %cond.false1183, !dbg !930

cond.false1183:                                   ; preds = %sw.bb1171
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1135, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !930

cond.end1184:                                     ; preds = %sw.bb1171
  %914 = load i8** %url_mark, align 8, !dbg !930
  %tobool1185 = icmp ne i8* %914, null, !dbg !930
  br i1 %tobool1185, label %if.then1186, label %for.inc3405, !dbg !930

if.then1186:                                      ; preds = %cond.end1184
  %915 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !932
  %on_url1187 = getelementptr inbounds %struct.http_parser_settings* %915, i32 0, i32 1, !dbg !932
  %916 = load i32 (%struct.http_parser*, i8*, i64)** %on_url1187, align 8, !dbg !932
  %tobool1188 = icmp ne i32 (%struct.http_parser*, i8*, i64)* %916, null, !dbg !932
  %lnot1189 = xor i1 %tobool1188, true, !dbg !932
  %lnot1191 = xor i1 %lnot1189, true, !dbg !932
  %lnot.ext1192 = zext i1 %lnot1191 to i32, !dbg !932
  %conv1193 = sext i32 %lnot.ext1192 to i64, !dbg !932
  %tobool1195 = icmp ne i64 %conv1193, 0, !dbg !932
  br i1 %tobool1195, label %if.then1196, label %if.end1235, !dbg !932

if.then1196:                                      ; preds = %if.then1186
  %917 = load i32* %p_state, align 4, !dbg !934
  %918 = load %struct.http_parser** %parser.addr, align 8, !dbg !934
  %bf.value1197 = and i32 %917, 127, !dbg !934
  %919 = bitcast %struct.http_parser* %918 to i32*, !dbg !934
  %920 = and i32 %bf.value1197, 127, !dbg !934
  %int_cast_to_i6455 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6455), !dbg !934
  %921 = shl i32 %920, 9, !dbg !934
  %922 = load i32* %919, align 8, !dbg !934
  %923 = and i32 %922, -65025, !dbg !934
  %924 = or i32 %923, %921, !dbg !934
  store i32 %924, i32* %919, align 8, !dbg !934
  %925 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !934
  %on_url1198 = getelementptr inbounds %struct.http_parser_settings* %925, i32 0, i32 1, !dbg !934
  %926 = load i32 (%struct.http_parser*, i8*, i64)** %on_url1198, align 8, !dbg !934
  %927 = load %struct.http_parser** %parser.addr, align 8, !dbg !934
  %928 = load i8** %url_mark, align 8, !dbg !934
  %929 = load i8** %p, align 8, !dbg !934
  %930 = load i8** %url_mark, align 8, !dbg !934
  %sub.ptr.lhs.cast1199 = ptrtoint i8* %929 to i64, !dbg !934
  %sub.ptr.rhs.cast1200 = ptrtoint i8* %930 to i64, !dbg !934
  %sub.ptr.sub1201 = sub i64 %sub.ptr.lhs.cast1199, %sub.ptr.rhs.cast1200, !dbg !934
  %call1202 = call i32 %926(%struct.http_parser* %927, i8* %928, i64 %sub.ptr.sub1201), !dbg !934
  %cmp1203 = icmp ne i32 0, %call1202, !dbg !934
  %lnot1205 = xor i1 %cmp1203, true, !dbg !934
  %lnot1207 = xor i1 %lnot1205, true, !dbg !934
  %lnot.ext1208 = zext i1 %lnot1207 to i32, !dbg !934
  %conv1209 = sext i32 %lnot.ext1208 to i64, !dbg !934
  %tobool1211 = icmp ne i64 %conv1209, 0, !dbg !934
  br i1 %tobool1211, label %do.body1213, label %if.end1216, !dbg !934

do.body1213:                                      ; preds = %if.then1196
  %931 = load %struct.http_parser** %parser.addr, align 8, !dbg !936
  %932 = bitcast %struct.http_parser* %931 to i8*, !dbg !936
  %bf.field.offs1214 = getelementptr i8* %932, i32 20, !dbg !936
  %933 = bitcast i8* %bf.field.offs1214 to i32*, !dbg !936
  %934 = load i32* %933, align 4, !dbg !936
  %935 = and i32 %934, -2130706433, !dbg !936
  %936 = or i32 %935, 33554432, !dbg !936
  store i32 %936, i32* %933, align 4, !dbg !936
  br label %if.end1216, !dbg !936

if.end1216:                                       ; preds = %do.body1213, %if.then1196
  %937 = load %struct.http_parser** %parser.addr, align 8, !dbg !936
  %938 = bitcast %struct.http_parser* %937 to i32*, !dbg !936
  %939 = load i32* %938, align 8, !dbg !936
  %int_cast_to_i6456 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6456), !dbg !936
  %940 = lshr i32 %939, 9, !dbg !936
  %bf.clear1217 = and i32 %940, 127, !dbg !936
  store i32 %bf.clear1217, i32* %p_state, align 4, !dbg !936
  %941 = load %struct.http_parser** %parser.addr, align 8, !dbg !936
  %942 = bitcast %struct.http_parser* %941 to i8*, !dbg !936
  %bf.field.offs1218 = getelementptr i8* %942, i32 20, !dbg !936
  %943 = bitcast i8* %bf.field.offs1218 to i32*, !dbg !936
  %944 = load i32* %943, align 4, !dbg !936
  %int_cast_to_i6457 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6457), !dbg !936
  %945 = lshr i32 %944, 24, !dbg !936
  %bf.clear1219 = and i32 %945, 127, !dbg !936
  %cmp1220 = icmp ne i32 %bf.clear1219, 0, !dbg !936
  %lnot1222 = xor i1 %cmp1220, true, !dbg !936
  %lnot1224 = xor i1 %lnot1222, true, !dbg !936
  %lnot.ext1225 = zext i1 %lnot1224 to i32, !dbg !936
  %conv1226 = sext i32 %lnot.ext1225 to i64, !dbg !936
  %tobool1228 = icmp ne i64 %conv1226, 0, !dbg !936
  br i1 %tobool1228, label %if.then1229, label %if.end1235, !dbg !936

if.then1229:                                      ; preds = %if.end1216
  %946 = load i8** %p, align 8, !dbg !939
  %947 = load i8** %data.addr, align 8, !dbg !939
  %sub.ptr.lhs.cast1230 = ptrtoint i8* %946 to i64, !dbg !939
  %sub.ptr.rhs.cast1231 = ptrtoint i8* %947 to i64, !dbg !939
  %sub.ptr.sub1232 = sub i64 %sub.ptr.lhs.cast1230, %sub.ptr.rhs.cast1231, !dbg !939
  %add1233 = add nsw i64 %sub.ptr.sub1232, 1, !dbg !939
  store i64 %add1233, i64* %retval, !dbg !939
  br label %do.end3744, !dbg !939

if.end1235:                                       ; preds = %if.end1216, %if.then1186
  store i8* null, i8** %url_mark, align 8, !dbg !939
  br label %for.inc3405, !dbg !939

sw.default1238:                                   ; preds = %sw.bb1108
  %948 = load i32* %p_state, align 4, !dbg !941
  %949 = load i8* %ch, align 1, !dbg !941
  %call1239 = call i32 @parse_url_char(i32 %948, i8 signext %949), !dbg !941
  store i32 %call1239, i32* %p_state, align 4, !dbg !941
  %950 = load i32* %p_state, align 4, !dbg !942
  %cmp1240 = icmp eq i32 %950, 1, !dbg !942
  %lnot1242 = xor i1 %cmp1240, true, !dbg !942
  %lnot1244 = xor i1 %lnot1242, true, !dbg !942
  %lnot.ext1245 = zext i1 %lnot1244 to i32, !dbg !942
  %conv1246 = sext i32 %lnot.ext1245 to i64, !dbg !942
  %tobool1248 = icmp ne i64 %conv1246, 0, !dbg !942
  br i1 %tobool1248, label %do.body1250, label %for.inc3405, !dbg !942

do.body1250:                                      ; preds = %sw.default1238
  %951 = load %struct.http_parser** %parser.addr, align 8, !dbg !943
  %952 = bitcast %struct.http_parser* %951 to i8*, !dbg !943
  %bf.field.offs1251 = getelementptr i8* %952, i32 20, !dbg !943
  %953 = bitcast i8* %bf.field.offs1251 to i32*, !dbg !943
  %954 = load i32* %953, align 4, !dbg !943
  %955 = and i32 %954, -2130706433, !dbg !943
  %956 = or i32 %955, 251658240, !dbg !943
  store i32 %956, i32* %953, align 4, !dbg !943
  br label %error, !dbg !946

sw.bb1255:                                        ; preds = %reexecute
  %957 = load i8* %ch, align 1, !dbg !947
  %conv1256 = sext i8 %957 to i32, !dbg !947
  switch i32 %conv1256, label %do.body1260 [
    i32 72, label %sw.bb1257
    i32 32, label %for.inc3405
  ], !dbg !947

sw.bb1257:                                        ; preds = %sw.bb1255
  store i32 33, i32* %p_state, align 4, !dbg !948
  br label %for.inc3405, !dbg !950

do.body1260:                                      ; preds = %sw.bb1255
  %958 = load %struct.http_parser** %parser.addr, align 8, !dbg !951
  %959 = bitcast %struct.http_parser* %958 to i8*, !dbg !951
  %bf.field.offs1261 = getelementptr i8* %959, i32 20, !dbg !951
  %960 = bitcast i8* %bf.field.offs1261 to i32*, !dbg !951
  %961 = load i32* %960, align 4, !dbg !951
  %962 = and i32 %961, -2130706433, !dbg !951
  %963 = or i32 %962, 419430400, !dbg !951
  store i32 %963, i32* %960, align 4, !dbg !951
  br label %error, !dbg !953

do.body1265:                                      ; preds = %reexecute
  %964 = load i8* %ch, align 1, !dbg !954
  %conv1266 = sext i8 %964 to i32, !dbg !954
  %cmp1267 = icmp ne i32 %conv1266, 84, !dbg !954
  br i1 %cmp1267, label %do.body1270, label %do.end1274, !dbg !954

do.body1270:                                      ; preds = %do.body1265
  %965 = load %struct.http_parser** %parser.addr, align 8, !dbg !956
  %966 = bitcast %struct.http_parser* %965 to i8*, !dbg !956
  %bf.field.offs1271 = getelementptr i8* %966, i32 20, !dbg !956
  %967 = bitcast i8* %bf.field.offs1271 to i32*, !dbg !956
  %968 = load i32* %967, align 4, !dbg !956
  %969 = and i32 %968, -2130706433, !dbg !956
  %970 = or i32 %969, 452984832, !dbg !956
  store i32 %970, i32* %967, align 4, !dbg !956
  br label %error, !dbg !956

do.end1274:                                       ; preds = %do.body1265
  store i32 34, i32* %p_state, align 4, !dbg !959
  br label %for.inc3405, !dbg !960

do.body1276:                                      ; preds = %reexecute
  %971 = load i8* %ch, align 1, !dbg !961
  %conv1277 = sext i8 %971 to i32, !dbg !961
  %cmp1278 = icmp ne i32 %conv1277, 84, !dbg !961
  br i1 %cmp1278, label %do.body1281, label %do.end1285, !dbg !961

do.body1281:                                      ; preds = %do.body1276
  %972 = load %struct.http_parser** %parser.addr, align 8, !dbg !963
  %973 = bitcast %struct.http_parser* %972 to i8*, !dbg !963
  %bf.field.offs1282 = getelementptr i8* %973, i32 20, !dbg !963
  %974 = bitcast i8* %bf.field.offs1282 to i32*, !dbg !963
  %975 = load i32* %974, align 4, !dbg !963
  %976 = and i32 %975, -2130706433, !dbg !963
  %977 = or i32 %976, 452984832, !dbg !963
  store i32 %977, i32* %974, align 4, !dbg !963
  br label %error, !dbg !963

do.end1285:                                       ; preds = %do.body1276
  store i32 35, i32* %p_state, align 4, !dbg !966
  br label %for.inc3405, !dbg !967

do.body1287:                                      ; preds = %reexecute
  %978 = load i8* %ch, align 1, !dbg !968
  %conv1288 = sext i8 %978 to i32, !dbg !968
  %cmp1289 = icmp ne i32 %conv1288, 80, !dbg !968
  br i1 %cmp1289, label %do.body1292, label %do.end1296, !dbg !968

do.body1292:                                      ; preds = %do.body1287
  %979 = load %struct.http_parser** %parser.addr, align 8, !dbg !970
  %980 = bitcast %struct.http_parser* %979 to i8*, !dbg !970
  %bf.field.offs1293 = getelementptr i8* %980, i32 20, !dbg !970
  %981 = bitcast i8* %bf.field.offs1293 to i32*, !dbg !970
  %982 = load i32* %981, align 4, !dbg !970
  %983 = and i32 %982, -2130706433, !dbg !970
  %984 = or i32 %983, 452984832, !dbg !970
  store i32 %984, i32* %981, align 4, !dbg !970
  br label %error, !dbg !970

do.end1296:                                       ; preds = %do.body1287
  store i32 36, i32* %p_state, align 4, !dbg !973
  br label %for.inc3405, !dbg !974

do.body1298:                                      ; preds = %reexecute
  %985 = load i8* %ch, align 1, !dbg !975
  %conv1299 = sext i8 %985 to i32, !dbg !975
  %cmp1300 = icmp ne i32 %conv1299, 47, !dbg !975
  br i1 %cmp1300, label %do.body1303, label %do.end1307, !dbg !975

do.body1303:                                      ; preds = %do.body1298
  %986 = load %struct.http_parser** %parser.addr, align 8, !dbg !977
  %987 = bitcast %struct.http_parser* %986 to i8*, !dbg !977
  %bf.field.offs1304 = getelementptr i8* %987, i32 20, !dbg !977
  %988 = bitcast i8* %bf.field.offs1304 to i32*, !dbg !977
  %989 = load i32* %988, align 4, !dbg !977
  %990 = and i32 %989, -2130706433, !dbg !977
  %991 = or i32 %990, 452984832, !dbg !977
  store i32 %991, i32* %988, align 4, !dbg !977
  br label %error, !dbg !977

do.end1307:                                       ; preds = %do.body1298
  store i32 37, i32* %p_state, align 4, !dbg !980
  br label %for.inc3405, !dbg !981

sw.bb1308:                                        ; preds = %reexecute
  %992 = load i8* %ch, align 1, !dbg !982
  %conv1309 = sext i8 %992 to i32, !dbg !982
  %cmp1310 = icmp slt i32 %conv1309, 49, !dbg !982
  br i1 %cmp1310, label %lor.end1316, label %lor.rhs1312, !dbg !982

lor.rhs1312:                                      ; preds = %sw.bb1308
  %993 = load i8* %ch, align 1, !dbg !982
  %conv1313 = sext i8 %993 to i32, !dbg !982
  %cmp1314 = icmp sgt i32 %conv1313, 57, !dbg !982
  br label %lor.end1316, !dbg !982

lor.end1316:                                      ; preds = %lor.rhs1312, %sw.bb1308
  %994 = phi i1 [ true, %sw.bb1308 ], [ %cmp1314, %lor.rhs1312 ]
  %lnot1317 = xor i1 %994, true, !dbg !982
  %lnot1319 = xor i1 %lnot1317, true, !dbg !982
  %lnot.ext1320 = zext i1 %lnot1319 to i32, !dbg !982
  %conv1321 = sext i32 %lnot.ext1320 to i64, !dbg !982
  %tobool1323 = icmp ne i64 %conv1321, 0, !dbg !982
  br i1 %tobool1323, label %do.body1325, label %if.end1328, !dbg !982

do.body1325:                                      ; preds = %lor.end1316
  %995 = load %struct.http_parser** %parser.addr, align 8, !dbg !983
  %996 = bitcast %struct.http_parser* %995 to i8*, !dbg !983
  %bf.field.offs1326 = getelementptr i8* %996, i32 20, !dbg !983
  %997 = bitcast i8* %bf.field.offs1326 to i32*, !dbg !983
  %998 = load i32* %997, align 4, !dbg !983
  %999 = and i32 %998, -2130706433, !dbg !983
  %1000 = or i32 %999, 201326592, !dbg !983
  store i32 %1000, i32* %997, align 4, !dbg !983
  br label %error, !dbg !986

if.end1328:                                       ; preds = %lor.end1316
  %1001 = load i8* %ch, align 1, !dbg !987
  %conv1329 = sext i8 %1001 to i32, !dbg !987
  %sub1330 = sub nsw i32 %conv1329, 48, !dbg !987
  %conv1331 = trunc i32 %sub1330 to i16, !dbg !987
  %1002 = load %struct.http_parser** %parser.addr, align 8, !dbg !987
  %http_major1332 = getelementptr inbounds %struct.http_parser* %1002, i32 0, i32 6, !dbg !987
  store i16 %conv1331, i16* %http_major1332, align 2, !dbg !987
  store i32 38, i32* %p_state, align 4, !dbg !988
  br label %for.inc3405, !dbg !989

sw.bb1333:                                        ; preds = %reexecute
  %1003 = load i8* %ch, align 1, !dbg !990
  %conv1334 = sext i8 %1003 to i32, !dbg !990
  %cmp1335 = icmp eq i32 %conv1334, 46, !dbg !990
  br i1 %cmp1335, label %if.then1337, label %if.end1338, !dbg !990

if.then1337:                                      ; preds = %sw.bb1333
  store i32 39, i32* %p_state, align 4, !dbg !992
  br label %for.inc3405, !dbg !994

if.end1338:                                       ; preds = %sw.bb1333
  %1004 = load i8* %ch, align 1, !dbg !995
  %conv1339 = sext i8 %1004 to i32, !dbg !995
  %cmp1340 = icmp sge i32 %conv1339, 48, !dbg !995
  br i1 %cmp1340, label %land.rhs1342, label %land.end1346, !dbg !995

land.rhs1342:                                     ; preds = %if.end1338
  %1005 = load i8* %ch, align 1, !dbg !995
  %conv1343 = sext i8 %1005 to i32, !dbg !995
  %cmp1344 = icmp sle i32 %conv1343, 57, !dbg !995
  br label %land.end1346

land.end1346:                                     ; preds = %land.rhs1342, %if.end1338
  %1006 = phi i1 [ false, %if.end1338 ], [ %cmp1344, %land.rhs1342 ]
  %lnot1347 = xor i1 %1006, true
  %lnot1349 = xor i1 %lnot1347, true
  %lnot1351 = xor i1 %lnot1349, true
  %lnot.ext1352 = zext i1 %lnot1351 to i32
  %conv1353 = sext i32 %lnot.ext1352 to i64
  %tobool1355 = icmp ne i64 %conv1353, 0
  %1007 = load %struct.http_parser** %parser.addr, align 8, !dbg !996
  br i1 %tobool1355, label %do.body1357, label %if.end1360

do.body1357:                                      ; preds = %land.end1346
  %1008 = bitcast %struct.http_parser* %1007 to i8*, !dbg !996
  %bf.field.offs1358 = getelementptr i8* %1008, i32 20, !dbg !996
  %1009 = bitcast i8* %bf.field.offs1358 to i32*, !dbg !996
  %1010 = load i32* %1009, align 4, !dbg !996
  %1011 = and i32 %1010, -2130706433, !dbg !996
  %1012 = or i32 %1011, 201326592, !dbg !996
  store i32 %1012, i32* %1009, align 4, !dbg !996
  br label %error, !dbg !999

if.end1360:                                       ; preds = %land.end1346
  %http_major1361 = getelementptr inbounds %struct.http_parser* %1007, i32 0, i32 6, !dbg !1000
  %1013 = load i16* %http_major1361, align 2, !dbg !1000
  %conv1362 = zext i16 %1013 to i32, !dbg !1000
  %mul1363 = mul nsw i32 %conv1362, 10, !dbg !1000
  %conv1364 = trunc i32 %mul1363 to i16, !dbg !1000
  store i16 %conv1364, i16* %http_major1361, align 2, !dbg !1000
  %1014 = load i8* %ch, align 1, !dbg !1001
  %conv1365 = sext i8 %1014 to i32, !dbg !1001
  %sub1366 = sub nsw i32 %conv1365, 48, !dbg !1001
  %1015 = load %struct.http_parser** %parser.addr, align 8, !dbg !1001
  %http_major1367 = getelementptr inbounds %struct.http_parser* %1015, i32 0, i32 6, !dbg !1001
  %1016 = load i16* %http_major1367, align 2, !dbg !1001
  %conv1368 = zext i16 %1016 to i32, !dbg !1001
  %add1369 = add nsw i32 %conv1368, %sub1366, !dbg !1001
  %conv1370 = trunc i32 %add1369 to i16, !dbg !1001
  store i16 %conv1370, i16* %http_major1367, align 2, !dbg !1001
  %1017 = load %struct.http_parser** %parser.addr, align 8, !dbg !1002
  %http_major1371 = getelementptr inbounds %struct.http_parser* %1017, i32 0, i32 6, !dbg !1002
  %1018 = load i16* %http_major1371, align 2, !dbg !1002
  %conv1372 = zext i16 %1018 to i32, !dbg !1002
  %cmp1373 = icmp sgt i32 %conv1372, 999, !dbg !1002
  %lnot1375 = xor i1 %cmp1373, true, !dbg !1002
  %lnot1377 = xor i1 %lnot1375, true, !dbg !1002
  %lnot.ext1378 = zext i1 %lnot1377 to i32, !dbg !1002
  %conv1379 = sext i32 %lnot.ext1378 to i64, !dbg !1002
  %tobool1381 = icmp ne i64 %conv1379, 0, !dbg !1002
  br i1 %tobool1381, label %do.body1383, label %for.inc3405, !dbg !1002

do.body1383:                                      ; preds = %if.end1360
  %1019 = load %struct.http_parser** %parser.addr, align 8, !dbg !1003
  %1020 = bitcast %struct.http_parser* %1019 to i8*, !dbg !1003
  %bf.field.offs1384 = getelementptr i8* %1020, i32 20, !dbg !1003
  %1021 = bitcast i8* %bf.field.offs1384 to i32*, !dbg !1003
  %1022 = load i32* %1021, align 4, !dbg !1003
  %1023 = and i32 %1022, -2130706433, !dbg !1003
  %1024 = or i32 %1023, 201326592, !dbg !1003
  store i32 %1024, i32* %1021, align 4, !dbg !1003
  br label %error, !dbg !1006

sw.bb1387:                                        ; preds = %reexecute
  %1025 = load i8* %ch, align 1, !dbg !1007
  %conv1388 = sext i8 %1025 to i32, !dbg !1007
  %cmp1389 = icmp sge i32 %conv1388, 48, !dbg !1007
  br i1 %cmp1389, label %land.rhs1391, label %land.end1395, !dbg !1007

land.rhs1391:                                     ; preds = %sw.bb1387
  %1026 = load i8* %ch, align 1, !dbg !1007
  %conv1392 = sext i8 %1026 to i32, !dbg !1007
  %cmp1393 = icmp sle i32 %conv1392, 57, !dbg !1007
  br label %land.end1395

land.end1395:                                     ; preds = %land.rhs1391, %sw.bb1387
  %1027 = phi i1 [ false, %sw.bb1387 ], [ %cmp1393, %land.rhs1391 ]
  %lnot1396 = xor i1 %1027, true
  %lnot1398 = xor i1 %lnot1396, true
  %lnot1400 = xor i1 %lnot1398, true
  %lnot.ext1401 = zext i1 %lnot1400 to i32
  %conv1402 = sext i32 %lnot.ext1401 to i64
  %tobool1404 = icmp ne i64 %conv1402, 0
  br i1 %tobool1404, label %do.body1406, label %if.end1409

do.body1406:                                      ; preds = %land.end1395
  %1028 = load %struct.http_parser** %parser.addr, align 8, !dbg !1008
  %1029 = bitcast %struct.http_parser* %1028 to i8*, !dbg !1008
  %bf.field.offs1407 = getelementptr i8* %1029, i32 20, !dbg !1008
  %1030 = bitcast i8* %bf.field.offs1407 to i32*, !dbg !1008
  %1031 = load i32* %1030, align 4, !dbg !1008
  %1032 = and i32 %1031, -2130706433, !dbg !1008
  %1033 = or i32 %1032, 201326592, !dbg !1008
  store i32 %1033, i32* %1030, align 4, !dbg !1008
  br label %error, !dbg !1011

if.end1409:                                       ; preds = %land.end1395
  %1034 = load i8* %ch, align 1, !dbg !1012
  %conv1410 = sext i8 %1034 to i32, !dbg !1012
  %sub1411 = sub nsw i32 %conv1410, 48, !dbg !1012
  %conv1412 = trunc i32 %sub1411 to i16, !dbg !1012
  %1035 = load %struct.http_parser** %parser.addr, align 8, !dbg !1012
  %http_minor1413 = getelementptr inbounds %struct.http_parser* %1035, i32 0, i32 7, !dbg !1012
  store i16 %conv1412, i16* %http_minor1413, align 2, !dbg !1012
  store i32 40, i32* %p_state, align 4, !dbg !1013
  br label %for.inc3405, !dbg !1014

sw.bb1414:                                        ; preds = %reexecute
  %1036 = load i8* %ch, align 1, !dbg !1015
  %conv1415 = sext i8 %1036 to i32, !dbg !1015
  %cmp1416 = icmp eq i32 %conv1415, 13, !dbg !1015
  br i1 %cmp1416, label %if.then1418, label %if.end1419, !dbg !1015

if.then1418:                                      ; preds = %sw.bb1414
  store i32 41, i32* %p_state, align 4, !dbg !1017
  br label %for.inc3405, !dbg !1019

if.end1419:                                       ; preds = %sw.bb1414
  %1037 = load i8* %ch, align 1, !dbg !1020
  %conv1420 = sext i8 %1037 to i32, !dbg !1020
  %cmp1421 = icmp eq i32 %conv1420, 10, !dbg !1020
  br i1 %cmp1421, label %if.then1423, label %if.end1424, !dbg !1020

if.then1423:                                      ; preds = %if.end1419
  store i32 42, i32* %p_state, align 4, !dbg !1021
  br label %for.inc3405, !dbg !1023

if.end1424:                                       ; preds = %if.end1419
  %1038 = load i8* %ch, align 1, !dbg !1024
  %conv1425 = sext i8 %1038 to i32, !dbg !1024
  %cmp1426 = icmp sge i32 %conv1425, 48, !dbg !1024
  br i1 %cmp1426, label %land.rhs1428, label %land.end1432, !dbg !1024

land.rhs1428:                                     ; preds = %if.end1424
  %1039 = load i8* %ch, align 1, !dbg !1024
  %conv1429 = sext i8 %1039 to i32, !dbg !1024
  %cmp1430 = icmp sle i32 %conv1429, 57, !dbg !1024
  br label %land.end1432

land.end1432:                                     ; preds = %land.rhs1428, %if.end1424
  %1040 = phi i1 [ false, %if.end1424 ], [ %cmp1430, %land.rhs1428 ]
  %lnot1433 = xor i1 %1040, true
  %lnot1435 = xor i1 %lnot1433, true
  %lnot1437 = xor i1 %lnot1435, true
  %lnot.ext1438 = zext i1 %lnot1437 to i32
  %conv1439 = sext i32 %lnot.ext1438 to i64
  %tobool1441 = icmp ne i64 %conv1439, 0
  %1041 = load %struct.http_parser** %parser.addr, align 8, !dbg !1025
  br i1 %tobool1441, label %do.body1443, label %if.end1446

do.body1443:                                      ; preds = %land.end1432
  %1042 = bitcast %struct.http_parser* %1041 to i8*, !dbg !1025
  %bf.field.offs1444 = getelementptr i8* %1042, i32 20, !dbg !1025
  %1043 = bitcast i8* %bf.field.offs1444 to i32*, !dbg !1025
  %1044 = load i32* %1043, align 4, !dbg !1025
  %1045 = and i32 %1044, -2130706433, !dbg !1025
  %1046 = or i32 %1045, 201326592, !dbg !1025
  store i32 %1046, i32* %1043, align 4, !dbg !1025
  br label %error, !dbg !1028

if.end1446:                                       ; preds = %land.end1432
  %http_minor1447 = getelementptr inbounds %struct.http_parser* %1041, i32 0, i32 7, !dbg !1029
  %1047 = load i16* %http_minor1447, align 2, !dbg !1029
  %conv1448 = zext i16 %1047 to i32, !dbg !1029
  %mul1449 = mul nsw i32 %conv1448, 10, !dbg !1029
  %conv1450 = trunc i32 %mul1449 to i16, !dbg !1029
  store i16 %conv1450, i16* %http_minor1447, align 2, !dbg !1029
  %1048 = load i8* %ch, align 1, !dbg !1030
  %conv1451 = sext i8 %1048 to i32, !dbg !1030
  %sub1452 = sub nsw i32 %conv1451, 48, !dbg !1030
  %1049 = load %struct.http_parser** %parser.addr, align 8, !dbg !1030
  %http_minor1453 = getelementptr inbounds %struct.http_parser* %1049, i32 0, i32 7, !dbg !1030
  %1050 = load i16* %http_minor1453, align 2, !dbg !1030
  %conv1454 = zext i16 %1050 to i32, !dbg !1030
  %add1455 = add nsw i32 %conv1454, %sub1452, !dbg !1030
  %conv1456 = trunc i32 %add1455 to i16, !dbg !1030
  store i16 %conv1456, i16* %http_minor1453, align 2, !dbg !1030
  %1051 = load %struct.http_parser** %parser.addr, align 8, !dbg !1031
  %http_minor1457 = getelementptr inbounds %struct.http_parser* %1051, i32 0, i32 7, !dbg !1031
  %1052 = load i16* %http_minor1457, align 2, !dbg !1031
  %conv1458 = zext i16 %1052 to i32, !dbg !1031
  %cmp1459 = icmp sgt i32 %conv1458, 999, !dbg !1031
  %lnot1461 = xor i1 %cmp1459, true, !dbg !1031
  %lnot1463 = xor i1 %lnot1461, true, !dbg !1031
  %lnot.ext1464 = zext i1 %lnot1463 to i32, !dbg !1031
  %conv1465 = sext i32 %lnot.ext1464 to i64, !dbg !1031
  %tobool1467 = icmp ne i64 %conv1465, 0, !dbg !1031
  br i1 %tobool1467, label %do.body1469, label %for.inc3405, !dbg !1031

do.body1469:                                      ; preds = %if.end1446
  %1053 = load %struct.http_parser** %parser.addr, align 8, !dbg !1032
  %1054 = bitcast %struct.http_parser* %1053 to i8*, !dbg !1032
  %bf.field.offs1470 = getelementptr i8* %1054, i32 20, !dbg !1032
  %1055 = bitcast i8* %bf.field.offs1470 to i32*, !dbg !1032
  %1056 = load i32* %1055, align 4, !dbg !1032
  %1057 = and i32 %1056, -2130706433, !dbg !1032
  %1058 = or i32 %1057, 201326592, !dbg !1032
  store i32 %1058, i32* %1055, align 4, !dbg !1032
  br label %error, !dbg !1035

sw.bb1473:                                        ; preds = %reexecute
  %1059 = load i8* %ch, align 1, !dbg !1036
  %conv1474 = sext i8 %1059 to i32, !dbg !1036
  %cmp1475 = icmp ne i32 %conv1474, 10, !dbg !1036
  %lnot1477 = xor i1 %cmp1475, true, !dbg !1036
  %lnot1479 = xor i1 %lnot1477, true, !dbg !1036
  %lnot.ext1480 = zext i1 %lnot1479 to i32, !dbg !1036
  %conv1481 = sext i32 %lnot.ext1480 to i64, !dbg !1036
  %tobool1483 = icmp ne i64 %conv1481, 0, !dbg !1036
  br i1 %tobool1483, label %do.body1485, label %if.end1488, !dbg !1036

do.body1485:                                      ; preds = %sw.bb1473
  %1060 = load %struct.http_parser** %parser.addr, align 8, !dbg !1038
  %1061 = bitcast %struct.http_parser* %1060 to i8*, !dbg !1038
  %bf.field.offs1486 = getelementptr i8* %1061, i32 20, !dbg !1038
  %1062 = bitcast i8* %bf.field.offs1486 to i32*, !dbg !1038
  %1063 = load i32* %1062, align 4, !dbg !1038
  %1064 = and i32 %1063, -2130706433, !dbg !1038
  %1065 = or i32 %1064, 352321536, !dbg !1038
  store i32 %1065, i32* %1062, align 4, !dbg !1038
  br label %error, !dbg !1041

if.end1488:                                       ; preds = %sw.bb1473
  store i32 42, i32* %p_state, align 4, !dbg !1042
  br label %for.inc3405, !dbg !1043

sw.bb1489:                                        ; preds = %reexecute
  %1066 = load i8* %ch, align 1, !dbg !1044
  %conv1490 = sext i8 %1066 to i32, !dbg !1044
  %cmp1491 = icmp eq i32 %conv1490, 13, !dbg !1044
  br i1 %cmp1491, label %if.then1493, label %if.end1494, !dbg !1044

if.then1493:                                      ; preds = %sw.bb1489
  store i32 55, i32* %p_state, align 4, !dbg !1046
  br label %for.inc3405, !dbg !1048

if.end1494:                                       ; preds = %sw.bb1489
  %1067 = load i8* %ch, align 1, !dbg !1049
  %conv1495 = sext i8 %1067 to i32, !dbg !1049
  %cmp1496 = icmp eq i32 %conv1495, 10, !dbg !1049
  br i1 %cmp1496, label %if.then1498, label %if.end1499, !dbg !1049

if.then1498:                                      ; preds = %if.end1494
  store i32 55, i32* %p_state, align 4, !dbg !1050
  br label %reexecute, !dbg !1052

if.end1499:                                       ; preds = %if.end1494
  %1068 = load i8* %ch, align 1, !dbg !1053
  %idxprom1500 = zext i8 %1068 to i64, !dbg !1053
  %arrayidx1501 = getelementptr inbounds [256 x i8]* @tokens, i32 0, i64 %idxprom1500, !dbg !1053
  %1069 = load i8* %arrayidx1501, align 1, !dbg !1053
  store i8 %1069, i8* %c, align 1, !dbg !1053
  %1070 = load i8* %c, align 1, !dbg !1054
  %tobool1502 = icmp ne i8 %1070, 0, !dbg !1054
  %lnot1503 = xor i1 %tobool1502, true, !dbg !1054
  %lnot1505 = xor i1 %lnot1503, true, !dbg !1054
  %lnot1507 = xor i1 %lnot1505, true, !dbg !1054
  %lnot.ext1508 = zext i1 %lnot1507 to i32, !dbg !1054
  %conv1509 = sext i32 %lnot.ext1508 to i64, !dbg !1054
  %tobool1511 = icmp ne i64 %conv1509, 0, !dbg !1054
  br i1 %tobool1511, label %do.body1513, label %do.body1517, !dbg !1054

do.body1513:                                      ; preds = %if.end1499
  %1071 = load %struct.http_parser** %parser.addr, align 8, !dbg !1055
  %1072 = bitcast %struct.http_parser* %1071 to i8*, !dbg !1055
  %bf.field.offs1514 = getelementptr i8* %1072, i32 20, !dbg !1055
  %1073 = bitcast i8* %bf.field.offs1514 to i32*, !dbg !1055
  %1074 = load i32* %1073, align 4, !dbg !1055
  %1075 = and i32 %1074, -2130706433, !dbg !1055
  %1076 = or i32 %1075, 369098752, !dbg !1055
  store i32 %1076, i32* %1073, align 4, !dbg !1055
  br label %error, !dbg !1058

do.body1517:                                      ; preds = %if.end1499
  %1077 = load i8** %header_field_mark, align 8, !dbg !1059
  %tobool1518 = icmp ne i8* %1077, null, !dbg !1059
  br i1 %tobool1518, label %do.end1521, label %if.then1519, !dbg !1059

if.then1519:                                      ; preds = %do.body1517
  %1078 = load i8** %p, align 8, !dbg !1061
  store i8* %1078, i8** %header_field_mark, align 8, !dbg !1061
  br label %do.end1521, !dbg !1061

do.end1521:                                       ; preds = %do.body1517, %if.then1519
  %1079 = load %struct.http_parser** %parser.addr, align 8, !dbg !1063
  %1080 = bitcast %struct.http_parser* %1079 to i32*, !dbg !1063
  %1081 = load i32* %1080, align 8, !dbg !1063
  %1082 = and i32 %1081, 16777215, !dbg !1063
  store i32 %1082, i32* %1080, align 8, !dbg !1063
  store i32 43, i32* %p_state, align 4, !dbg !1064
  %1083 = load i8* %c, align 1, !dbg !1065
  %conv1522 = sext i8 %1083 to i32, !dbg !1065
  switch i32 %conv1522, label %sw.default1527 [
    i32 99, label %sw.bb1523
    i32 112, label %sw.bb1524
    i32 116, label %sw.bb1525
    i32 117, label %sw.bb1526
  ], !dbg !1065

sw.bb1523:                                        ; preds = %do.end1521
  %1084 = load %struct.http_parser** %parser.addr, align 8, !dbg !1066
  %1085 = bitcast %struct.http_parser* %1084 to i32*, !dbg !1066
  %1086 = load i32* %1085, align 8, !dbg !1066
  %1087 = and i32 %1086, -16711681, !dbg !1066
  %1088 = or i32 %1087, 65536, !dbg !1066
  store i32 %1088, i32* %1085, align 8, !dbg !1066
  br label %for.inc3405, !dbg !1068

sw.bb1524:                                        ; preds = %do.end1521
  %1089 = load %struct.http_parser** %parser.addr, align 8, !dbg !1069
  %1090 = bitcast %struct.http_parser* %1089 to i32*, !dbg !1069
  %1091 = load i32* %1090, align 8, !dbg !1069
  %1092 = and i32 %1091, -16711681, !dbg !1069
  %1093 = or i32 %1092, 327680, !dbg !1069
  store i32 %1093, i32* %1090, align 8, !dbg !1069
  br label %for.inc3405, !dbg !1070

sw.bb1525:                                        ; preds = %do.end1521
  %1094 = load %struct.http_parser** %parser.addr, align 8, !dbg !1071
  %1095 = bitcast %struct.http_parser* %1094 to i32*, !dbg !1071
  %1096 = load i32* %1095, align 8, !dbg !1071
  %1097 = and i32 %1096, -16711681, !dbg !1071
  %1098 = or i32 %1097, 458752, !dbg !1071
  store i32 %1098, i32* %1095, align 8, !dbg !1071
  br label %for.inc3405, !dbg !1072

sw.bb1526:                                        ; preds = %do.end1521
  %1099 = load %struct.http_parser** %parser.addr, align 8, !dbg !1073
  %1100 = bitcast %struct.http_parser* %1099 to i32*, !dbg !1073
  %1101 = load i32* %1100, align 8, !dbg !1073
  %1102 = and i32 %1101, -16711681, !dbg !1073
  %1103 = or i32 %1102, 524288, !dbg !1073
  store i32 %1103, i32* %1100, align 8, !dbg !1073
  br label %for.inc3405, !dbg !1074

sw.default1527:                                   ; preds = %do.end1521
  %1104 = load %struct.http_parser** %parser.addr, align 8, !dbg !1075
  %1105 = bitcast %struct.http_parser* %1104 to i32*, !dbg !1075
  %1106 = load i32* %1105, align 8, !dbg !1075
  %1107 = and i32 %1106, -16711681, !dbg !1075
  store i32 %1107, i32* %1105, align 8, !dbg !1075
  br label %for.inc3405, !dbg !1076

sw.bb1529:                                        ; preds = %reexecute
  %1108 = load i8** %p, align 8, !dbg !1077
  store i8* %1108, i8** %start, align 8, !dbg !1077
  br label %for.cond1530, !dbg !1079

for.cond1530:                                     ; preds = %for.inc, %sw.bb1529
  %1109 = load i8** %p, align 8, !dbg !1079
  %1110 = load i8** %data.addr, align 8, !dbg !1079
  %1111 = load i64* %len.addr, align 8, !dbg !1079
  %add.ptr1531 = getelementptr inbounds i8* %1110, i64 %1111, !dbg !1079
  %cmp1532 = icmp ne i8* %1109, %add.ptr1531, !dbg !1079
  br i1 %cmp1532, label %for.body1534, label %do.body1702, !dbg !1079

for.body1534:                                     ; preds = %for.cond1530
  %1112 = load i8** %p, align 8, !dbg !1081
  %1113 = load i8* %1112, align 1, !dbg !1081
  store i8 %1113, i8* %ch, align 1, !dbg !1081
  %1114 = load i8* %ch, align 1, !dbg !1083
  %idxprom1535 = zext i8 %1114 to i64, !dbg !1083
  %arrayidx1536 = getelementptr inbounds [256 x i8]* @tokens, i32 0, i64 %idxprom1535, !dbg !1083
  %1115 = load i8* %arrayidx1536, align 1, !dbg !1083
  store i8 %1115, i8* %c, align 1, !dbg !1083
  %1116 = load i8* %c, align 1, !dbg !1084
  %tobool1537 = icmp ne i8 %1116, 0, !dbg !1084
  br i1 %tobool1537, label %if.end1539, label %do.body1702, !dbg !1084

if.end1539:                                       ; preds = %for.body1534
  %1117 = load %struct.http_parser** %parser.addr, align 8, !dbg !1085
  %1118 = bitcast %struct.http_parser* %1117 to i32*, !dbg !1085
  %1119 = load i32* %1118, align 8, !dbg !1085
  %int_cast_to_i6458 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6458), !dbg !1085
  %1120 = lshr i32 %1119, 16, !dbg !1085
  %bf.clear1540 = and i32 %1120, 255, !dbg !1085
  switch i32 %bf.clear1540, label %sw.default1700 [
    i32 0, label %for.inc
    i32 1, label %sw.bb1542
    i32 2, label %sw.bb1551
    i32 3, label %sw.bb1560
    i32 4, label %sw.bb1569
    i32 5, label %sw.bb1594
    i32 6, label %sw.bb1619
    i32 7, label %sw.bb1644
    i32 8, label %sw.bb1669
    i32 9, label %sw.bb1694
    i32 10, label %sw.bb1694
    i32 11, label %sw.bb1694
    i32 12, label %sw.bb1694
  ], !dbg !1085

sw.bb1542:                                        ; preds = %if.end1539
  %1121 = load %struct.http_parser** %parser.addr, align 8, !dbg !1086
  %1122 = bitcast %struct.http_parser* %1121 to i32*, !dbg !1086
  %1123 = load i32* %1122, align 8, !dbg !1086
  %int_cast_to_i6459 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6459), !dbg !1086
  %1124 = lshr i32 %1123, 24, !dbg !1086
  %bf.clear1543 = and i32 %1124, 255, !dbg !1086
  %inc1544 = add i32 %bf.clear1543, 1, !dbg !1086
  %bf.value1545 = and i32 %inc1544, 255, !dbg !1086
  %1125 = bitcast %struct.http_parser* %1121 to i32*, !dbg !1086
  %1126 = and i32 %bf.value1545, 255, !dbg !1086
  %int_cast_to_i6460 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6460), !dbg !1086
  %1127 = shl i32 %1126, 24, !dbg !1086
  %1128 = load i32* %1125, align 8, !dbg !1086
  %1129 = and i32 %1128, 16777215, !dbg !1086
  %1130 = or i32 %1129, %1127, !dbg !1086
  store i32 %1130, i32* %1125, align 8, !dbg !1086
  %1131 = load i8* %c, align 1, !dbg !1088
  %conv1546 = sext i8 %1131 to i32, !dbg !1088
  %cmp1547 = icmp eq i32 %conv1546, 111, !dbg !1088
  %cond1549 = select i1 %cmp1547, i32 2, i32 0, !dbg !1088
  %1132 = load %struct.http_parser** %parser.addr, align 8, !dbg !1088
  %bf.value1550 = and i32 %cond1549, 255, !dbg !1088
  %1133 = bitcast %struct.http_parser* %1132 to i32*, !dbg !1088
  %1134 = and i32 %bf.value1550, 255, !dbg !1088
  %int_cast_to_i6461 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6461), !dbg !1088
  %1135 = shl i32 %1134, 16, !dbg !1088
  %1136 = load i32* %1133, align 8, !dbg !1088
  %1137 = and i32 %1136, -16711681, !dbg !1088
  %1138 = or i32 %1137, %1135, !dbg !1088
  store i32 %1138, i32* %1133, align 8, !dbg !1088
  br label %for.inc, !dbg !1089

sw.bb1551:                                        ; preds = %if.end1539
  %1139 = load %struct.http_parser** %parser.addr, align 8, !dbg !1090
  %1140 = bitcast %struct.http_parser* %1139 to i32*, !dbg !1090
  %1141 = load i32* %1140, align 8, !dbg !1090
  %int_cast_to_i6462 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6462), !dbg !1090
  %1142 = lshr i32 %1141, 24, !dbg !1090
  %bf.clear1552 = and i32 %1142, 255, !dbg !1090
  %inc1553 = add i32 %bf.clear1552, 1, !dbg !1090
  %bf.value1554 = and i32 %inc1553, 255, !dbg !1090
  %1143 = bitcast %struct.http_parser* %1139 to i32*, !dbg !1090
  %1144 = and i32 %bf.value1554, 255, !dbg !1090
  %int_cast_to_i6463 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6463), !dbg !1090
  %1145 = shl i32 %1144, 24, !dbg !1090
  %1146 = load i32* %1143, align 8, !dbg !1090
  %1147 = and i32 %1146, 16777215, !dbg !1090
  %1148 = or i32 %1147, %1145, !dbg !1090
  store i32 %1148, i32* %1143, align 8, !dbg !1090
  %1149 = load i8* %c, align 1, !dbg !1091
  %conv1555 = sext i8 %1149 to i32, !dbg !1091
  %cmp1556 = icmp eq i32 %conv1555, 110, !dbg !1091
  %cond1558 = select i1 %cmp1556, i32 3, i32 0, !dbg !1091
  %1150 = load %struct.http_parser** %parser.addr, align 8, !dbg !1091
  %bf.value1559 = and i32 %cond1558, 255, !dbg !1091
  %1151 = bitcast %struct.http_parser* %1150 to i32*, !dbg !1091
  %1152 = and i32 %bf.value1559, 255, !dbg !1091
  %int_cast_to_i6464 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6464), !dbg !1091
  %1153 = shl i32 %1152, 16, !dbg !1091
  %1154 = load i32* %1151, align 8, !dbg !1091
  %1155 = and i32 %1154, -16711681, !dbg !1091
  %1156 = or i32 %1155, %1153, !dbg !1091
  store i32 %1156, i32* %1151, align 8, !dbg !1091
  br label %for.inc, !dbg !1092

sw.bb1560:                                        ; preds = %if.end1539
  %1157 = load %struct.http_parser** %parser.addr, align 8, !dbg !1093
  %1158 = bitcast %struct.http_parser* %1157 to i32*, !dbg !1093
  %1159 = load i32* %1158, align 8, !dbg !1093
  %int_cast_to_i6465 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6465), !dbg !1093
  %1160 = lshr i32 %1159, 24, !dbg !1093
  %bf.clear1561 = and i32 %1160, 255, !dbg !1093
  %inc1562 = add i32 %bf.clear1561, 1, !dbg !1093
  %bf.value1563 = and i32 %inc1562, 255, !dbg !1093
  %1161 = bitcast %struct.http_parser* %1157 to i32*, !dbg !1093
  %1162 = and i32 %bf.value1563, 255, !dbg !1093
  %int_cast_to_i6466 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6466), !dbg !1093
  %1163 = shl i32 %1162, 24, !dbg !1093
  %1164 = load i32* %1161, align 8, !dbg !1093
  %1165 = and i32 %1164, 16777215, !dbg !1093
  %1166 = or i32 %1165, %1163, !dbg !1093
  store i32 %1166, i32* %1161, align 8, !dbg !1093
  %1167 = load i8* %c, align 1, !dbg !1094
  %conv1564 = sext i8 %1167 to i32, !dbg !1094
  switch i32 %conv1564, label %sw.default1567 [
    i32 110, label %sw.bb1565
    i32 116, label %sw.bb1566
  ], !dbg !1094

sw.bb1565:                                        ; preds = %sw.bb1560
  %1168 = load %struct.http_parser** %parser.addr, align 8, !dbg !1095
  %1169 = bitcast %struct.http_parser* %1168 to i32*, !dbg !1095
  %1170 = load i32* %1169, align 8, !dbg !1095
  %1171 = and i32 %1170, -16711681, !dbg !1095
  %1172 = or i32 %1171, 262144, !dbg !1095
  store i32 %1172, i32* %1169, align 8, !dbg !1095
  br label %for.inc, !dbg !1097

sw.bb1566:                                        ; preds = %sw.bb1560
  %1173 = load %struct.http_parser** %parser.addr, align 8, !dbg !1098
  %1174 = bitcast %struct.http_parser* %1173 to i32*, !dbg !1098
  %1175 = load i32* %1174, align 8, !dbg !1098
  %1176 = and i32 %1175, -16711681, !dbg !1098
  %1177 = or i32 %1176, 393216, !dbg !1098
  store i32 %1177, i32* %1174, align 8, !dbg !1098
  br label %for.inc, !dbg !1099

sw.default1567:                                   ; preds = %sw.bb1560
  %1178 = load %struct.http_parser** %parser.addr, align 8, !dbg !1100
  %1179 = bitcast %struct.http_parser* %1178 to i32*, !dbg !1100
  %1180 = load i32* %1179, align 8, !dbg !1100
  %1181 = and i32 %1180, -16711681, !dbg !1100
  store i32 %1181, i32* %1179, align 8, !dbg !1100
  br label %for.inc, !dbg !1101

sw.bb1569:                                        ; preds = %if.end1539
  %1182 = load %struct.http_parser** %parser.addr, align 8, !dbg !1102
  %1183 = bitcast %struct.http_parser* %1182 to i32*, !dbg !1102
  %1184 = load i32* %1183, align 8, !dbg !1102
  %int_cast_to_i6467 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6467), !dbg !1102
  %1185 = lshr i32 %1184, 24, !dbg !1102
  %bf.clear1570 = and i32 %1185, 255, !dbg !1102
  %inc1571 = add i32 %bf.clear1570, 1, !dbg !1102
  %bf.value1572 = and i32 %inc1571, 255, !dbg !1102
  %1186 = bitcast %struct.http_parser* %1182 to i32*, !dbg !1102
  %1187 = and i32 %bf.value1572, 255, !dbg !1102
  %int_cast_to_i6468 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6468), !dbg !1102
  %1188 = shl i32 %1187, 24, !dbg !1102
  %1189 = load i32* %1186, align 8, !dbg !1102
  %1190 = and i32 %1189, 16777215, !dbg !1102
  %1191 = or i32 %1190, %1188, !dbg !1102
  store i32 %1191, i32* %1186, align 8, !dbg !1102
  %1192 = load %struct.http_parser** %parser.addr, align 8, !dbg !1103
  %1193 = bitcast %struct.http_parser* %1192 to i32*, !dbg !1103
  %1194 = load i32* %1193, align 8, !dbg !1103
  %int_cast_to_i6469 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6469), !dbg !1103
  %1195 = lshr i32 %1194, 24, !dbg !1103
  %bf.clear1573 = and i32 %1195, 255, !dbg !1103
  %conv1574 = zext i32 %bf.clear1573 to i64, !dbg !1103
  %cmp1575 = icmp ugt i64 %conv1574, 10, !dbg !1103
  br i1 %cmp1575, label %if.then1585, label %lor.lhs.false1577, !dbg !1103

lor.lhs.false1577:                                ; preds = %sw.bb1569
  %1196 = load i8* %c, align 1, !dbg !1103
  %conv1578 = sext i8 %1196 to i32, !dbg !1103
  %1197 = load %struct.http_parser** %parser.addr, align 8, !dbg !1103
  %1198 = bitcast %struct.http_parser* %1197 to i32*, !dbg !1103
  %1199 = load i32* %1198, align 8, !dbg !1103
  %int_cast_to_i6470 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6470), !dbg !1103
  %1200 = lshr i32 %1199, 24, !dbg !1103
  %bf.clear1579 = and i32 %1200, 255, !dbg !1103
  %idxprom1580 = zext i32 %bf.clear1579 to i64, !dbg !1103
  %arrayidx1581 = getelementptr inbounds [11 x i8]* @.str2, i32 0, i64 %idxprom1580, !dbg !1103
  %1201 = load i8* %arrayidx1581, align 1, !dbg !1103
  %conv1582 = sext i8 %1201 to i32, !dbg !1103
  %cmp1583 = icmp ne i32 %conv1578, %conv1582, !dbg !1103
  br i1 %cmp1583, label %if.then1585, label %if.else1586, !dbg !1103

if.then1585:                                      ; preds = %lor.lhs.false1577, %sw.bb1569
  %1202 = load %struct.http_parser** %parser.addr, align 8, !dbg !1104
  %1203 = bitcast %struct.http_parser* %1202 to i32*, !dbg !1104
  %1204 = load i32* %1203, align 8, !dbg !1104
  %1205 = and i32 %1204, -16711681, !dbg !1104
  store i32 %1205, i32* %1203, align 8, !dbg !1104
  br label %for.inc, !dbg !1106

if.else1586:                                      ; preds = %lor.lhs.false1577
  %1206 = load %struct.http_parser** %parser.addr, align 8, !dbg !1107
  %1207 = bitcast %struct.http_parser* %1206 to i32*, !dbg !1107
  %1208 = load i32* %1207, align 8, !dbg !1107
  %int_cast_to_i6471 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6471), !dbg !1107
  %1209 = lshr i32 %1208, 24, !dbg !1107
  %bf.clear1587 = and i32 %1209, 255, !dbg !1107
  %conv1588 = zext i32 %bf.clear1587 to i64, !dbg !1107
  %cmp1589 = icmp eq i64 %conv1588, 9, !dbg !1107
  br i1 %cmp1589, label %if.then1591, label %for.inc, !dbg !1107

if.then1591:                                      ; preds = %if.else1586
  %1210 = load %struct.http_parser** %parser.addr, align 8, !dbg !1108
  %1211 = bitcast %struct.http_parser* %1210 to i32*, !dbg !1108
  %1212 = load i32* %1211, align 8, !dbg !1108
  %1213 = and i32 %1212, -16711681, !dbg !1108
  %1214 = or i32 %1213, 589824, !dbg !1108
  store i32 %1214, i32* %1211, align 8, !dbg !1108
  br label %for.inc, !dbg !1110

sw.bb1594:                                        ; preds = %if.end1539
  %1215 = load %struct.http_parser** %parser.addr, align 8, !dbg !1111
  %1216 = bitcast %struct.http_parser* %1215 to i32*, !dbg !1111
  %1217 = load i32* %1216, align 8, !dbg !1111
  %int_cast_to_i6472 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6472), !dbg !1111
  %1218 = lshr i32 %1217, 24, !dbg !1111
  %bf.clear1595 = and i32 %1218, 255, !dbg !1111
  %inc1596 = add i32 %bf.clear1595, 1, !dbg !1111
  %bf.value1597 = and i32 %inc1596, 255, !dbg !1111
  %1219 = bitcast %struct.http_parser* %1215 to i32*, !dbg !1111
  %1220 = and i32 %bf.value1597, 255, !dbg !1111
  %int_cast_to_i6473 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6473), !dbg !1111
  %1221 = shl i32 %1220, 24, !dbg !1111
  %1222 = load i32* %1219, align 8, !dbg !1111
  %1223 = and i32 %1222, 16777215, !dbg !1111
  %1224 = or i32 %1223, %1221, !dbg !1111
  store i32 %1224, i32* %1219, align 8, !dbg !1111
  %1225 = load %struct.http_parser** %parser.addr, align 8, !dbg !1112
  %1226 = bitcast %struct.http_parser* %1225 to i32*, !dbg !1112
  %1227 = load i32* %1226, align 8, !dbg !1112
  %int_cast_to_i6474 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6474), !dbg !1112
  %1228 = lshr i32 %1227, 24, !dbg !1112
  %bf.clear1598 = and i32 %1228, 255, !dbg !1112
  %conv1599 = zext i32 %bf.clear1598 to i64, !dbg !1112
  %cmp1600 = icmp ugt i64 %conv1599, 16, !dbg !1112
  br i1 %cmp1600, label %if.then1610, label %lor.lhs.false1602, !dbg !1112

lor.lhs.false1602:                                ; preds = %sw.bb1594
  %1229 = load i8* %c, align 1, !dbg !1112
  %conv1603 = sext i8 %1229 to i32, !dbg !1112
  %1230 = load %struct.http_parser** %parser.addr, align 8, !dbg !1112
  %1231 = bitcast %struct.http_parser* %1230 to i32*, !dbg !1112
  %1232 = load i32* %1231, align 8, !dbg !1112
  %int_cast_to_i6475 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6475), !dbg !1112
  %1233 = lshr i32 %1232, 24, !dbg !1112
  %bf.clear1604 = and i32 %1233, 255, !dbg !1112
  %idxprom1605 = zext i32 %bf.clear1604 to i64, !dbg !1112
  %arrayidx1606 = getelementptr inbounds [17 x i8]* @.str3, i32 0, i64 %idxprom1605, !dbg !1112
  %1234 = load i8* %arrayidx1606, align 1, !dbg !1112
  %conv1607 = sext i8 %1234 to i32, !dbg !1112
  %cmp1608 = icmp ne i32 %conv1603, %conv1607, !dbg !1112
  br i1 %cmp1608, label %if.then1610, label %if.else1611, !dbg !1112

if.then1610:                                      ; preds = %lor.lhs.false1602, %sw.bb1594
  %1235 = load %struct.http_parser** %parser.addr, align 8, !dbg !1113
  %1236 = bitcast %struct.http_parser* %1235 to i32*, !dbg !1113
  %1237 = load i32* %1236, align 8, !dbg !1113
  %1238 = and i32 %1237, -16711681, !dbg !1113
  store i32 %1238, i32* %1236, align 8, !dbg !1113
  br label %for.inc, !dbg !1115

if.else1611:                                      ; preds = %lor.lhs.false1602
  %1239 = load %struct.http_parser** %parser.addr, align 8, !dbg !1116
  %1240 = bitcast %struct.http_parser* %1239 to i32*, !dbg !1116
  %1241 = load i32* %1240, align 8, !dbg !1116
  %int_cast_to_i6476 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6476), !dbg !1116
  %1242 = lshr i32 %1241, 24, !dbg !1116
  %bf.clear1612 = and i32 %1242, 255, !dbg !1116
  %conv1613 = zext i32 %bf.clear1612 to i64, !dbg !1116
  %cmp1614 = icmp eq i64 %conv1613, 15, !dbg !1116
  br i1 %cmp1614, label %if.then1616, label %for.inc, !dbg !1116

if.then1616:                                      ; preds = %if.else1611
  %1243 = load %struct.http_parser** %parser.addr, align 8, !dbg !1117
  %1244 = bitcast %struct.http_parser* %1243 to i32*, !dbg !1117
  %1245 = load i32* %1244, align 8, !dbg !1117
  %1246 = and i32 %1245, -16711681, !dbg !1117
  %1247 = or i32 %1246, 589824, !dbg !1117
  store i32 %1247, i32* %1244, align 8, !dbg !1117
  br label %for.inc, !dbg !1119

sw.bb1619:                                        ; preds = %if.end1539
  %1248 = load %struct.http_parser** %parser.addr, align 8, !dbg !1120
  %1249 = bitcast %struct.http_parser* %1248 to i32*, !dbg !1120
  %1250 = load i32* %1249, align 8, !dbg !1120
  %int_cast_to_i6477 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6477), !dbg !1120
  %1251 = lshr i32 %1250, 24, !dbg !1120
  %bf.clear1620 = and i32 %1251, 255, !dbg !1120
  %inc1621 = add i32 %bf.clear1620, 1, !dbg !1120
  %bf.value1622 = and i32 %inc1621, 255, !dbg !1120
  %1252 = bitcast %struct.http_parser* %1248 to i32*, !dbg !1120
  %1253 = and i32 %bf.value1622, 255, !dbg !1120
  %int_cast_to_i6478 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6478), !dbg !1120
  %1254 = shl i32 %1253, 24, !dbg !1120
  %1255 = load i32* %1252, align 8, !dbg !1120
  %1256 = and i32 %1255, 16777215, !dbg !1120
  %1257 = or i32 %1256, %1254, !dbg !1120
  store i32 %1257, i32* %1252, align 8, !dbg !1120
  %1258 = load %struct.http_parser** %parser.addr, align 8, !dbg !1121
  %1259 = bitcast %struct.http_parser* %1258 to i32*, !dbg !1121
  %1260 = load i32* %1259, align 8, !dbg !1121
  %int_cast_to_i6479 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6479), !dbg !1121
  %1261 = lshr i32 %1260, 24, !dbg !1121
  %bf.clear1623 = and i32 %1261, 255, !dbg !1121
  %conv1624 = zext i32 %bf.clear1623 to i64, !dbg !1121
  %cmp1625 = icmp ugt i64 %conv1624, 14, !dbg !1121
  br i1 %cmp1625, label %if.then1635, label %lor.lhs.false1627, !dbg !1121

lor.lhs.false1627:                                ; preds = %sw.bb1619
  %1262 = load i8* %c, align 1, !dbg !1121
  %conv1628 = sext i8 %1262 to i32, !dbg !1121
  %1263 = load %struct.http_parser** %parser.addr, align 8, !dbg !1121
  %1264 = bitcast %struct.http_parser* %1263 to i32*, !dbg !1121
  %1265 = load i32* %1264, align 8, !dbg !1121
  %int_cast_to_i6480 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6480), !dbg !1121
  %1266 = lshr i32 %1265, 24, !dbg !1121
  %bf.clear1629 = and i32 %1266, 255, !dbg !1121
  %idxprom1630 = zext i32 %bf.clear1629 to i64, !dbg !1121
  %arrayidx1631 = getelementptr inbounds [15 x i8]* @.str4, i32 0, i64 %idxprom1630, !dbg !1121
  %1267 = load i8* %arrayidx1631, align 1, !dbg !1121
  %conv1632 = sext i8 %1267 to i32, !dbg !1121
  %cmp1633 = icmp ne i32 %conv1628, %conv1632, !dbg !1121
  br i1 %cmp1633, label %if.then1635, label %if.else1636, !dbg !1121

if.then1635:                                      ; preds = %lor.lhs.false1627, %sw.bb1619
  %1268 = load %struct.http_parser** %parser.addr, align 8, !dbg !1122
  %1269 = bitcast %struct.http_parser* %1268 to i32*, !dbg !1122
  %1270 = load i32* %1269, align 8, !dbg !1122
  %1271 = and i32 %1270, -16711681, !dbg !1122
  store i32 %1271, i32* %1269, align 8, !dbg !1122
  br label %for.inc, !dbg !1124

if.else1636:                                      ; preds = %lor.lhs.false1627
  %1272 = load %struct.http_parser** %parser.addr, align 8, !dbg !1125
  %1273 = bitcast %struct.http_parser* %1272 to i32*, !dbg !1125
  %1274 = load i32* %1273, align 8, !dbg !1125
  %int_cast_to_i6481 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6481), !dbg !1125
  %1275 = lshr i32 %1274, 24, !dbg !1125
  %bf.clear1637 = and i32 %1275, 255, !dbg !1125
  %conv1638 = zext i32 %bf.clear1637 to i64, !dbg !1125
  %cmp1639 = icmp eq i64 %conv1638, 13, !dbg !1125
  br i1 %cmp1639, label %if.then1641, label %for.inc, !dbg !1125

if.then1641:                                      ; preds = %if.else1636
  %1276 = load %struct.http_parser** %parser.addr, align 8, !dbg !1126
  %1277 = bitcast %struct.http_parser* %1276 to i32*, !dbg !1126
  %1278 = load i32* %1277, align 8, !dbg !1126
  %1279 = and i32 %1278, -16711681, !dbg !1126
  %1280 = or i32 %1279, 655360, !dbg !1126
  store i32 %1280, i32* %1277, align 8, !dbg !1126
  br label %for.inc, !dbg !1128

sw.bb1644:                                        ; preds = %if.end1539
  %1281 = load %struct.http_parser** %parser.addr, align 8, !dbg !1129
  %1282 = bitcast %struct.http_parser* %1281 to i32*, !dbg !1129
  %1283 = load i32* %1282, align 8, !dbg !1129
  %int_cast_to_i6482 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6482), !dbg !1129
  %1284 = lshr i32 %1283, 24, !dbg !1129
  %bf.clear1645 = and i32 %1284, 255, !dbg !1129
  %inc1646 = add i32 %bf.clear1645, 1, !dbg !1129
  %bf.value1647 = and i32 %inc1646, 255, !dbg !1129
  %1285 = bitcast %struct.http_parser* %1281 to i32*, !dbg !1129
  %1286 = and i32 %bf.value1647, 255, !dbg !1129
  %int_cast_to_i6483 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6483), !dbg !1129
  %1287 = shl i32 %1286, 24, !dbg !1129
  %1288 = load i32* %1285, align 8, !dbg !1129
  %1289 = and i32 %1288, 16777215, !dbg !1129
  %1290 = or i32 %1289, %1287, !dbg !1129
  store i32 %1290, i32* %1285, align 8, !dbg !1129
  %1291 = load %struct.http_parser** %parser.addr, align 8, !dbg !1130
  %1292 = bitcast %struct.http_parser* %1291 to i32*, !dbg !1130
  %1293 = load i32* %1292, align 8, !dbg !1130
  %int_cast_to_i6484 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6484), !dbg !1130
  %1294 = lshr i32 %1293, 24, !dbg !1130
  %bf.clear1648 = and i32 %1294, 255, !dbg !1130
  %conv1649 = zext i32 %bf.clear1648 to i64, !dbg !1130
  %cmp1650 = icmp ugt i64 %conv1649, 17, !dbg !1130
  br i1 %cmp1650, label %if.then1660, label %lor.lhs.false1652, !dbg !1130

lor.lhs.false1652:                                ; preds = %sw.bb1644
  %1295 = load i8* %c, align 1, !dbg !1130
  %conv1653 = sext i8 %1295 to i32, !dbg !1130
  %1296 = load %struct.http_parser** %parser.addr, align 8, !dbg !1130
  %1297 = bitcast %struct.http_parser* %1296 to i32*, !dbg !1130
  %1298 = load i32* %1297, align 8, !dbg !1130
  %int_cast_to_i6485 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6485), !dbg !1130
  %1299 = lshr i32 %1298, 24, !dbg !1130
  %bf.clear1654 = and i32 %1299, 255, !dbg !1130
  %idxprom1655 = zext i32 %bf.clear1654 to i64, !dbg !1130
  %arrayidx1656 = getelementptr inbounds [18 x i8]* @.str5, i32 0, i64 %idxprom1655, !dbg !1130
  %1300 = load i8* %arrayidx1656, align 1, !dbg !1130
  %conv1657 = sext i8 %1300 to i32, !dbg !1130
  %cmp1658 = icmp ne i32 %conv1653, %conv1657, !dbg !1130
  br i1 %cmp1658, label %if.then1660, label %if.else1661, !dbg !1130

if.then1660:                                      ; preds = %lor.lhs.false1652, %sw.bb1644
  %1301 = load %struct.http_parser** %parser.addr, align 8, !dbg !1131
  %1302 = bitcast %struct.http_parser* %1301 to i32*, !dbg !1131
  %1303 = load i32* %1302, align 8, !dbg !1131
  %1304 = and i32 %1303, -16711681, !dbg !1131
  store i32 %1304, i32* %1302, align 8, !dbg !1131
  br label %for.inc, !dbg !1133

if.else1661:                                      ; preds = %lor.lhs.false1652
  %1305 = load %struct.http_parser** %parser.addr, align 8, !dbg !1134
  %1306 = bitcast %struct.http_parser* %1305 to i32*, !dbg !1134
  %1307 = load i32* %1306, align 8, !dbg !1134
  %int_cast_to_i6486 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6486), !dbg !1134
  %1308 = lshr i32 %1307, 24, !dbg !1134
  %bf.clear1662 = and i32 %1308, 255, !dbg !1134
  %conv1663 = zext i32 %bf.clear1662 to i64, !dbg !1134
  %cmp1664 = icmp eq i64 %conv1663, 16, !dbg !1134
  br i1 %cmp1664, label %if.then1666, label %for.inc, !dbg !1134

if.then1666:                                      ; preds = %if.else1661
  %1309 = load %struct.http_parser** %parser.addr, align 8, !dbg !1135
  %1310 = bitcast %struct.http_parser* %1309 to i32*, !dbg !1135
  %1311 = load i32* %1310, align 8, !dbg !1135
  %1312 = and i32 %1311, -16711681, !dbg !1135
  %1313 = or i32 %1312, 720896, !dbg !1135
  store i32 %1313, i32* %1310, align 8, !dbg !1135
  br label %for.inc, !dbg !1137

sw.bb1669:                                        ; preds = %if.end1539
  %1314 = load %struct.http_parser** %parser.addr, align 8, !dbg !1138
  %1315 = bitcast %struct.http_parser* %1314 to i32*, !dbg !1138
  %1316 = load i32* %1315, align 8, !dbg !1138
  %int_cast_to_i6487 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6487), !dbg !1138
  %1317 = lshr i32 %1316, 24, !dbg !1138
  %bf.clear1670 = and i32 %1317, 255, !dbg !1138
  %inc1671 = add i32 %bf.clear1670, 1, !dbg !1138
  %bf.value1672 = and i32 %inc1671, 255, !dbg !1138
  %1318 = bitcast %struct.http_parser* %1314 to i32*, !dbg !1138
  %1319 = and i32 %bf.value1672, 255, !dbg !1138
  %int_cast_to_i6488 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6488), !dbg !1138
  %1320 = shl i32 %1319, 24, !dbg !1138
  %1321 = load i32* %1318, align 8, !dbg !1138
  %1322 = and i32 %1321, 16777215, !dbg !1138
  %1323 = or i32 %1322, %1320, !dbg !1138
  store i32 %1323, i32* %1318, align 8, !dbg !1138
  %1324 = load %struct.http_parser** %parser.addr, align 8, !dbg !1139
  %1325 = bitcast %struct.http_parser* %1324 to i32*, !dbg !1139
  %1326 = load i32* %1325, align 8, !dbg !1139
  %int_cast_to_i6489 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6489), !dbg !1139
  %1327 = lshr i32 %1326, 24, !dbg !1139
  %bf.clear1673 = and i32 %1327, 255, !dbg !1139
  %conv1674 = zext i32 %bf.clear1673 to i64, !dbg !1139
  %cmp1675 = icmp ugt i64 %conv1674, 7, !dbg !1139
  br i1 %cmp1675, label %if.then1685, label %lor.lhs.false1677, !dbg !1139

lor.lhs.false1677:                                ; preds = %sw.bb1669
  %1328 = load i8* %c, align 1, !dbg !1139
  %conv1678 = sext i8 %1328 to i32, !dbg !1139
  %1329 = load %struct.http_parser** %parser.addr, align 8, !dbg !1139
  %1330 = bitcast %struct.http_parser* %1329 to i32*, !dbg !1139
  %1331 = load i32* %1330, align 8, !dbg !1139
  %int_cast_to_i6490 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6490), !dbg !1139
  %1332 = lshr i32 %1331, 24, !dbg !1139
  %bf.clear1679 = and i32 %1332, 255, !dbg !1139
  %idxprom1680 = zext i32 %bf.clear1679 to i64, !dbg !1139
  %arrayidx1681 = getelementptr inbounds [8 x i8]* @.str6, i32 0, i64 %idxprom1680, !dbg !1139
  %1333 = load i8* %arrayidx1681, align 1, !dbg !1139
  %conv1682 = sext i8 %1333 to i32, !dbg !1139
  %cmp1683 = icmp ne i32 %conv1678, %conv1682, !dbg !1139
  br i1 %cmp1683, label %if.then1685, label %if.else1686, !dbg !1139

if.then1685:                                      ; preds = %lor.lhs.false1677, %sw.bb1669
  %1334 = load %struct.http_parser** %parser.addr, align 8, !dbg !1140
  %1335 = bitcast %struct.http_parser* %1334 to i32*, !dbg !1140
  %1336 = load i32* %1335, align 8, !dbg !1140
  %1337 = and i32 %1336, -16711681, !dbg !1140
  store i32 %1337, i32* %1335, align 8, !dbg !1140
  br label %for.inc, !dbg !1142

if.else1686:                                      ; preds = %lor.lhs.false1677
  %1338 = load %struct.http_parser** %parser.addr, align 8, !dbg !1143
  %1339 = bitcast %struct.http_parser* %1338 to i32*, !dbg !1143
  %1340 = load i32* %1339, align 8, !dbg !1143
  %int_cast_to_i6491 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6491), !dbg !1143
  %1341 = lshr i32 %1340, 24, !dbg !1143
  %bf.clear1687 = and i32 %1341, 255, !dbg !1143
  %conv1688 = zext i32 %bf.clear1687 to i64, !dbg !1143
  %cmp1689 = icmp eq i64 %conv1688, 6, !dbg !1143
  br i1 %cmp1689, label %if.then1691, label %for.inc, !dbg !1143

if.then1691:                                      ; preds = %if.else1686
  %1342 = load %struct.http_parser** %parser.addr, align 8, !dbg !1144
  %1343 = bitcast %struct.http_parser* %1342 to i32*, !dbg !1144
  %1344 = load i32* %1343, align 8, !dbg !1144
  %1345 = and i32 %1344, -16711681, !dbg !1144
  %1346 = or i32 %1345, 786432, !dbg !1144
  store i32 %1346, i32* %1343, align 8, !dbg !1144
  br label %for.inc, !dbg !1146

sw.bb1694:                                        ; preds = %if.end1539, %if.end1539, %if.end1539, %if.end1539
  %1347 = load i8* %ch, align 1, !dbg !1147
  %conv1695 = sext i8 %1347 to i32, !dbg !1147
  %cmp1696 = icmp ne i32 %conv1695, 32, !dbg !1147
  br i1 %cmp1696, label %if.then1698, label %for.inc, !dbg !1147

if.then1698:                                      ; preds = %sw.bb1694
  %1348 = load %struct.http_parser** %parser.addr, align 8, !dbg !1147
  %1349 = bitcast %struct.http_parser* %1348 to i32*, !dbg !1147
  %1350 = load i32* %1349, align 8, !dbg !1147
  %1351 = and i32 %1350, -16711681, !dbg !1147
  store i32 %1351, i32* %1349, align 8, !dbg !1147
  br label %for.inc, !dbg !1147

sw.default1700:                                   ; preds = %if.end1539
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1426, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0
  unreachable, !dbg !1148

for.inc:                                          ; preds = %sw.bb1542, %sw.bb1551, %if.end1539, %sw.default1567, %sw.bb1566, %sw.bb1565, %if.else1586, %if.then1591, %if.then1585, %if.else1611, %if.then1616, %if.then1610, %if.else1636, %if.then1641, %if.
  %1352 = load i8** %p, align 8, !dbg !1079
  %incdec.ptr = getelementptr inbounds i8* %1352, i32 1, !dbg !1079
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !1079
  br label %for.cond1530, !dbg !1079

do.body1702:                                      ; preds = %for.cond1530, %for.body1534
  %1353 = load i8** %p, align 8, !dbg !1149
  %1354 = load i8** %start, align 8, !dbg !1149
  %sub.ptr.lhs.cast1703 = ptrtoint i8* %1353 to i64, !dbg !1149
  %sub.ptr.rhs.cast1704 = ptrtoint i8* %1354 to i64, !dbg !1149
  %sub.ptr.sub1705 = sub i64 %sub.ptr.lhs.cast1703, %sub.ptr.rhs.cast1704, !dbg !1149
  %1355 = load %struct.http_parser** %parser.addr, align 8, !dbg !1149
  %nread1706 = getelementptr inbounds %struct.http_parser* %1355, i32 0, i32 4, !dbg !1149
  %1356 = load i32* %nread1706, align 4, !dbg !1149
  %conv1707 = zext i32 %1356 to i64, !dbg !1149
  %add1708 = add nsw i64 %conv1707, %sub.ptr.sub1705, !dbg !1149
  %conv1709 = trunc i64 %add1708 to i32, !dbg !1149
  store i32 %conv1709, i32* %nread1706, align 4, !dbg !1149
  %1357 = load %struct.http_parser** %parser.addr, align 8, !dbg !1149
  %nread1710 = getelementptr inbounds %struct.http_parser* %1357, i32 0, i32 4, !dbg !1149
  %1358 = load i32* %nread1710, align 4, !dbg !1149
  %cmp1711 = icmp ugt i32 %1358, 81920, !dbg !1149
  %lnot1713 = xor i1 %cmp1711, true, !dbg !1149
  %lnot1715 = xor i1 %lnot1713, true, !dbg !1149
  %lnot.ext1716 = zext i1 %lnot1715 to i32, !dbg !1149
  %conv1717 = sext i32 %lnot.ext1716 to i64, !dbg !1149
  %tobool1719 = icmp ne i64 %conv1717, 0, !dbg !1149
  br i1 %tobool1719, label %do.body1721, label %do.end1725, !dbg !1149

do.body1721:                                      ; preds = %do.body1702
  %1359 = load %struct.http_parser** %parser.addr, align 8, !dbg !1151
  %1360 = bitcast %struct.http_parser* %1359 to i8*, !dbg !1151
  %bf.field.offs1722 = getelementptr i8* %1360, i32 20, !dbg !1151
  %1361 = bitcast i8* %bf.field.offs1722 to i32*, !dbg !1151
  %1362 = load i32* %1361, align 4, !dbg !1151
  %1363 = and i32 %1362, -2130706433, !dbg !1151
  %1364 = or i32 %1363, 167772160, !dbg !1151
  store i32 %1364, i32* %1361, align 4, !dbg !1151
  br label %error, !dbg !1151

do.end1725:                                       ; preds = %do.body1702
  %1365 = load i8** %p, align 8, !dbg !1154
  %1366 = load i8** %data.addr, align 8, !dbg !1154
  %1367 = load i64* %len.addr, align 8, !dbg !1154
  %add.ptr1726 = getelementptr inbounds i8* %1366, i64 %1367, !dbg !1154
  %cmp1727 = icmp eq i8* %1365, %add.ptr1726, !dbg !1154
  br i1 %cmp1727, label %if.then1729, label %if.end1731, !dbg !1154

if.then1729:                                      ; preds = %do.end1725
  %1368 = load i8** %p, align 8, !dbg !1155
  %incdec.ptr1730 = getelementptr inbounds i8* %1368, i32 -1, !dbg !1155
  store i8* %incdec.ptr1730, i8** %p, align 8, !dbg !1155
  br label %for.inc3405, !dbg !1157

if.end1731:                                       ; preds = %do.end1725
  %1369 = load i8* %ch, align 1, !dbg !1158
  %conv1732 = sext i8 %1369 to i32, !dbg !1158
  %cmp1733 = icmp eq i32 %conv1732, 58, !dbg !1158
  br i1 %cmp1733, label %if.then1735, label %do.body1797, !dbg !1158

if.then1735:                                      ; preds = %if.end1731
  store i32 44, i32* %p_state, align 4, !dbg !1159
  %1370 = load %struct.http_parser** %parser.addr, align 8, !dbg !1161
  %1371 = bitcast %struct.http_parser* %1370 to i8*, !dbg !1161
  %bf.field.offs1737 = getelementptr i8* %1371, i32 20, !dbg !1161
  %1372 = bitcast i8* %bf.field.offs1737 to i32*, !dbg !1161
  %1373 = load i32* %1372, align 4, !dbg !1161
  %int_cast_to_i6492 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6492), !dbg !1161
  %1374 = lshr i32 %1373, 24, !dbg !1161
  %bf.clear1738 = and i32 %1374, 127, !dbg !1161
  %cmp1739 = icmp eq i32 %bf.clear1738, 0, !dbg !1161
  br i1 %cmp1739, label %cond.end1743, label %cond.false1742, !dbg !1161

cond.false1742:                                   ; preds = %if.then1735
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1440, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !1161

cond.end1743:                                     ; preds = %if.then1735
  %1375 = load i8** %header_field_mark, align 8, !dbg !1161
  %tobool1744 = icmp ne i8* %1375, null, !dbg !1161
  br i1 %tobool1744, label %if.then1745, label %for.inc3405, !dbg !1161

if.then1745:                                      ; preds = %cond.end1743
  %1376 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1163
  %on_header_field = getelementptr inbounds %struct.http_parser_settings* %1376, i32 0, i32 3, !dbg !1163
  %1377 = load i32 (%struct.http_parser*, i8*, i64)** %on_header_field, align 8, !dbg !1163
  %tobool1746 = icmp ne i32 (%struct.http_parser*, i8*, i64)* %1377, null, !dbg !1163
  %lnot1747 = xor i1 %tobool1746, true, !dbg !1163
  %lnot1749 = xor i1 %lnot1747, true, !dbg !1163
  %lnot.ext1750 = zext i1 %lnot1749 to i32, !dbg !1163
  %conv1751 = sext i32 %lnot.ext1750 to i64, !dbg !1163
  %tobool1753 = icmp ne i64 %conv1751, 0, !dbg !1163
  br i1 %tobool1753, label %if.then1754, label %if.end1793, !dbg !1163

if.then1754:                                      ; preds = %if.then1745
  %1378 = load i32* %p_state, align 4, !dbg !1165
  %1379 = load %struct.http_parser** %parser.addr, align 8, !dbg !1165
  %bf.value1755 = and i32 %1378, 127, !dbg !1165
  %1380 = bitcast %struct.http_parser* %1379 to i32*, !dbg !1165
  %1381 = and i32 %bf.value1755, 127, !dbg !1165
  %int_cast_to_i6493 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6493), !dbg !1165
  %1382 = shl i32 %1381, 9, !dbg !1165
  %1383 = load i32* %1380, align 8, !dbg !1165
  %1384 = and i32 %1383, -65025, !dbg !1165
  %1385 = or i32 %1384, %1382, !dbg !1165
  store i32 %1385, i32* %1380, align 8, !dbg !1165
  %1386 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1165
  %on_header_field1756 = getelementptr inbounds %struct.http_parser_settings* %1386, i32 0, i32 3, !dbg !1165
  %1387 = load i32 (%struct.http_parser*, i8*, i64)** %on_header_field1756, align 8, !dbg !1165
  %1388 = load %struct.http_parser** %parser.addr, align 8, !dbg !1165
  %1389 = load i8** %header_field_mark, align 8, !dbg !1165
  %1390 = load i8** %p, align 8, !dbg !1165
  %1391 = load i8** %header_field_mark, align 8, !dbg !1165
  %sub.ptr.lhs.cast1757 = ptrtoint i8* %1390 to i64, !dbg !1165
  %sub.ptr.rhs.cast1758 = ptrtoint i8* %1391 to i64, !dbg !1165
  %sub.ptr.sub1759 = sub i64 %sub.ptr.lhs.cast1757, %sub.ptr.rhs.cast1758, !dbg !1165
  %call1760 = call i32 %1387(%struct.http_parser* %1388, i8* %1389, i64 %sub.ptr.sub1759), !dbg !1165
  %cmp1761 = icmp ne i32 0, %call1760, !dbg !1165
  %lnot1763 = xor i1 %cmp1761, true, !dbg !1165
  %lnot1765 = xor i1 %lnot1763, true, !dbg !1165
  %lnot.ext1766 = zext i1 %lnot1765 to i32, !dbg !1165
  %conv1767 = sext i32 %lnot.ext1766 to i64, !dbg !1165
  %tobool1769 = icmp ne i64 %conv1767, 0, !dbg !1165
  br i1 %tobool1769, label %do.body1771, label %if.end1774, !dbg !1165

do.body1771:                                      ; preds = %if.then1754
  %1392 = load %struct.http_parser** %parser.addr, align 8, !dbg !1167
  %1393 = bitcast %struct.http_parser* %1392 to i8*, !dbg !1167
  %bf.field.offs1772 = getelementptr i8* %1393, i32 20, !dbg !1167
  %1394 = bitcast i8* %bf.field.offs1772 to i32*, !dbg !1167
  %1395 = load i32* %1394, align 4, !dbg !1167
  %1396 = and i32 %1395, -2130706433, !dbg !1167
  %1397 = or i32 %1396, 50331648, !dbg !1167
  store i32 %1397, i32* %1394, align 4, !dbg !1167
  br label %if.end1774, !dbg !1167

if.end1774:                                       ; preds = %do.body1771, %if.then1754
  %1398 = load %struct.http_parser** %parser.addr, align 8, !dbg !1167
  %1399 = bitcast %struct.http_parser* %1398 to i32*, !dbg !1167
  %1400 = load i32* %1399, align 8, !dbg !1167
  %int_cast_to_i6494 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6494), !dbg !1167
  %1401 = lshr i32 %1400, 9, !dbg !1167
  %bf.clear1775 = and i32 %1401, 127, !dbg !1167
  store i32 %bf.clear1775, i32* %p_state, align 4, !dbg !1167
  %1402 = load %struct.http_parser** %parser.addr, align 8, !dbg !1167
  %1403 = bitcast %struct.http_parser* %1402 to i8*, !dbg !1167
  %bf.field.offs1776 = getelementptr i8* %1403, i32 20, !dbg !1167
  %1404 = bitcast i8* %bf.field.offs1776 to i32*, !dbg !1167
  %1405 = load i32* %1404, align 4, !dbg !1167
  %int_cast_to_i6495 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6495), !dbg !1167
  %1406 = lshr i32 %1405, 24, !dbg !1167
  %bf.clear1777 = and i32 %1406, 127, !dbg !1167
  %cmp1778 = icmp ne i32 %bf.clear1777, 0, !dbg !1167
  %lnot1780 = xor i1 %cmp1778, true, !dbg !1167
  %lnot1782 = xor i1 %lnot1780, true, !dbg !1167
  %lnot.ext1783 = zext i1 %lnot1782 to i32, !dbg !1167
  %conv1784 = sext i32 %lnot.ext1783 to i64, !dbg !1167
  %tobool1786 = icmp ne i64 %conv1784, 0, !dbg !1167
  br i1 %tobool1786, label %if.then1787, label %if.end1793, !dbg !1167

if.then1787:                                      ; preds = %if.end1774
  %1407 = load i8** %p, align 8, !dbg !1170
  %1408 = load i8** %data.addr, align 8, !dbg !1170
  %sub.ptr.lhs.cast1788 = ptrtoint i8* %1407 to i64, !dbg !1170
  %sub.ptr.rhs.cast1789 = ptrtoint i8* %1408 to i64, !dbg !1170
  %sub.ptr.sub1790 = sub i64 %sub.ptr.lhs.cast1788, %sub.ptr.rhs.cast1789, !dbg !1170
  %add1791 = add nsw i64 %sub.ptr.sub1790, 1, !dbg !1170
  store i64 %add1791, i64* %retval, !dbg !1170
  br label %do.end3744, !dbg !1170

if.end1793:                                       ; preds = %if.end1774, %if.then1745
  store i8* null, i8** %header_field_mark, align 8, !dbg !1170
  br label %for.inc3405, !dbg !1170

do.body1797:                                      ; preds = %if.end1731
  %1409 = load %struct.http_parser** %parser.addr, align 8, !dbg !1172
  %1410 = bitcast %struct.http_parser* %1409 to i8*, !dbg !1172
  %bf.field.offs1798 = getelementptr i8* %1410, i32 20, !dbg !1172
  %1411 = bitcast i8* %bf.field.offs1798 to i32*, !dbg !1172
  %1412 = load i32* %1411, align 4, !dbg !1172
  %1413 = and i32 %1412, -2130706433, !dbg !1172
  %1414 = or i32 %1413, 369098752, !dbg !1172
  store i32 %1414, i32* %1411, align 4, !dbg !1172
  br label %error, !dbg !1174

sw.bb1800:                                        ; preds = %reexecute
  %1415 = load i8* %ch, align 1, !dbg !1175
  %conv1801 = sext i8 %1415 to i32, !dbg !1175
  %cmp1802 = icmp eq i32 %conv1801, 32, !dbg !1175
  br i1 %cmp1802, label %for.inc3405, label %lor.lhs.false1804, !dbg !1175

lor.lhs.false1804:                                ; preds = %sw.bb1800
  %1416 = load i8* %ch, align 1, !dbg !1175
  %conv1805 = sext i8 %1416 to i32, !dbg !1175
  %cmp1806 = icmp eq i32 %conv1805, 9, !dbg !1175
  br i1 %cmp1806, label %for.inc3405, label %if.end1809, !dbg !1175

if.end1809:                                       ; preds = %lor.lhs.false1804
  %1417 = load i8* %ch, align 1, !dbg !1176
  %conv1810 = sext i8 %1417 to i32, !dbg !1176
  %cmp1811 = icmp eq i32 %conv1810, 13, !dbg !1176
  br i1 %cmp1811, label %if.then1813, label %if.end1814, !dbg !1176

if.then1813:                                      ; preds = %if.end1809
  store i32 45, i32* %p_state, align 4, !dbg !1177
  br label %for.inc3405, !dbg !1179

if.end1814:                                       ; preds = %if.end1809
  %1418 = load i8* %ch, align 1, !dbg !1180
  %conv1815 = sext i8 %1418 to i32, !dbg !1180
  %cmp1816 = icmp eq i32 %conv1815, 10, !dbg !1180
  br i1 %cmp1816, label %if.then1818, label %do.body1821, !dbg !1180

if.then1818:                                      ; preds = %if.end1814
  store i32 46, i32* %p_state, align 4, !dbg !1181
  br label %for.inc3405, !dbg !1183

do.body1821:                                      ; preds = %reexecute, %if.end1814
  %1419 = load i8** %header_value_mark, align 8, !dbg !1184
  %tobool1822 = icmp ne i8* %1419, null, !dbg !1184
  br i1 %tobool1822, label %do.end1825, label %if.then1823, !dbg !1184

if.then1823:                                      ; preds = %do.body1821
  %1420 = load i8** %p, align 8, !dbg !1187
  store i8* %1420, i8** %header_value_mark, align 8, !dbg !1187
  br label %do.end1825, !dbg !1187

do.end1825:                                       ; preds = %do.body1821, %if.then1823
  store i32 48, i32* %p_state, align 4, !dbg !1189
  %1421 = load %struct.http_parser** %parser.addr, align 8, !dbg !1190
  %1422 = bitcast %struct.http_parser* %1421 to i32*, !dbg !1190
  %1423 = load i32* %1422, align 8, !dbg !1190
  %1424 = and i32 %1423, 16777215, !dbg !1190
  store i32 %1424, i32* %1422, align 8, !dbg !1190
  %1425 = load i8* %ch, align 1, !dbg !1191
  %conv1826 = sext i8 %1425 to i32, !dbg !1191
  %or1827 = or i32 %conv1826, 32, !dbg !1191
  %conv1828 = trunc i32 %or1827 to i8, !dbg !1191
  store i8 %conv1828, i8* %c, align 1, !dbg !1191
  %1426 = load %struct.http_parser** %parser.addr, align 8, !dbg !1192
  %1427 = bitcast %struct.http_parser* %1426 to i32*, !dbg !1192
  %1428 = load i32* %1427, align 8, !dbg !1192
  %int_cast_to_i6496 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6496), !dbg !1192
  %1429 = lshr i32 %1428, 16, !dbg !1192
  %bf.clear1829 = and i32 %1429, 255, !dbg !1192
  switch i32 %bf.clear1829, label %sw.default1888 [
    i32 12, label %sw.bb1830
    i32 11, label %sw.bb1834
    i32 10, label %sw.bb1841
    i32 9, label %sw.bb1868
    i32 14, label %for.inc3405
  ], !dbg !1192

sw.bb1830:                                        ; preds = %do.end1825
  %1430 = load %struct.http_parser** %parser.addr, align 8, !dbg !1193
  %1431 = bitcast %struct.http_parser* %1430 to i32*, !dbg !1193
  %1432 = load i32* %1431, align 8, !dbg !1193
  %int_cast_to_i6497 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6497), !dbg !1193
  %1433 = lshr i32 %1432, 2, !dbg !1193
  %bf.clear1831 = and i32 %1433, 127, !dbg !1193
  %or1832 = or i32 %bf.clear1831, 32, !dbg !1193
  %bf.value1833 = and i32 %or1832, 127, !dbg !1193
  %1434 = bitcast %struct.http_parser* %1430 to i32*, !dbg !1193
  %1435 = and i32 %bf.value1833, 127, !dbg !1193
  %int_cast_to_i6498 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6498), !dbg !1193
  %1436 = shl i32 %1435, 2, !dbg !1193
  %1437 = load i32* %1434, align 8, !dbg !1193
  %1438 = and i32 %1437, -509, !dbg !1193
  %1439 = or i32 %1438, %1436, !dbg !1193
  store i32 %1439, i32* %1434, align 8, !dbg !1193
  %1440 = load %struct.http_parser** %parser.addr, align 8, !dbg !1195
  %1441 = bitcast %struct.http_parser* %1440 to i32*, !dbg !1195
  %1442 = load i32* %1441, align 8, !dbg !1195
  %1443 = and i32 %1442, -16711681, !dbg !1195
  store i32 %1443, i32* %1441, align 8, !dbg !1195
  br label %for.inc3405, !dbg !1196

sw.bb1834:                                        ; preds = %do.end1825
  %1444 = load i8* %c, align 1, !dbg !1197
  %conv1835 = sext i8 %1444 to i32, !dbg !1197
  %cmp1836 = icmp eq i32 99, %conv1835, !dbg !1197
  %1445 = load %struct.http_parser** %parser.addr, align 8, !dbg !1198
  %1446 = bitcast %struct.http_parser* %1445 to i32*, !dbg !1198
  %1447 = load i32* %1446, align 8, !dbg !1198
  %1448 = and i32 %1447, -16711681, !dbg !1198
  br i1 %cmp1836, label %if.then1838, label %if.else1839, !dbg !1197

if.then1838:                                      ; preds = %sw.bb1834
  %1449 = or i32 %1448, 851968, !dbg !1198
  store i32 %1449, i32* %1446, align 8, !dbg !1198
  br label %for.inc3405, !dbg !1200

if.else1839:                                      ; preds = %sw.bb1834
  store i32 %1448, i32* %1446, align 8, !dbg !1201
  br label %for.inc3405

sw.bb1841:                                        ; preds = %do.end1825
  %1450 = load i8* %ch, align 1, !dbg !1203
  %conv1842 = sext i8 %1450 to i32, !dbg !1203
  %cmp1843 = icmp sge i32 %conv1842, 48, !dbg !1203
  br i1 %cmp1843, label %land.rhs1845, label %land.end1849, !dbg !1203

land.rhs1845:                                     ; preds = %sw.bb1841
  %1451 = load i8* %ch, align 1, !dbg !1203
  %conv1846 = sext i8 %1451 to i32, !dbg !1203
  %cmp1847 = icmp sle i32 %conv1846, 57, !dbg !1203
  br label %land.end1849

land.end1849:                                     ; preds = %land.rhs1845, %sw.bb1841
  %1452 = phi i1 [ false, %sw.bb1841 ], [ %cmp1847, %land.rhs1845 ]
  %lnot1850 = xor i1 %1452, true
  %lnot1852 = xor i1 %lnot1850, true
  %lnot1854 = xor i1 %lnot1852, true
  %lnot.ext1855 = zext i1 %lnot1854 to i32
  %conv1856 = sext i32 %lnot.ext1855 to i64
  %tobool1858 = icmp ne i64 %conv1856, 0
  br i1 %tobool1858, label %do.body1860, label %if.end1863

do.body1860:                                      ; preds = %land.end1849
  %1453 = load %struct.http_parser** %parser.addr, align 8, !dbg !1204
  %1454 = bitcast %struct.http_parser* %1453 to i8*, !dbg !1204
  %bf.field.offs1861 = getelementptr i8* %1454, i32 20, !dbg !1204
  %1455 = bitcast i8* %bf.field.offs1861 to i32*, !dbg !1204
  %1456 = load i32* %1455, align 4, !dbg !1204
  %1457 = and i32 %1456, -2130706433, !dbg !1204
  %1458 = or i32 %1457, 385875968, !dbg !1204
  store i32 %1458, i32* %1455, align 4, !dbg !1204
  br label %error, !dbg !1207

if.end1863:                                       ; preds = %land.end1849
  %1459 = load i8* %ch, align 1, !dbg !1208
  %conv1864 = sext i8 %1459 to i32, !dbg !1208
  %sub1865 = sub nsw i32 %conv1864, 48, !dbg !1208
  %conv1866 = sext i32 %sub1865 to i64, !dbg !1208
  %1460 = load %struct.http_parser** %parser.addr, align 8, !dbg !1208
  %content_length1867 = getelementptr inbounds %struct.http_parser* %1460, i32 0, i32 5, !dbg !1208
  store i64 %conv1866, i64* %content_length1867, align 8, !dbg !1208
  br label %for.inc3405, !dbg !1209

sw.bb1868:                                        ; preds = %do.end1825
  %1461 = load i8* %c, align 1, !dbg !1210
  %conv1869 = sext i8 %1461 to i32, !dbg !1210
  %cmp1870 = icmp eq i32 %conv1869, 107, !dbg !1210
  br i1 %cmp1870, label %if.then1872, label %if.else1873, !dbg !1210

if.then1872:                                      ; preds = %sw.bb1868
  %1462 = load %struct.http_parser** %parser.addr, align 8, !dbg !1211
  %1463 = bitcast %struct.http_parser* %1462 to i32*, !dbg !1211
  %1464 = load i32* %1463, align 8, !dbg !1211
  %1465 = and i32 %1464, -16711681, !dbg !1211
  %1466 = or i32 %1465, 983040, !dbg !1211
  store i32 %1466, i32* %1463, align 8, !dbg !1211
  br label %for.inc3405, !dbg !1213

if.else1873:                                      ; preds = %sw.bb1868
  %1467 = load i8* %c, align 1, !dbg !1214
  %conv1874 = sext i8 %1467 to i32, !dbg !1214
  %cmp1875 = icmp eq i32 %conv1874, 99, !dbg !1214
  br i1 %cmp1875, label %if.then1877, label %if.else1878, !dbg !1214

if.then1877:                                      ; preds = %if.else1873
  %1468 = load %struct.http_parser** %parser.addr, align 8, !dbg !1215
  %1469 = bitcast %struct.http_parser* %1468 to i32*, !dbg !1215
  %1470 = load i32* %1469, align 8, !dbg !1215
  %1471 = and i32 %1470, -16711681, !dbg !1215
  %1472 = or i32 %1471, 1048576, !dbg !1215
  store i32 %1472, i32* %1469, align 8, !dbg !1215
  br label %for.inc3405, !dbg !1217

if.else1878:                                      ; preds = %if.else1873
  %1473 = load i8* %c, align 1, !dbg !1218
  %conv1879 = sext i8 %1473 to i32, !dbg !1218
  %cmp1880 = icmp eq i32 %conv1879, 117, !dbg !1218
  %1474 = load %struct.http_parser** %parser.addr, align 8, !dbg !1219
  %1475 = bitcast %struct.http_parser* %1474 to i32*, !dbg !1219
  %1476 = load i32* %1475, align 8, !dbg !1219
  %1477 = and i32 %1476, -16711681, !dbg !1219
  br i1 %cmp1880, label %if.then1882, label %if.else1883, !dbg !1218

if.then1882:                                      ; preds = %if.else1878
  %1478 = or i32 %1477, 1114112, !dbg !1219
  store i32 %1478, i32* %1475, align 8, !dbg !1219
  br label %for.inc3405, !dbg !1221

if.else1883:                                      ; preds = %if.else1878
  %1479 = or i32 %1477, 1179648, !dbg !1222
  store i32 %1479, i32* %1475, align 8, !dbg !1222
  br label %for.inc3405

sw.default1888:                                   ; preds = %do.end1825
  %1480 = load %struct.http_parser** %parser.addr, align 8, !dbg !1224
  %1481 = bitcast %struct.http_parser* %1480 to i32*, !dbg !1224
  %1482 = load i32* %1481, align 8, !dbg !1224
  %1483 = and i32 %1482, -16711681, !dbg !1224
  store i32 %1483, i32* %1481, align 8, !dbg !1224
  br label %for.inc3405, !dbg !1225

sw.bb1890:                                        ; preds = %reexecute
  %1484 = load i8** %p, align 8, !dbg !1226
  store i8* %1484, i8** %start1891, align 8, !dbg !1226
  %1485 = load %struct.http_parser** %parser.addr, align 8, !dbg !1228
  %1486 = bitcast %struct.http_parser* %1485 to i32*, !dbg !1228
  %1487 = load i32* %1486, align 8, !dbg !1228
  %int_cast_to_i6499 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i6499), !dbg !1228
  %1488 = lshr i32 %1487, 16, !dbg !1228
  %bf.clear1892 = and i32 %1488, 255, !dbg !1228
  store i32 %bf.clear1892, i32* %h_state, align 4, !dbg !1228
  br label %for.cond1893, !dbg !1229

for.cond1893:                                     ; preds = %for.inc2334, %sw.bb1890
  %1489 = load i8** %p, align 8, !dbg !1229
  %1490 = load i8** %data.addr, align 8, !dbg !1229
  %1491 = load i64* %len.addr, align 8, !dbg !1229
  %add.ptr1894 = getelementptr inbounds i8* %1490, i64 %1491, !dbg !1229
  %cmp1895 = icmp ne i8* %1489, %add.ptr1894, !dbg !1229
  br i1 %cmp1895, label %for.body1897, label %for.end2336, !dbg !1229

for.body1897:                                     ; preds = %for.cond1893
  %1492 = load i8** %p, align 8, !dbg !1231
  %1493 = load i8* %1492, align 1, !dbg !1231
  store i8 %1493, i8* %ch, align 1, !dbg !1231
  %1494 = load i8* %ch, align 1, !dbg !1233
  %conv1898 = sext i8 %1494 to i32, !dbg !1233
  %cmp1899 = icmp eq i32 %conv1898, 13, !dbg !1233
  br i1 %cmp1899, label %if.then1901, label %if.end1963, !dbg !1233

if.then1901:                                      ; preds = %for.body1897
  store i32 50, i32* %p_state, align 4, !dbg !1234
  %1495 = load i32* %h_state, align 4, !dbg !1236
  %1496 = load %struct.http_parser** %parser.addr, align 8, !dbg !1236
  %bf.value1902 = and i32 %1495, 255, !dbg !1236
  %1497 = bitcast %struct.http_parser* %1496 to i32*, !dbg !1236
  %1498 = and i32 %bf.value1902, 255, !dbg !1236
  %int_cast_to_i64100 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64100), !dbg !1236
  %1499 = shl i32 %1498, 16, !dbg !1236
  %1500 = load i32* %1497, align 8, !dbg !1236
  %1501 = and i32 %1500, -16711681, !dbg !1236
  %1502 = or i32 %1501, %1499, !dbg !1236
  store i32 %1502, i32* %1497, align 8, !dbg !1236
  %1503 = load %struct.http_parser** %parser.addr, align 8, !dbg !1237
  %1504 = bitcast %struct.http_parser* %1503 to i8*, !dbg !1237
  %bf.field.offs1904 = getelementptr i8* %1504, i32 20, !dbg !1237
  %1505 = bitcast i8* %bf.field.offs1904 to i32*, !dbg !1237
  %1506 = load i32* %1505, align 4, !dbg !1237
  %int_cast_to_i64101 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64101), !dbg !1237
  %1507 = lshr i32 %1506, 24, !dbg !1237
  %bf.clear1905 = and i32 %1507, 127, !dbg !1237
  %cmp1906 = icmp eq i32 %bf.clear1905, 0, !dbg !1237
  br i1 %cmp1906, label %cond.end1910, label %cond.false1909, !dbg !1237

cond.false1909:                                   ; preds = %if.then1901
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1530, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !1237

cond.end1910:                                     ; preds = %if.then1901
  %1508 = load i8** %header_value_mark, align 8, !dbg !1237
  %tobool1911 = icmp ne i8* %1508, null, !dbg !1237
  br i1 %tobool1911, label %if.then1912, label %for.end2336, !dbg !1237

if.then1912:                                      ; preds = %cond.end1910
  %1509 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1239
  %on_header_value = getelementptr inbounds %struct.http_parser_settings* %1509, i32 0, i32 4, !dbg !1239
  %1510 = load i32 (%struct.http_parser*, i8*, i64)** %on_header_value, align 8, !dbg !1239
  %tobool1913 = icmp ne i32 (%struct.http_parser*, i8*, i64)* %1510, null, !dbg !1239
  %lnot1914 = xor i1 %tobool1913, true, !dbg !1239
  %lnot1916 = xor i1 %lnot1914, true, !dbg !1239
  %lnot.ext1917 = zext i1 %lnot1916 to i32, !dbg !1239
  %conv1918 = sext i32 %lnot.ext1917 to i64, !dbg !1239
  %tobool1920 = icmp ne i64 %conv1918, 0, !dbg !1239
  br i1 %tobool1920, label %if.then1921, label %if.end1960, !dbg !1239

if.then1921:                                      ; preds = %if.then1912
  %1511 = load i32* %p_state, align 4, !dbg !1241
  %1512 = load %struct.http_parser** %parser.addr, align 8, !dbg !1241
  %bf.value1922 = and i32 %1511, 127, !dbg !1241
  %1513 = bitcast %struct.http_parser* %1512 to i32*, !dbg !1241
  %1514 = and i32 %bf.value1922, 127, !dbg !1241
  %int_cast_to_i64102 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64102), !dbg !1241
  %1515 = shl i32 %1514, 9, !dbg !1241
  %1516 = load i32* %1513, align 8, !dbg !1241
  %1517 = and i32 %1516, -65025, !dbg !1241
  %1518 = or i32 %1517, %1515, !dbg !1241
  store i32 %1518, i32* %1513, align 8, !dbg !1241
  %1519 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1241
  %on_header_value1923 = getelementptr inbounds %struct.http_parser_settings* %1519, i32 0, i32 4, !dbg !1241
  %1520 = load i32 (%struct.http_parser*, i8*, i64)** %on_header_value1923, align 8, !dbg !1241
  %1521 = load %struct.http_parser** %parser.addr, align 8, !dbg !1241
  %1522 = load i8** %header_value_mark, align 8, !dbg !1241
  %1523 = load i8** %p, align 8, !dbg !1241
  %1524 = load i8** %header_value_mark, align 8, !dbg !1241
  %sub.ptr.lhs.cast1924 = ptrtoint i8* %1523 to i64, !dbg !1241
  %sub.ptr.rhs.cast1925 = ptrtoint i8* %1524 to i64, !dbg !1241
  %sub.ptr.sub1926 = sub i64 %sub.ptr.lhs.cast1924, %sub.ptr.rhs.cast1925, !dbg !1241
  %call1927 = call i32 %1520(%struct.http_parser* %1521, i8* %1522, i64 %sub.ptr.sub1926), !dbg !1241
  %cmp1928 = icmp ne i32 0, %call1927, !dbg !1241
  %lnot1930 = xor i1 %cmp1928, true, !dbg !1241
  %lnot1932 = xor i1 %lnot1930, true, !dbg !1241
  %lnot.ext1933 = zext i1 %lnot1932 to i32, !dbg !1241
  %conv1934 = sext i32 %lnot.ext1933 to i64, !dbg !1241
  %tobool1936 = icmp ne i64 %conv1934, 0, !dbg !1241
  br i1 %tobool1936, label %do.body1938, label %if.end1941, !dbg !1241

do.body1938:                                      ; preds = %if.then1921
  %1525 = load %struct.http_parser** %parser.addr, align 8, !dbg !1243
  %1526 = bitcast %struct.http_parser* %1525 to i8*, !dbg !1243
  %bf.field.offs1939 = getelementptr i8* %1526, i32 20, !dbg !1243
  %1527 = bitcast i8* %bf.field.offs1939 to i32*, !dbg !1243
  %1528 = load i32* %1527, align 4, !dbg !1243
  %1529 = and i32 %1528, -2130706433, !dbg !1243
  %1530 = or i32 %1529, 67108864, !dbg !1243
  store i32 %1530, i32* %1527, align 4, !dbg !1243
  br label %if.end1941, !dbg !1243

if.end1941:                                       ; preds = %do.body1938, %if.then1921
  %1531 = load %struct.http_parser** %parser.addr, align 8, !dbg !1243
  %1532 = bitcast %struct.http_parser* %1531 to i32*, !dbg !1243
  %1533 = load i32* %1532, align 8, !dbg !1243
  %int_cast_to_i64103 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64103), !dbg !1243
  %1534 = lshr i32 %1533, 9, !dbg !1243
  %bf.clear1942 = and i32 %1534, 127, !dbg !1243
  store i32 %bf.clear1942, i32* %p_state, align 4, !dbg !1243
  %1535 = load %struct.http_parser** %parser.addr, align 8, !dbg !1243
  %1536 = bitcast %struct.http_parser* %1535 to i8*, !dbg !1243
  %bf.field.offs1943 = getelementptr i8* %1536, i32 20, !dbg !1243
  %1537 = bitcast i8* %bf.field.offs1943 to i32*, !dbg !1243
  %1538 = load i32* %1537, align 4, !dbg !1243
  %int_cast_to_i64104 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64104), !dbg !1243
  %1539 = lshr i32 %1538, 24, !dbg !1243
  %bf.clear1944 = and i32 %1539, 127, !dbg !1243
  %cmp1945 = icmp ne i32 %bf.clear1944, 0, !dbg !1243
  %lnot1947 = xor i1 %cmp1945, true, !dbg !1243
  %lnot1949 = xor i1 %lnot1947, true, !dbg !1243
  %lnot.ext1950 = zext i1 %lnot1949 to i32, !dbg !1243
  %conv1951 = sext i32 %lnot.ext1950 to i64, !dbg !1243
  %tobool1953 = icmp ne i64 %conv1951, 0, !dbg !1243
  br i1 %tobool1953, label %if.then1954, label %if.end1960, !dbg !1243

if.then1954:                                      ; preds = %if.end1941
  %1540 = load i8** %p, align 8, !dbg !1246
  %1541 = load i8** %data.addr, align 8, !dbg !1246
  %sub.ptr.lhs.cast1955 = ptrtoint i8* %1540 to i64, !dbg !1246
  %sub.ptr.rhs.cast1956 = ptrtoint i8* %1541 to i64, !dbg !1246
  %sub.ptr.sub1957 = sub i64 %sub.ptr.lhs.cast1955, %sub.ptr.rhs.cast1956, !dbg !1246
  %add1958 = add nsw i64 %sub.ptr.sub1957, 1, !dbg !1246
  store i64 %add1958, i64* %retval, !dbg !1246
  br label %do.end3744, !dbg !1246

if.end1960:                                       ; preds = %if.end1941, %if.then1912
  store i8* null, i8** %header_value_mark, align 8, !dbg !1246
  br label %for.end2336, !dbg !1246

if.end1963:                                       ; preds = %for.body1897
  %1542 = load i8* %ch, align 1, !dbg !1248
  %conv1964 = sext i8 %1542 to i32, !dbg !1248
  %cmp1965 = icmp eq i32 %conv1964, 10, !dbg !1248
  br i1 %cmp1965, label %if.then1967, label %if.end2053, !dbg !1248

if.then1967:                                      ; preds = %if.end1963
  store i32 50, i32* %p_state, align 4, !dbg !1249
  %1543 = load i8** %p, align 8, !dbg !1251
  %1544 = load i8** %start1891, align 8, !dbg !1251
  %sub.ptr.lhs.cast1969 = ptrtoint i8* %1543 to i64, !dbg !1251
  %sub.ptr.rhs.cast1970 = ptrtoint i8* %1544 to i64, !dbg !1251
  %sub.ptr.sub1971 = sub i64 %sub.ptr.lhs.cast1969, %sub.ptr.rhs.cast1970, !dbg !1251
  %1545 = load %struct.http_parser** %parser.addr, align 8, !dbg !1251
  %nread1972 = getelementptr inbounds %struct.http_parser* %1545, i32 0, i32 4, !dbg !1251
  %1546 = load i32* %nread1972, align 4, !dbg !1251
  %conv1973 = zext i32 %1546 to i64, !dbg !1251
  %add1974 = add nsw i64 %conv1973, %sub.ptr.sub1971, !dbg !1251
  %conv1975 = trunc i64 %add1974 to i32, !dbg !1251
  store i32 %conv1975, i32* %nread1972, align 4, !dbg !1251
  %1547 = load %struct.http_parser** %parser.addr, align 8, !dbg !1251
  %nread1976 = getelementptr inbounds %struct.http_parser* %1547, i32 0, i32 4, !dbg !1251
  %1548 = load i32* %nread1976, align 4, !dbg !1251
  %cmp1977 = icmp ugt i32 %1548, 81920, !dbg !1251
  %lnot1979 = xor i1 %cmp1977, true, !dbg !1251
  %lnot1981 = xor i1 %lnot1979, true, !dbg !1251
  %lnot.ext1982 = zext i1 %lnot1981 to i32, !dbg !1251
  %conv1983 = sext i32 %lnot.ext1982 to i64, !dbg !1251
  %tobool1985 = icmp ne i64 %conv1983, 0, !dbg !1251
  br i1 %tobool1985, label %do.body1987, label %do.end1991, !dbg !1251

do.body1987:                                      ; preds = %if.then1967
  %1549 = load %struct.http_parser** %parser.addr, align 8, !dbg !1253
  %1550 = bitcast %struct.http_parser* %1549 to i8*, !dbg !1253
  %bf.field.offs1988 = getelementptr i8* %1550, i32 20, !dbg !1253
  %1551 = bitcast i8* %bf.field.offs1988 to i32*, !dbg !1253
  %1552 = load i32* %1551, align 4, !dbg !1253
  %1553 = and i32 %1552, -2130706433, !dbg !1253
  %1554 = or i32 %1553, 167772160, !dbg !1253
  store i32 %1554, i32* %1551, align 4, !dbg !1253
  br label %error, !dbg !1253

do.end1991:                                       ; preds = %if.then1967
  %1555 = load i32* %h_state, align 4, !dbg !1256
  %1556 = load %struct.http_parser** %parser.addr, align 8, !dbg !1256
  %bf.value1992 = and i32 %1555, 255, !dbg !1256
  %1557 = bitcast %struct.http_parser* %1556 to i32*, !dbg !1256
  %1558 = and i32 %bf.value1992, 255, !dbg !1256
  %int_cast_to_i64105 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64105), !dbg !1256
  %1559 = shl i32 %1558, 16, !dbg !1256
  %1560 = load i32* %1557, align 8, !dbg !1256
  %1561 = and i32 %1560, -16711681, !dbg !1256
  %1562 = or i32 %1561, %1559, !dbg !1256
  store i32 %1562, i32* %1557, align 8, !dbg !1256
  %1563 = load %struct.http_parser** %parser.addr, align 8, !dbg !1257
  %1564 = bitcast %struct.http_parser* %1563 to i8*, !dbg !1257
  %bf.field.offs1994 = getelementptr i8* %1564, i32 20, !dbg !1257
  %1565 = bitcast i8* %bf.field.offs1994 to i32*, !dbg !1257
  %1566 = load i32* %1565, align 4, !dbg !1257
  %int_cast_to_i64106 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64106), !dbg !1257
  %1567 = lshr i32 %1566, 24, !dbg !1257
  %bf.clear1995 = and i32 %1567, 127, !dbg !1257
  %cmp1996 = icmp eq i32 %bf.clear1995, 0, !dbg !1257
  br i1 %cmp1996, label %cond.end2000, label %cond.false1999, !dbg !1257

cond.false1999:                                   ; preds = %do.end1991
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1538, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !1257

cond.end2000:                                     ; preds = %do.end1991
  %1568 = load i8** %header_value_mark, align 8, !dbg !1257
  %tobool2001 = icmp ne i8* %1568, null, !dbg !1257
  br i1 %tobool2001, label %if.then2002, label %reexecute, !dbg !1257

if.then2002:                                      ; preds = %cond.end2000
  %1569 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1259
  %on_header_value2003 = getelementptr inbounds %struct.http_parser_settings* %1569, i32 0, i32 4, !dbg !1259
  %1570 = load i32 (%struct.http_parser*, i8*, i64)** %on_header_value2003, align 8, !dbg !1259
  %tobool2004 = icmp ne i32 (%struct.http_parser*, i8*, i64)* %1570, null, !dbg !1259
  %lnot2005 = xor i1 %tobool2004, true, !dbg !1259
  %lnot2007 = xor i1 %lnot2005, true, !dbg !1259
  %lnot.ext2008 = zext i1 %lnot2007 to i32, !dbg !1259
  %conv2009 = sext i32 %lnot.ext2008 to i64, !dbg !1259
  %tobool2011 = icmp ne i64 %conv2009, 0, !dbg !1259
  br i1 %tobool2011, label %if.then2012, label %if.end2050, !dbg !1259

if.then2012:                                      ; preds = %if.then2002
  %1571 = load i32* %p_state, align 4, !dbg !1261
  %1572 = load %struct.http_parser** %parser.addr, align 8, !dbg !1261
  %bf.value2013 = and i32 %1571, 127, !dbg !1261
  %1573 = bitcast %struct.http_parser* %1572 to i32*, !dbg !1261
  %1574 = and i32 %bf.value2013, 127, !dbg !1261
  %int_cast_to_i64107 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64107), !dbg !1261
  %1575 = shl i32 %1574, 9, !dbg !1261
  %1576 = load i32* %1573, align 8, !dbg !1261
  %1577 = and i32 %1576, -65025, !dbg !1261
  %1578 = or i32 %1577, %1575, !dbg !1261
  store i32 %1578, i32* %1573, align 8, !dbg !1261
  %1579 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1261
  %on_header_value2014 = getelementptr inbounds %struct.http_parser_settings* %1579, i32 0, i32 4, !dbg !1261
  %1580 = load i32 (%struct.http_parser*, i8*, i64)** %on_header_value2014, align 8, !dbg !1261
  %1581 = load %struct.http_parser** %parser.addr, align 8, !dbg !1261
  %1582 = load i8** %header_value_mark, align 8, !dbg !1261
  %1583 = load i8** %p, align 8, !dbg !1261
  %1584 = load i8** %header_value_mark, align 8, !dbg !1261
  %sub.ptr.lhs.cast2015 = ptrtoint i8* %1583 to i64, !dbg !1261
  %sub.ptr.rhs.cast2016 = ptrtoint i8* %1584 to i64, !dbg !1261
  %sub.ptr.sub2017 = sub i64 %sub.ptr.lhs.cast2015, %sub.ptr.rhs.cast2016, !dbg !1261
  %call2018 = call i32 %1580(%struct.http_parser* %1581, i8* %1582, i64 %sub.ptr.sub2017), !dbg !1261
  %cmp2019 = icmp ne i32 0, %call2018, !dbg !1261
  %lnot2021 = xor i1 %cmp2019, true, !dbg !1261
  %lnot2023 = xor i1 %lnot2021, true, !dbg !1261
  %lnot.ext2024 = zext i1 %lnot2023 to i32, !dbg !1261
  %conv2025 = sext i32 %lnot.ext2024 to i64, !dbg !1261
  %tobool2027 = icmp ne i64 %conv2025, 0, !dbg !1261
  br i1 %tobool2027, label %do.body2029, label %if.end2032, !dbg !1261

do.body2029:                                      ; preds = %if.then2012
  %1585 = load %struct.http_parser** %parser.addr, align 8, !dbg !1263
  %1586 = bitcast %struct.http_parser* %1585 to i8*, !dbg !1263
  %bf.field.offs2030 = getelementptr i8* %1586, i32 20, !dbg !1263
  %1587 = bitcast i8* %bf.field.offs2030 to i32*, !dbg !1263
  %1588 = load i32* %1587, align 4, !dbg !1263
  %1589 = and i32 %1588, -2130706433, !dbg !1263
  %1590 = or i32 %1589, 67108864, !dbg !1263
  store i32 %1590, i32* %1587, align 4, !dbg !1263
  br label %if.end2032, !dbg !1263

if.end2032:                                       ; preds = %do.body2029, %if.then2012
  %1591 = load %struct.http_parser** %parser.addr, align 8, !dbg !1263
  %1592 = bitcast %struct.http_parser* %1591 to i32*, !dbg !1263
  %1593 = load i32* %1592, align 8, !dbg !1263
  %int_cast_to_i64108 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64108), !dbg !1263
  %1594 = lshr i32 %1593, 9, !dbg !1263
  %bf.clear2033 = and i32 %1594, 127, !dbg !1263
  store i32 %bf.clear2033, i32* %p_state, align 4, !dbg !1263
  %1595 = load %struct.http_parser** %parser.addr, align 8, !dbg !1263
  %1596 = bitcast %struct.http_parser* %1595 to i8*, !dbg !1263
  %bf.field.offs2034 = getelementptr i8* %1596, i32 20, !dbg !1263
  %1597 = bitcast i8* %bf.field.offs2034 to i32*, !dbg !1263
  %1598 = load i32* %1597, align 4, !dbg !1263
  %int_cast_to_i64109 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64109), !dbg !1263
  %1599 = lshr i32 %1598, 24, !dbg !1263
  %bf.clear2035 = and i32 %1599, 127, !dbg !1263
  %cmp2036 = icmp ne i32 %bf.clear2035, 0, !dbg !1263
  %lnot2038 = xor i1 %cmp2036, true, !dbg !1263
  %lnot2040 = xor i1 %lnot2038, true, !dbg !1263
  %lnot.ext2041 = zext i1 %lnot2040 to i32, !dbg !1263
  %conv2042 = sext i32 %lnot.ext2041 to i64, !dbg !1263
  %tobool2044 = icmp ne i64 %conv2042, 0, !dbg !1263
  br i1 %tobool2044, label %if.then2045, label %if.end2050, !dbg !1263

if.then2045:                                      ; preds = %if.end2032
  %1600 = load i8** %p, align 8, !dbg !1266
  %1601 = load i8** %data.addr, align 8, !dbg !1266
  %sub.ptr.lhs.cast2046 = ptrtoint i8* %1600 to i64, !dbg !1266
  %sub.ptr.rhs.cast2047 = ptrtoint i8* %1601 to i64, !dbg !1266
  %sub.ptr.sub2048 = sub i64 %sub.ptr.lhs.cast2046, %sub.ptr.rhs.cast2047, !dbg !1266
  store i64 %sub.ptr.sub2048, i64* %retval, !dbg !1266
  br label %do.end3744, !dbg !1266

if.end2050:                                       ; preds = %if.end2032, %if.then2002
  store i8* null, i8** %header_value_mark, align 8, !dbg !1266
  br label %reexecute, !dbg !1266

if.end2053:                                       ; preds = %if.end1963
  %1602 = load i8* %ch, align 1, !dbg !1268
  %conv2054 = sext i8 %1602 to i32, !dbg !1268
  %or2055 = or i32 %conv2054, 32, !dbg !1268
  %conv2056 = trunc i32 %or2055 to i8, !dbg !1268
  store i8 %conv2056, i8* %c, align 1, !dbg !1268
  %1603 = load i32* %h_state, align 4, !dbg !1269
  switch i32 %1603, label %sw.default2332 [
    i32 0, label %sw.bb2057
    i32 9, label %sw.bb2097
    i32 11, label %sw.bb2097
    i32 10, label %sw.bb2098
    i32 13, label %sw.bb2150
    i32 14, label %sw.bb2175
    i32 15, label %sw.bb2210
    i32 16, label %sw.bb2235
    i32 17, label %sw.bb2260
    i32 18, label %sw.bb2285
    i32 19, label %sw.bb2291
    i32 20, label %sw.bb2297
    i32 21, label %sw.bb2297
    i32 22, label %sw.bb2297
  ], !dbg !1269

sw.bb2057:                                        ; preds = %if.end2053
  %1604 = load i8** %data.addr, align 8, !dbg !1270
  %1605 = load i64* %len.addr, align 8, !dbg !1270
  %add.ptr2058 = getelementptr inbounds i8* %1604, i64 %1605, !dbg !1270
  %1606 = load i8** %p, align 8, !dbg !1270
  %sub.ptr.lhs.cast2059 = ptrtoint i8* %add.ptr2058 to i64, !dbg !1270
  %sub.ptr.rhs.cast2060 = ptrtoint i8* %1606 to i64, !dbg !1270
  %sub.ptr.sub2061 = sub i64 %sub.ptr.lhs.cast2059, %sub.ptr.rhs.cast2060, !dbg !1270
  store i64 %sub.ptr.sub2061, i64* %limit, align 8, !dbg !1270
  %1607 = load i64* %limit, align 8, !dbg !1273
  %cmp2062 = icmp ult i64 %1607, 81920, !dbg !1273
  %1608 = load i64* %limit, align 8, !dbg !1273
  %cond2067 = select i1 %cmp2062, i64 %1608, i64 81920, !dbg !1273
  store i64 %cond2067, i64* %limit, align 8, !dbg !1273
  %1609 = load i8** %p, align 8, !dbg !1274
  %1610 = load i64* %limit, align 8, !dbg !1274
  %call2068 = call i8* @memchr(i8* %1609, i32 13, i64 %1610) nounwind readonly, !dbg !1274
  store i8* %call2068, i8** %p_cr, align 8, !dbg !1274
  %1611 = load i8** %p, align 8, !dbg !1275
  %1612 = load i64* %limit, align 8, !dbg !1275
  %call2069 = call i8* @memchr(i8* %1611, i32 10, i64 %1612) nounwind readonly, !dbg !1275
  store i8* %call2069, i8** %p_lf, align 8, !dbg !1275
  %1613 = load i8** %p_cr, align 8, !dbg !1276
  %cmp2070 = icmp ne i8* %1613, null, !dbg !1276
  %1614 = load i8** %p_lf, align 8, !dbg !1277
  %cmp2073 = icmp ne i8* %1614, null, !dbg !1277
  br i1 %cmp2070, label %if.then2072, label %if.else2081, !dbg !1276

if.then2072:                                      ; preds = %sw.bb2057
  br i1 %cmp2073, label %land.lhs.true2075, label %if.else2079, !dbg !1277

land.lhs.true2075:                                ; preds = %if.then2072
  %1615 = load i8** %p_cr, align 8, !dbg !1277
  %1616 = load i8** %p_lf, align 8, !dbg !1277
  %cmp2076 = icmp uge i8* %1615, %1616, !dbg !1277
  br i1 %cmp2076, label %if.then2078, label %if.else2079, !dbg !1277

if.then2078:                                      ; preds = %land.lhs.true2075
  %1617 = load i8** %p_lf, align 8, !dbg !1279
  store i8* %1617, i8** %p, align 8, !dbg !1279
  br label %if.end2095, !dbg !1279

if.else2079:                                      ; preds = %land.lhs.true2075, %if.then2072
  %1618 = load i8** %p_cr, align 8, !dbg !1280
  store i8* %1618, i8** %p, align 8, !dbg !1280
  br label %if.end2095

if.else2081:                                      ; preds = %sw.bb2057
  %lnot2084 = xor i1 %cmp2073, true, !dbg !1281
  %lnot2086 = xor i1 %lnot2084, true, !dbg !1281
  %lnot.ext2087 = zext i1 %lnot2086 to i32, !dbg !1281
  %conv2088 = sext i32 %lnot.ext2087 to i64, !dbg !1281
  %tobool2090 = icmp ne i64 %conv2088, 0, !dbg !1281
  br i1 %tobool2090, label %if.then2091, label %if.else2092, !dbg !1281

if.then2091:                                      ; preds = %if.else2081
  %1619 = load i8** %p_lf, align 8, !dbg !1282
  store i8* %1619, i8** %p, align 8, !dbg !1282
  br label %if.end2095, !dbg !1284

if.else2092:                                      ; preds = %if.else2081
  %1620 = load i8** %data.addr, align 8, !dbg !1285
  %1621 = load i64* %len.addr, align 8, !dbg !1285
  %add.ptr2093 = getelementptr inbounds i8* %1620, i64 %1621, !dbg !1285
  store i8* %add.ptr2093, i8** %p, align 8, !dbg !1285
  br label %if.end2095

if.end2095:                                       ; preds = %if.then2091, %if.else2092, %if.then2078, %if.else2079
  %1622 = load i8** %p, align 8, !dbg !1287
  %incdec.ptr2096 = getelementptr inbounds i8* %1622, i32 -1, !dbg !1287
  store i8* %incdec.ptr2096, i8** %p, align 8, !dbg !1287
  br label %for.inc2334, !dbg !1288

sw.bb2097:                                        ; preds = %if.end2053, %if.end2053
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1572, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0
  unreachable, !dbg !1289

sw.bb2098:                                        ; preds = %if.end2053
  %1623 = load i8* %ch, align 1, !dbg !1290
  %conv2099 = sext i8 %1623 to i32, !dbg !1290
  %cmp2100 = icmp eq i32 %conv2099, 32, !dbg !1290
  br i1 %cmp2100, label %for.inc2334, label %if.end2103, !dbg !1290

if.end2103:                                       ; preds = %sw.bb2098
  %1624 = load i8* %ch, align 1, !dbg !1292
  %conv2104 = sext i8 %1624 to i32, !dbg !1292
  %cmp2105 = icmp sge i32 %conv2104, 48, !dbg !1292
  br i1 %cmp2105, label %land.rhs2107, label %land.end2111, !dbg !1292

land.rhs2107:                                     ; preds = %if.end2103
  %1625 = load i8* %ch, align 1, !dbg !1292
  %conv2108 = sext i8 %1625 to i32, !dbg !1292
  %cmp2109 = icmp sle i32 %conv2108, 57, !dbg !1292
  br label %land.end2111

land.end2111:                                     ; preds = %land.rhs2107, %if.end2103
  %1626 = phi i1 [ false, %if.end2103 ], [ %cmp2109, %land.rhs2107 ]
  %lnot2112 = xor i1 %1626, true
  %lnot2114 = xor i1 %lnot2112, true
  %lnot2116 = xor i1 %lnot2114, true
  %lnot.ext2117 = zext i1 %lnot2116 to i32
  %conv2118 = sext i32 %lnot.ext2117 to i64
  %tobool2120 = icmp ne i64 %conv2118, 0
  %1627 = load %struct.http_parser** %parser.addr, align 8, !dbg !1293
  br i1 %tobool2120, label %do.body2122, label %if.end2126

do.body2122:                                      ; preds = %land.end2111
  %1628 = bitcast %struct.http_parser* %1627 to i8*, !dbg !1293
  %bf.field.offs2123 = getelementptr i8* %1628, i32 20, !dbg !1293
  %1629 = bitcast i8* %bf.field.offs2123 to i32*, !dbg !1293
  %1630 = load i32* %1629, align 4, !dbg !1293
  %1631 = and i32 %1630, -2130706433, !dbg !1293
  %1632 = or i32 %1631, 385875968, !dbg !1293
  store i32 %1632, i32* %1629, align 4, !dbg !1293
  %1633 = load i32* %h_state, align 4, !dbg !1296
  %1634 = load %struct.http_parser** %parser.addr, align 8, !dbg !1296
  %bf.value2125 = and i32 %1633, 255, !dbg !1296
  %1635 = bitcast %struct.http_parser* %1634 to i32*, !dbg !1296
  %1636 = and i32 %bf.value2125, 255, !dbg !1296
  %int_cast_to_i64110 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64110), !dbg !1296
  %1637 = shl i32 %1636, 16, !dbg !1296
  %1638 = load i32* %1635, align 8, !dbg !1296
  %1639 = and i32 %1638, -16711681, !dbg !1296
  %1640 = or i32 %1639, %1637, !dbg !1296
  store i32 %1640, i32* %1635, align 8, !dbg !1296
  br label %error, !dbg !1297

if.end2126:                                       ; preds = %land.end2111
  %content_length2127 = getelementptr inbounds %struct.http_parser* %1627, i32 0, i32 5, !dbg !1298
  %1641 = load i64* %content_length2127, align 8, !dbg !1298
  store i64 %1641, i64* %t, align 8, !dbg !1298
  %1642 = load i64* %t, align 8, !dbg !1299
  %mul2128 = mul i64 %1642, 10, !dbg !1299
  store i64 %mul2128, i64* %t, align 8, !dbg !1299
  %1643 = load i8* %ch, align 1, !dbg !1300
  %conv2129 = sext i8 %1643 to i32, !dbg !1300
  %sub2130 = sub nsw i32 %conv2129, 48, !dbg !1300
  %conv2131 = sext i32 %sub2130 to i64, !dbg !1300
  %1644 = load i64* %t, align 8, !dbg !1300
  %add2132 = add i64 %1644, %conv2131, !dbg !1300
  store i64 %add2132, i64* %t, align 8, !dbg !1300
  %1645 = load %struct.http_parser** %parser.addr, align 8, !dbg !1301
  %content_length2133 = getelementptr inbounds %struct.http_parser* %1645, i32 0, i32 5, !dbg !1301
  %1646 = load i64* %content_length2133, align 8, !dbg !1301
  %cmp2134 = icmp ult i64 1844674407370955160, %1646, !dbg !1301
  %lnot2136 = xor i1 %cmp2134, true, !dbg !1301
  %lnot2138 = xor i1 %lnot2136, true, !dbg !1301
  %lnot.ext2139 = zext i1 %lnot2138 to i32, !dbg !1301
  %conv2140 = sext i32 %lnot.ext2139 to i64, !dbg !1301
  %tobool2142 = icmp ne i64 %conv2140, 0, !dbg !1301
  br i1 %tobool2142, label %do.body2144, label %if.end2148, !dbg !1301

do.body2144:                                      ; preds = %if.end2126
  %1647 = load %struct.http_parser** %parser.addr, align 8, !dbg !1302
  %1648 = bitcast %struct.http_parser* %1647 to i8*, !dbg !1302
  %bf.field.offs2145 = getelementptr i8* %1648, i32 20, !dbg !1302
  %1649 = bitcast i8* %bf.field.offs2145 to i32*, !dbg !1302
  %1650 = load i32* %1649, align 4, !dbg !1302
  %1651 = and i32 %1650, -2130706433, !dbg !1302
  %1652 = or i32 %1651, 385875968, !dbg !1302
  store i32 %1652, i32* %1649, align 4, !dbg !1302
  %1653 = load i32* %h_state, align 4, !dbg !1305
  %1654 = load %struct.http_parser** %parser.addr, align 8, !dbg !1305
  %bf.value2147 = and i32 %1653, 255, !dbg !1305
  %1655 = bitcast %struct.http_parser* %1654 to i32*, !dbg !1305
  %1656 = and i32 %bf.value2147, 255, !dbg !1305
  %int_cast_to_i64111 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64111), !dbg !1305
  %1657 = shl i32 %1656, 16, !dbg !1305
  %1658 = load i32* %1655, align 8, !dbg !1305
  %1659 = and i32 %1658, -16711681, !dbg !1305
  %1660 = or i32 %1659, %1657, !dbg !1305
  store i32 %1660, i32* %1655, align 8, !dbg !1305
  br label %error, !dbg !1306

if.end2148:                                       ; preds = %if.end2126
  %1661 = load i64* %t, align 8, !dbg !1307
  %1662 = load %struct.http_parser** %parser.addr, align 8, !dbg !1307
  %content_length2149 = getelementptr inbounds %struct.http_parser* %1662, i32 0, i32 5, !dbg !1307
  store i64 %1661, i64* %content_length2149, align 8, !dbg !1307
  br label %for.inc2334, !dbg !1308

sw.bb2150:                                        ; preds = %if.end2053
  %1663 = load %struct.http_parser** %parser.addr, align 8, !dbg !1309
  %1664 = bitcast %struct.http_parser* %1663 to i32*, !dbg !1309
  %1665 = load i32* %1664, align 8, !dbg !1309
  %int_cast_to_i64112 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64112), !dbg !1309
  %1666 = lshr i32 %1665, 24, !dbg !1309
  %bf.clear2151 = and i32 %1666, 255, !dbg !1309
  %inc2152 = add i32 %bf.clear2151, 1, !dbg !1309
  %bf.value2153 = and i32 %inc2152, 255, !dbg !1309
  %1667 = bitcast %struct.http_parser* %1663 to i32*, !dbg !1309
  %1668 = and i32 %bf.value2153, 255, !dbg !1309
  %int_cast_to_i64113 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64113), !dbg !1309
  %1669 = shl i32 %1668, 24, !dbg !1309
  %1670 = load i32* %1667, align 8, !dbg !1309
  %1671 = and i32 %1670, 16777215, !dbg !1309
  %1672 = or i32 %1671, %1669, !dbg !1309
  store i32 %1672, i32* %1667, align 8, !dbg !1309
  %1673 = load %struct.http_parser** %parser.addr, align 8, !dbg !1310
  %1674 = bitcast %struct.http_parser* %1673 to i32*, !dbg !1310
  %1675 = load i32* %1674, align 8, !dbg !1310
  %int_cast_to_i64114 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64114), !dbg !1310
  %1676 = lshr i32 %1675, 24, !dbg !1310
  %bf.clear2154 = and i32 %1676, 255, !dbg !1310
  %conv2155 = zext i32 %bf.clear2154 to i64, !dbg !1310
  %cmp2156 = icmp ugt i64 %conv2155, 7, !dbg !1310
  br i1 %cmp2156, label %if.then2166, label %lor.lhs.false2158, !dbg !1310

lor.lhs.false2158:                                ; preds = %sw.bb2150
  %1677 = load i8* %c, align 1, !dbg !1310
  %conv2159 = sext i8 %1677 to i32, !dbg !1310
  %1678 = load %struct.http_parser** %parser.addr, align 8, !dbg !1310
  %1679 = bitcast %struct.http_parser* %1678 to i32*, !dbg !1310
  %1680 = load i32* %1679, align 8, !dbg !1310
  %int_cast_to_i64115 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64115), !dbg !1310
  %1681 = lshr i32 %1680, 24, !dbg !1310
  %bf.clear2160 = and i32 %1681, 255, !dbg !1310
  %idxprom2161 = zext i32 %bf.clear2160 to i64, !dbg !1310
  %arrayidx2162 = getelementptr inbounds [8 x i8]* @.str9, i32 0, i64 %idxprom2161, !dbg !1310
  %1682 = load i8* %arrayidx2162, align 1, !dbg !1310
  %conv2163 = sext i8 %1682 to i32, !dbg !1310
  %cmp2164 = icmp ne i32 %conv2159, %conv2163, !dbg !1310
  br i1 %cmp2164, label %if.then2166, label %if.else2167, !dbg !1310

if.then2166:                                      ; preds = %lor.lhs.false2158, %sw.bb2150
  store i32 0, i32* %h_state, align 4, !dbg !1311
  br label %for.inc2334, !dbg !1313

if.else2167:                                      ; preds = %lor.lhs.false2158
  %1683 = load %struct.http_parser** %parser.addr, align 8, !dbg !1314
  %1684 = bitcast %struct.http_parser* %1683 to i32*, !dbg !1314
  %1685 = load i32* %1684, align 8, !dbg !1314
  %int_cast_to_i64116 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64116), !dbg !1314
  %1686 = lshr i32 %1685, 24, !dbg !1314
  %bf.clear2168 = and i32 %1686, 255, !dbg !1314
  %conv2169 = zext i32 %bf.clear2168 to i64, !dbg !1314
  %cmp2170 = icmp eq i64 %conv2169, 6, !dbg !1314
  br i1 %cmp2170, label %if.then2172, label %for.inc2334, !dbg !1314

if.then2172:                                      ; preds = %if.else2167
  store i32 19, i32* %h_state, align 4, !dbg !1315
  br label %for.inc2334, !dbg !1317

sw.bb2175:                                        ; preds = %if.end2053
  %1687 = load i8* %c, align 1, !dbg !1318
  %conv2176 = sext i8 %1687 to i32, !dbg !1318
  %cmp2177 = icmp eq i32 %conv2176, 107, !dbg !1318
  br i1 %cmp2177, label %if.then2179, label %if.else2180, !dbg !1318

if.then2179:                                      ; preds = %sw.bb2175
  store i32 15, i32* %h_state, align 4, !dbg !1319
  br label %for.inc2334, !dbg !1321

if.else2180:                                      ; preds = %sw.bb2175
  %1688 = load i8* %c, align 1, !dbg !1322
  %conv2181 = sext i8 %1688 to i32, !dbg !1322
  %cmp2182 = icmp eq i32 %conv2181, 99, !dbg !1322
  br i1 %cmp2182, label %if.then2184, label %if.else2185, !dbg !1322

if.then2184:                                      ; preds = %if.else2180
  store i32 16, i32* %h_state, align 4, !dbg !1323
  br label %for.inc2334, !dbg !1325

if.else2185:                                      ; preds = %if.else2180
  %1689 = load i8* %c, align 1, !dbg !1326
  %conv2186 = sext i8 %1689 to i32, !dbg !1326
  %cmp2187 = icmp eq i32 %conv2186, 117, !dbg !1326
  br i1 %cmp2187, label %if.then2189, label %if.else2190, !dbg !1326

if.then2189:                                      ; preds = %if.else2185
  store i32 17, i32* %h_state, align 4, !dbg !1327
  br label %for.inc2334, !dbg !1329

if.else2190:                                      ; preds = %if.else2185
  %1690 = load i8* %c, align 1, !dbg !1330
  %idxprom2191 = zext i8 %1690 to i64, !dbg !1330
  %arrayidx2192 = getelementptr inbounds [256 x i8]* @tokens, i32 0, i64 %idxprom2191, !dbg !1330
  %1691 = load i8* %arrayidx2192, align 1, !dbg !1330
  %tobool2193 = icmp ne i8 %1691, 0, !dbg !1330
  br i1 %tobool2193, label %if.then2194, label %if.else2195, !dbg !1330

if.then2194:                                      ; preds = %if.else2190
  store i32 18, i32* %h_state, align 4, !dbg !1331
  br label %for.inc2334, !dbg !1333

if.else2195:                                      ; preds = %if.else2190
  %1692 = load i8* %c, align 1, !dbg !1334
  %conv2196 = sext i8 %1692 to i32, !dbg !1334
  %cmp2197 = icmp eq i32 %conv2196, 32, !dbg !1334
  br i1 %cmp2197, label %for.inc2334, label %lor.lhs.false2199, !dbg !1334

lor.lhs.false2199:                                ; preds = %if.else2195
  %1693 = load i8* %c, align 1, !dbg !1334
  %conv2200 = sext i8 %1693 to i32, !dbg !1334
  %cmp2201 = icmp eq i32 %conv2200, 9, !dbg !1334
  br i1 %cmp2201, label %for.inc2334, label %if.else2204, !dbg !1334

if.else2204:                                      ; preds = %lor.lhs.false2199
  store i32 0, i32* %h_state, align 4, !dbg !1335
  br label %for.inc2334

sw.bb2210:                                        ; preds = %if.end2053
  %1694 = load %struct.http_parser** %parser.addr, align 8, !dbg !1337
  %1695 = bitcast %struct.http_parser* %1694 to i32*, !dbg !1337
  %1696 = load i32* %1695, align 8, !dbg !1337
  %int_cast_to_i64117 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64117), !dbg !1337
  %1697 = lshr i32 %1696, 24, !dbg !1337
  %bf.clear2211 = and i32 %1697, 255, !dbg !1337
  %inc2212 = add i32 %bf.clear2211, 1, !dbg !1337
  %bf.value2213 = and i32 %inc2212, 255, !dbg !1337
  %1698 = bitcast %struct.http_parser* %1694 to i32*, !dbg !1337
  %1699 = and i32 %bf.value2213, 255, !dbg !1337
  %int_cast_to_i64118 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64118), !dbg !1337
  %1700 = shl i32 %1699, 24, !dbg !1337
  %1701 = load i32* %1698, align 8, !dbg !1337
  %1702 = and i32 %1701, 16777215, !dbg !1337
  %1703 = or i32 %1702, %1700, !dbg !1337
  store i32 %1703, i32* %1698, align 8, !dbg !1337
  %1704 = load %struct.http_parser** %parser.addr, align 8, !dbg !1338
  %1705 = bitcast %struct.http_parser* %1704 to i32*, !dbg !1338
  %1706 = load i32* %1705, align 8, !dbg !1338
  %int_cast_to_i64119 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64119), !dbg !1338
  %1707 = lshr i32 %1706, 24, !dbg !1338
  %bf.clear2214 = and i32 %1707, 255, !dbg !1338
  %conv2215 = zext i32 %bf.clear2214 to i64, !dbg !1338
  %cmp2216 = icmp ugt i64 %conv2215, 10, !dbg !1338
  br i1 %cmp2216, label %if.then2226, label %lor.lhs.false2218, !dbg !1338

lor.lhs.false2218:                                ; preds = %sw.bb2210
  %1708 = load i8* %c, align 1, !dbg !1338
  %conv2219 = sext i8 %1708 to i32, !dbg !1338
  %1709 = load %struct.http_parser** %parser.addr, align 8, !dbg !1338
  %1710 = bitcast %struct.http_parser* %1709 to i32*, !dbg !1338
  %1711 = load i32* %1710, align 8, !dbg !1338
  %int_cast_to_i64120 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64120), !dbg !1338
  %1712 = lshr i32 %1711, 24, !dbg !1338
  %bf.clear2220 = and i32 %1712, 255, !dbg !1338
  %idxprom2221 = zext i32 %bf.clear2220 to i64, !dbg !1338
  %arrayidx2222 = getelementptr inbounds [11 x i8]* @.str10, i32 0, i64 %idxprom2221, !dbg !1338
  %1713 = load i8* %arrayidx2222, align 1, !dbg !1338
  %conv2223 = sext i8 %1713 to i32, !dbg !1338
  %cmp2224 = icmp ne i32 %conv2219, %conv2223, !dbg !1338
  br i1 %cmp2224, label %if.then2226, label %if.else2227, !dbg !1338

if.then2226:                                      ; preds = %lor.lhs.false2218, %sw.bb2210
  store i32 18, i32* %h_state, align 4, !dbg !1339
  br label %for.inc2334, !dbg !1341

if.else2227:                                      ; preds = %lor.lhs.false2218
  %1714 = load %struct.http_parser** %parser.addr, align 8, !dbg !1342
  %1715 = bitcast %struct.http_parser* %1714 to i32*, !dbg !1342
  %1716 = load i32* %1715, align 8, !dbg !1342
  %int_cast_to_i64121 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64121), !dbg !1342
  %1717 = lshr i32 %1716, 24, !dbg !1342
  %bf.clear2228 = and i32 %1717, 255, !dbg !1342
  %conv2229 = zext i32 %bf.clear2228 to i64, !dbg !1342
  %cmp2230 = icmp eq i64 %conv2229, 9, !dbg !1342
  br i1 %cmp2230, label %if.then2232, label %for.inc2334, !dbg !1342

if.then2232:                                      ; preds = %if.else2227
  store i32 20, i32* %h_state, align 4, !dbg !1343
  br label %for.inc2334, !dbg !1345

sw.bb2235:                                        ; preds = %if.end2053
  %1718 = load %struct.http_parser** %parser.addr, align 8, !dbg !1346
  %1719 = bitcast %struct.http_parser* %1718 to i32*, !dbg !1346
  %1720 = load i32* %1719, align 8, !dbg !1346
  %int_cast_to_i64122 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64122), !dbg !1346
  %1721 = lshr i32 %1720, 24, !dbg !1346
  %bf.clear2236 = and i32 %1721, 255, !dbg !1346
  %inc2237 = add i32 %bf.clear2236, 1, !dbg !1346
  %bf.value2238 = and i32 %inc2237, 255, !dbg !1346
  %1722 = bitcast %struct.http_parser* %1718 to i32*, !dbg !1346
  %1723 = and i32 %bf.value2238, 255, !dbg !1346
  %int_cast_to_i64123 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64123), !dbg !1346
  %1724 = shl i32 %1723, 24, !dbg !1346
  %1725 = load i32* %1722, align 8, !dbg !1346
  %1726 = and i32 %1725, 16777215, !dbg !1346
  %1727 = or i32 %1726, %1724, !dbg !1346
  store i32 %1727, i32* %1722, align 8, !dbg !1346
  %1728 = load %struct.http_parser** %parser.addr, align 8, !dbg !1347
  %1729 = bitcast %struct.http_parser* %1728 to i32*, !dbg !1347
  %1730 = load i32* %1729, align 8, !dbg !1347
  %int_cast_to_i64124 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64124), !dbg !1347
  %1731 = lshr i32 %1730, 24, !dbg !1347
  %bf.clear2239 = and i32 %1731, 255, !dbg !1347
  %conv2240 = zext i32 %bf.clear2239 to i64, !dbg !1347
  %cmp2241 = icmp ugt i64 %conv2240, 5, !dbg !1347
  br i1 %cmp2241, label %if.then2251, label %lor.lhs.false2243, !dbg !1347

lor.lhs.false2243:                                ; preds = %sw.bb2235
  %1732 = load i8* %c, align 1, !dbg !1347
  %conv2244 = sext i8 %1732 to i32, !dbg !1347
  %1733 = load %struct.http_parser** %parser.addr, align 8, !dbg !1347
  %1734 = bitcast %struct.http_parser* %1733 to i32*, !dbg !1347
  %1735 = load i32* %1734, align 8, !dbg !1347
  %int_cast_to_i64125 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64125), !dbg !1347
  %1736 = lshr i32 %1735, 24, !dbg !1347
  %bf.clear2245 = and i32 %1736, 255, !dbg !1347
  %idxprom2246 = zext i32 %bf.clear2245 to i64, !dbg !1347
  %arrayidx2247 = getelementptr inbounds [6 x i8]* @.str11, i32 0, i64 %idxprom2246, !dbg !1347
  %1737 = load i8* %arrayidx2247, align 1, !dbg !1347
  %conv2248 = sext i8 %1737 to i32, !dbg !1347
  %cmp2249 = icmp ne i32 %conv2244, %conv2248, !dbg !1347
  br i1 %cmp2249, label %if.then2251, label %if.else2252, !dbg !1347

if.then2251:                                      ; preds = %lor.lhs.false2243, %sw.bb2235
  store i32 18, i32* %h_state, align 4, !dbg !1348
  br label %for.inc2334, !dbg !1350

if.else2252:                                      ; preds = %lor.lhs.false2243
  %1738 = load %struct.http_parser** %parser.addr, align 8, !dbg !1351
  %1739 = bitcast %struct.http_parser* %1738 to i32*, !dbg !1351
  %1740 = load i32* %1739, align 8, !dbg !1351
  %int_cast_to_i64126 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64126), !dbg !1351
  %1741 = lshr i32 %1740, 24, !dbg !1351
  %bf.clear2253 = and i32 %1741, 255, !dbg !1351
  %conv2254 = zext i32 %bf.clear2253 to i64, !dbg !1351
  %cmp2255 = icmp eq i64 %conv2254, 4, !dbg !1351
  br i1 %cmp2255, label %if.then2257, label %for.inc2334, !dbg !1351

if.then2257:                                      ; preds = %if.else2252
  store i32 21, i32* %h_state, align 4, !dbg !1352
  br label %for.inc2334, !dbg !1354

sw.bb2260:                                        ; preds = %if.end2053
  %1742 = load %struct.http_parser** %parser.addr, align 8, !dbg !1355
  %1743 = bitcast %struct.http_parser* %1742 to i32*, !dbg !1355
  %1744 = load i32* %1743, align 8, !dbg !1355
  %int_cast_to_i64127 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64127), !dbg !1355
  %1745 = lshr i32 %1744, 24, !dbg !1355
  %bf.clear2261 = and i32 %1745, 255, !dbg !1355
  %inc2262 = add i32 %bf.clear2261, 1, !dbg !1355
  %bf.value2263 = and i32 %inc2262, 255, !dbg !1355
  %1746 = bitcast %struct.http_parser* %1742 to i32*, !dbg !1355
  %1747 = and i32 %bf.value2263, 255, !dbg !1355
  %int_cast_to_i64128 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64128), !dbg !1355
  %1748 = shl i32 %1747, 24, !dbg !1355
  %1749 = load i32* %1746, align 8, !dbg !1355
  %1750 = and i32 %1749, 16777215, !dbg !1355
  %1751 = or i32 %1750, %1748, !dbg !1355
  store i32 %1751, i32* %1746, align 8, !dbg !1355
  %1752 = load %struct.http_parser** %parser.addr, align 8, !dbg !1356
  %1753 = bitcast %struct.http_parser* %1752 to i32*, !dbg !1356
  %1754 = load i32* %1753, align 8, !dbg !1356
  %int_cast_to_i64129 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64129), !dbg !1356
  %1755 = lshr i32 %1754, 24, !dbg !1356
  %bf.clear2264 = and i32 %1755, 255, !dbg !1356
  %conv2265 = zext i32 %bf.clear2264 to i64, !dbg !1356
  %cmp2266 = icmp ugt i64 %conv2265, 7, !dbg !1356
  br i1 %cmp2266, label %if.then2276, label %lor.lhs.false2268, !dbg !1356

lor.lhs.false2268:                                ; preds = %sw.bb2260
  %1756 = load i8* %c, align 1, !dbg !1356
  %conv2269 = sext i8 %1756 to i32, !dbg !1356
  %1757 = load %struct.http_parser** %parser.addr, align 8, !dbg !1356
  %1758 = bitcast %struct.http_parser* %1757 to i32*, !dbg !1356
  %1759 = load i32* %1758, align 8, !dbg !1356
  %int_cast_to_i64130 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64130), !dbg !1356
  %1760 = lshr i32 %1759, 24, !dbg !1356
  %bf.clear2270 = and i32 %1760, 255, !dbg !1356
  %idxprom2271 = zext i32 %bf.clear2270 to i64, !dbg !1356
  %arrayidx2272 = getelementptr inbounds [8 x i8]* @.str6, i32 0, i64 %idxprom2271, !dbg !1356
  %1761 = load i8* %arrayidx2272, align 1, !dbg !1356
  %conv2273 = sext i8 %1761 to i32, !dbg !1356
  %cmp2274 = icmp ne i32 %conv2269, %conv2273, !dbg !1356
  br i1 %cmp2274, label %if.then2276, label %if.else2277, !dbg !1356

if.then2276:                                      ; preds = %lor.lhs.false2268, %sw.bb2260
  store i32 18, i32* %h_state, align 4, !dbg !1357
  br label %for.inc2334, !dbg !1359

if.else2277:                                      ; preds = %lor.lhs.false2268
  %1762 = load %struct.http_parser** %parser.addr, align 8, !dbg !1360
  %1763 = bitcast %struct.http_parser* %1762 to i32*, !dbg !1360
  %1764 = load i32* %1763, align 8, !dbg !1360
  %int_cast_to_i64131 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64131), !dbg !1360
  %1765 = lshr i32 %1764, 24, !dbg !1360
  %bf.clear2278 = and i32 %1765, 255, !dbg !1360
  %conv2279 = zext i32 %bf.clear2278 to i64, !dbg !1360
  %cmp2280 = icmp eq i64 %conv2279, 6, !dbg !1360
  br i1 %cmp2280, label %if.then2282, label %for.inc2334, !dbg !1360

if.then2282:                                      ; preds = %if.else2277
  store i32 22, i32* %h_state, align 4, !dbg !1361
  br label %for.inc2334, !dbg !1363

sw.bb2285:                                        ; preds = %if.end2053
  %1766 = load i8* %ch, align 1, !dbg !1364
  %conv2286 = sext i8 %1766 to i32, !dbg !1364
  %cmp2287 = icmp eq i32 %conv2286, 44, !dbg !1364
  br i1 %cmp2287, label %if.then2289, label %for.inc2334, !dbg !1364

if.then2289:                                      ; preds = %sw.bb2285
  store i32 14, i32* %h_state, align 4, !dbg !1365
  %1767 = load %struct.http_parser** %parser.addr, align 8, !dbg !1367
  %1768 = bitcast %struct.http_parser* %1767 to i32*, !dbg !1367
  %1769 = load i32* %1768, align 8, !dbg !1367
  %1770 = and i32 %1769, 16777215, !dbg !1367
  store i32 %1770, i32* %1768, align 8, !dbg !1367
  br label %for.inc2334, !dbg !1368

sw.bb2291:                                        ; preds = %if.end2053
  %1771 = load i8* %ch, align 1, !dbg !1369
  %conv2292 = sext i8 %1771 to i32, !dbg !1369
  %cmp2293 = icmp ne i32 %conv2292, 32, !dbg !1369
  br i1 %cmp2293, label %if.then2295, label %for.inc2334, !dbg !1369

if.then2295:                                      ; preds = %sw.bb2291
  store i32 0, i32* %h_state, align 4, !dbg !1369
  br label %for.inc2334, !dbg !1369

sw.bb2297:                                        ; preds = %if.end2053, %if.end2053, %if.end2053
  %1772 = load i8* %ch, align 1, !dbg !1370
  %conv2298 = sext i8 %1772 to i32, !dbg !1370
  %cmp2299 = icmp eq i32 %conv2298, 44, !dbg !1370
  br i1 %cmp2299, label %if.then2301, label %if.else2325, !dbg !1370

if.then2301:                                      ; preds = %sw.bb2297
  %1773 = load i32* %h_state, align 4, !dbg !1371
  %cmp2302 = icmp eq i32 %1773, 20, !dbg !1371
  br i1 %cmp2302, label %if.then2304, label %if.else2308, !dbg !1371

if.then2304:                                      ; preds = %if.then2301
  %1774 = load %struct.http_parser** %parser.addr, align 8, !dbg !1373
  %1775 = bitcast %struct.http_parser* %1774 to i32*, !dbg !1373
  %1776 = load i32* %1775, align 8, !dbg !1373
  %int_cast_to_i64132 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64132), !dbg !1373
  %1777 = lshr i32 %1776, 2, !dbg !1373
  %bf.clear2305 = and i32 %1777, 127, !dbg !1373
  %or2306 = or i32 %bf.clear2305, 2, !dbg !1373
  %bf.value2307 = and i32 %or2306, 127, !dbg !1373
  %1778 = bitcast %struct.http_parser* %1774 to i32*, !dbg !1373
  %1779 = and i32 %bf.value2307, 127, !dbg !1373
  %int_cast_to_i64133 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64133), !dbg !1373
  %1780 = shl i32 %1779, 2, !dbg !1373
  %1781 = load i32* %1778, align 8, !dbg !1373
  %1782 = and i32 %1781, -509, !dbg !1373
  %1783 = or i32 %1782, %1780, !dbg !1373
  store i32 %1783, i32* %1778, align 8, !dbg !1373
  br label %if.end2324, !dbg !1375

if.else2308:                                      ; preds = %if.then2301
  %1784 = load i32* %h_state, align 4, !dbg !1376
  %cmp2309 = icmp eq i32 %1784, 21, !dbg !1376
  br i1 %cmp2309, label %if.then2311, label %if.else2315, !dbg !1376

if.then2311:                                      ; preds = %if.else2308
  %1785 = load %struct.http_parser** %parser.addr, align 8, !dbg !1377
  %1786 = bitcast %struct.http_parser* %1785 to i32*, !dbg !1377
  %1787 = load i32* %1786, align 8, !dbg !1377
  %int_cast_to_i64134 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64134), !dbg !1377
  %1788 = lshr i32 %1787, 2, !dbg !1377
  %bf.clear2312 = and i32 %1788, 127, !dbg !1377
  %or2313 = or i32 %bf.clear2312, 4, !dbg !1377
  %bf.value2314 = and i32 %or2313, 127, !dbg !1377
  %1789 = bitcast %struct.http_parser* %1785 to i32*, !dbg !1377
  %1790 = and i32 %bf.value2314, 127, !dbg !1377
  %int_cast_to_i64135 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64135), !dbg !1377
  %1791 = shl i32 %1790, 2, !dbg !1377
  %1792 = load i32* %1789, align 8, !dbg !1377
  %1793 = and i32 %1792, -509, !dbg !1377
  %1794 = or i32 %1793, %1791, !dbg !1377
  store i32 %1794, i32* %1789, align 8, !dbg !1377
  br label %if.end2324, !dbg !1379

if.else2315:                                      ; preds = %if.else2308
  %1795 = load i32* %h_state, align 4, !dbg !1380
  %cmp2316 = icmp eq i32 %1795, 22, !dbg !1380
  br i1 %cmp2316, label %if.then2318, label %if.end2324, !dbg !1380

if.then2318:                                      ; preds = %if.else2315
  %1796 = load %struct.http_parser** %parser.addr, align 8, !dbg !1381
  %1797 = bitcast %struct.http_parser* %1796 to i32*, !dbg !1381
  %1798 = load i32* %1797, align 8, !dbg !1381
  %int_cast_to_i64136 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64136), !dbg !1381
  %1799 = lshr i32 %1798, 2, !dbg !1381
  %bf.clear2319 = and i32 %1799, 127, !dbg !1381
  %or2320 = or i32 %bf.clear2319, 8, !dbg !1381
  %bf.value2321 = and i32 %or2320, 127, !dbg !1381
  %1800 = bitcast %struct.http_parser* %1796 to i32*, !dbg !1381
  %1801 = and i32 %bf.value2321, 127, !dbg !1381
  %int_cast_to_i64137 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64137), !dbg !1381
  %1802 = shl i32 %1801, 2, !dbg !1381
  %1803 = load i32* %1800, align 8, !dbg !1381
  %1804 = and i32 %1803, -509, !dbg !1381
  %1805 = or i32 %1804, %1802, !dbg !1381
  store i32 %1805, i32* %1800, align 8, !dbg !1381
  br label %if.end2324, !dbg !1383

if.end2324:                                       ; preds = %if.then2311, %if.then2318, %if.else2315, %if.then2304
  store i32 14, i32* %h_state, align 4, !dbg !1384
  %1806 = load %struct.http_parser** %parser.addr, align 8, !dbg !1385
  %1807 = bitcast %struct.http_parser* %1806 to i32*, !dbg !1385
  %1808 = load i32* %1807, align 8, !dbg !1385
  %1809 = and i32 %1808, 16777215, !dbg !1385
  store i32 %1809, i32* %1807, align 8, !dbg !1385
  br label %for.inc2334, !dbg !1386

if.else2325:                                      ; preds = %sw.bb2297
  %1810 = load i8* %ch, align 1, !dbg !1387
  %conv2326 = sext i8 %1810 to i32, !dbg !1387
  %cmp2327 = icmp ne i32 %conv2326, 32, !dbg !1387
  br i1 %cmp2327, label %if.then2329, label %for.inc2334, !dbg !1387

if.then2329:                                      ; preds = %if.else2325
  store i32 18, i32* %h_state, align 4, !dbg !1388
  br label %for.inc2334, !dbg !1390

sw.default2332:                                   ; preds = %if.end2053
  store i32 48, i32* %p_state, align 4, !dbg !1391
  store i32 0, i32* %h_state, align 4, !dbg !1392
  br label %for.inc2334, !dbg !1393

for.inc2334:                                      ; preds = %if.end2095, %if.end2148, %sw.default2332, %sw.bb2098, %if.else2167, %if.then2172, %if.then2166, %if.then2184, %if.then2194, %if.else2195, %lor.lhs.false2199, %if.else2204, %if.then2189, %if.the
  %1811 = load i8** %p, align 8, !dbg !1229
  %incdec.ptr2335 = getelementptr inbounds i8* %1811, i32 1, !dbg !1229
  store i8* %incdec.ptr2335, i8** %p, align 8, !dbg !1229
  br label %for.cond1893, !dbg !1229

for.end2336:                                      ; preds = %if.end1960, %cond.end1910, %for.cond1893
  %1812 = load i32* %h_state, align 4, !dbg !1394
  %1813 = load %struct.http_parser** %parser.addr, align 8, !dbg !1394
  %bf.value2337 = and i32 %1812, 255, !dbg !1394
  %1814 = bitcast %struct.http_parser* %1813 to i32*, !dbg !1394
  %1815 = and i32 %bf.value2337, 255, !dbg !1394
  %int_cast_to_i64138 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64138), !dbg !1394
  %1816 = shl i32 %1815, 16, !dbg !1394
  %1817 = load i32* %1814, align 8, !dbg !1394
  %1818 = and i32 %1817, -16711681, !dbg !1394
  %1819 = or i32 %1818, %1816, !dbg !1394
  store i32 %1819, i32* %1814, align 8, !dbg !1394
  %1820 = load i8** %p, align 8, !dbg !1395
  %1821 = load i8** %start1891, align 8, !dbg !1395
  %sub.ptr.lhs.cast2339 = ptrtoint i8* %1820 to i64, !dbg !1395
  %sub.ptr.rhs.cast2340 = ptrtoint i8* %1821 to i64, !dbg !1395
  %sub.ptr.sub2341 = sub i64 %sub.ptr.lhs.cast2339, %sub.ptr.rhs.cast2340, !dbg !1395
  %1822 = load %struct.http_parser** %parser.addr, align 8, !dbg !1395
  %nread2342 = getelementptr inbounds %struct.http_parser* %1822, i32 0, i32 4, !dbg !1395
  %1823 = load i32* %nread2342, align 4, !dbg !1395
  %conv2343 = zext i32 %1823 to i64, !dbg !1395
  %add2344 = add nsw i64 %conv2343, %sub.ptr.sub2341, !dbg !1395
  %conv2345 = trunc i64 %add2344 to i32, !dbg !1395
  store i32 %conv2345, i32* %nread2342, align 4, !dbg !1395
  %1824 = load %struct.http_parser** %parser.addr, align 8, !dbg !1395
  %nread2346 = getelementptr inbounds %struct.http_parser* %1824, i32 0, i32 4, !dbg !1395
  %1825 = load i32* %nread2346, align 4, !dbg !1395
  %cmp2347 = icmp ugt i32 %1825, 81920, !dbg !1395
  %lnot2349 = xor i1 %cmp2347, true, !dbg !1395
  %lnot2351 = xor i1 %lnot2349, true, !dbg !1395
  %lnot.ext2352 = zext i1 %lnot2351 to i32, !dbg !1395
  %conv2353 = sext i32 %lnot.ext2352 to i64, !dbg !1395
  %tobool2355 = icmp ne i64 %conv2353, 0, !dbg !1395
  br i1 %tobool2355, label %do.body2357, label %do.end2361, !dbg !1395

do.body2357:                                      ; preds = %for.end2336
  %1826 = load %struct.http_parser** %parser.addr, align 8, !dbg !1397
  %1827 = bitcast %struct.http_parser* %1826 to i8*, !dbg !1397
  %bf.field.offs2358 = getelementptr i8* %1827, i32 20, !dbg !1397
  %1828 = bitcast i8* %bf.field.offs2358 to i32*, !dbg !1397
  %1829 = load i32* %1828, align 4, !dbg !1397
  %1830 = and i32 %1829, -2130706433, !dbg !1397
  %1831 = or i32 %1830, 167772160, !dbg !1397
  store i32 %1831, i32* %1828, align 4, !dbg !1397
  br label %error, !dbg !1397

do.end2361:                                       ; preds = %for.end2336
  %1832 = load i8** %p, align 8, !dbg !1400
  %1833 = load i8** %data.addr, align 8, !dbg !1400
  %1834 = load i64* %len.addr, align 8, !dbg !1400
  %add.ptr2362 = getelementptr inbounds i8* %1833, i64 %1834, !dbg !1400
  %cmp2363 = icmp eq i8* %1832, %add.ptr2362, !dbg !1400
  br i1 %cmp2363, label %if.then2365, label %for.inc3405, !dbg !1400

if.then2365:                                      ; preds = %do.end2361
  %1835 = load i8** %p, align 8, !dbg !1401
  %incdec.ptr2366 = getelementptr inbounds i8* %1835, i32 -1, !dbg !1401
  store i8* %incdec.ptr2366, i8** %p, align 8, !dbg !1401
  br label %for.inc3405, !dbg !1401

do.body2369:                                      ; preds = %reexecute
  %1836 = load i8* %ch, align 1, !dbg !1402
  %conv2370 = sext i8 %1836 to i32, !dbg !1402
  %cmp2371 = icmp ne i32 %conv2370, 10, !dbg !1402
  br i1 %cmp2371, label %do.body2374, label %do.end2378, !dbg !1402

do.body2374:                                      ; preds = %do.body2369
  %1837 = load %struct.http_parser** %parser.addr, align 8, !dbg !1405
  %1838 = bitcast %struct.http_parser* %1837 to i8*, !dbg !1405
  %bf.field.offs2375 = getelementptr i8* %1838, i32 20, !dbg !1405
  %1839 = bitcast i8* %bf.field.offs2375 to i32*, !dbg !1405
  %1840 = load i32* %1839, align 4, !dbg !1405
  %1841 = and i32 %1840, -2130706433, !dbg !1405
  %1842 = or i32 %1841, 452984832, !dbg !1405
  store i32 %1842, i32* %1839, align 4, !dbg !1405
  br label %error, !dbg !1405

do.end2378:                                       ; preds = %do.body2369
  store i32 49, i32* %p_state, align 4, !dbg !1408
  br label %for.inc3405, !dbg !1409

sw.bb2379:                                        ; preds = %reexecute
  %1843 = load i8* %ch, align 1, !dbg !1410
  %conv2380 = sext i8 %1843 to i32, !dbg !1410
  %cmp2381 = icmp eq i32 %conv2380, 32, !dbg !1410
  br i1 %cmp2381, label %if.then2387, label %lor.lhs.false2383, !dbg !1410

lor.lhs.false2383:                                ; preds = %sw.bb2379
  %1844 = load i8* %ch, align 1, !dbg !1410
  %conv2384 = sext i8 %1844 to i32, !dbg !1410
  %cmp2385 = icmp eq i32 %conv2384, 9, !dbg !1410
  br i1 %cmp2385, label %if.then2387, label %if.end2388, !dbg !1410

if.then2387:                                      ; preds = %lor.lhs.false2383, %sw.bb2379
  store i32 47, i32* %p_state, align 4, !dbg !1412
  br label %reexecute, !dbg !1414

if.end2388:                                       ; preds = %lor.lhs.false2383
  %1845 = load %struct.http_parser** %parser.addr, align 8, !dbg !1415
  %1846 = bitcast %struct.http_parser* %1845 to i32*, !dbg !1415
  %1847 = load i32* %1846, align 8, !dbg !1415
  %int_cast_to_i64139 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64139), !dbg !1415
  %1848 = lshr i32 %1847, 16, !dbg !1415
  %bf.clear2389 = and i32 %1848, 255, !dbg !1415
  switch i32 %bf.clear2389, label %sw.epilog2407 [
    i32 20, label %sw.bb2390
    i32 21, label %sw.bb2394
    i32 19, label %sw.bb2398
    i32 22, label %sw.bb2402
  ], !dbg !1415

sw.bb2390:                                        ; preds = %if.end2388
  %1849 = load %struct.http_parser** %parser.addr, align 8, !dbg !1416
  %1850 = bitcast %struct.http_parser* %1849 to i32*, !dbg !1416
  %1851 = load i32* %1850, align 8, !dbg !1416
  %int_cast_to_i64140 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64140), !dbg !1416
  %1852 = lshr i32 %1851, 2, !dbg !1416
  %bf.clear2391 = and i32 %1852, 127, !dbg !1416
  %or2392 = or i32 %bf.clear2391, 2, !dbg !1416
  %bf.value2393 = and i32 %or2392, 127, !dbg !1416
  %1853 = bitcast %struct.http_parser* %1849 to i32*, !dbg !1416
  %1854 = and i32 %bf.value2393, 127, !dbg !1416
  %int_cast_to_i64141 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64141), !dbg !1416
  %1855 = shl i32 %1854, 2, !dbg !1416
  %1856 = load i32* %1853, align 8, !dbg !1416
  %1857 = and i32 %1856, -509, !dbg !1416
  %1858 = or i32 %1857, %1855, !dbg !1416
  store i32 %1858, i32* %1853, align 8, !dbg !1416
  br label %sw.epilog2407, !dbg !1418

sw.bb2394:                                        ; preds = %if.end2388
  %1859 = load %struct.http_parser** %parser.addr, align 8, !dbg !1419
  %1860 = bitcast %struct.http_parser* %1859 to i32*, !dbg !1419
  %1861 = load i32* %1860, align 8, !dbg !1419
  %int_cast_to_i64142 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64142), !dbg !1419
  %1862 = lshr i32 %1861, 2, !dbg !1419
  %bf.clear2395 = and i32 %1862, 127, !dbg !1419
  %or2396 = or i32 %bf.clear2395, 4, !dbg !1419
  %bf.value2397 = and i32 %or2396, 127, !dbg !1419
  %1863 = bitcast %struct.http_parser* %1859 to i32*, !dbg !1419
  %1864 = and i32 %bf.value2397, 127, !dbg !1419
  %int_cast_to_i64143 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64143), !dbg !1419
  %1865 = shl i32 %1864, 2, !dbg !1419
  %1866 = load i32* %1863, align 8, !dbg !1419
  %1867 = and i32 %1866, -509, !dbg !1419
  %1868 = or i32 %1867, %1865, !dbg !1419
  store i32 %1868, i32* %1863, align 8, !dbg !1419
  br label %sw.epilog2407, !dbg !1420

sw.bb2398:                                        ; preds = %if.end2388
  %1869 = load %struct.http_parser** %parser.addr, align 8, !dbg !1421
  %1870 = bitcast %struct.http_parser* %1869 to i32*, !dbg !1421
  %1871 = load i32* %1870, align 8, !dbg !1421
  %int_cast_to_i64144 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64144), !dbg !1421
  %1872 = lshr i32 %1871, 2, !dbg !1421
  %bf.clear2399 = and i32 %1872, 127, !dbg !1421
  %or2400 = or i32 %bf.clear2399, 1, !dbg !1421
  %bf.value2401 = and i32 %or2400, 127, !dbg !1421
  %1873 = bitcast %struct.http_parser* %1869 to i32*, !dbg !1421
  %1874 = and i32 %bf.value2401, 127, !dbg !1421
  %int_cast_to_i64145 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64145), !dbg !1421
  %1875 = shl i32 %1874, 2, !dbg !1421
  %1876 = load i32* %1873, align 8, !dbg !1421
  %1877 = and i32 %1876, -509, !dbg !1421
  %1878 = or i32 %1877, %1875, !dbg !1421
  store i32 %1878, i32* %1873, align 8, !dbg !1421
  br label %sw.epilog2407, !dbg !1422

sw.bb2402:                                        ; preds = %if.end2388
  %1879 = load %struct.http_parser** %parser.addr, align 8, !dbg !1423
  %1880 = bitcast %struct.http_parser* %1879 to i32*, !dbg !1423
  %1881 = load i32* %1880, align 8, !dbg !1423
  %int_cast_to_i64146 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64146), !dbg !1423
  %1882 = lshr i32 %1881, 2, !dbg !1423
  %bf.clear2403 = and i32 %1882, 127, !dbg !1423
  %or2404 = or i32 %bf.clear2403, 8, !dbg !1423
  %bf.value2405 = and i32 %or2404, 127, !dbg !1423
  %1883 = bitcast %struct.http_parser* %1879 to i32*, !dbg !1423
  %1884 = and i32 %bf.value2405, 127, !dbg !1423
  %int_cast_to_i64147 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64147), !dbg !1423
  %1885 = shl i32 %1884, 2, !dbg !1423
  %1886 = load i32* %1883, align 8, !dbg !1423
  %1887 = and i32 %1886, -509, !dbg !1423
  %1888 = or i32 %1887, %1885, !dbg !1423
  store i32 %1888, i32* %1883, align 8, !dbg !1423
  br label %sw.epilog2407, !dbg !1424

sw.epilog2407:                                    ; preds = %if.end2388, %sw.bb2402, %sw.bb2398, %sw.bb2394, %sw.bb2390
  store i32 42, i32* %p_state, align 4, !dbg !1425
  br label %reexecute, !dbg !1426

do.body2409:                                      ; preds = %reexecute
  %1889 = load i8* %ch, align 1, !dbg !1427
  %conv2410 = sext i8 %1889 to i32, !dbg !1427
  %cmp2411 = icmp ne i32 %conv2410, 10, !dbg !1427
  br i1 %cmp2411, label %do.body2414, label %do.end2418, !dbg !1427

do.body2414:                                      ; preds = %do.body2409
  %1890 = load %struct.http_parser** %parser.addr, align 8, !dbg !1430
  %1891 = bitcast %struct.http_parser* %1890 to i8*, !dbg !1430
  %bf.field.offs2415 = getelementptr i8* %1891, i32 20, !dbg !1430
  %1892 = bitcast i8* %bf.field.offs2415 to i32*, !dbg !1430
  %1893 = load i32* %1892, align 4, !dbg !1430
  %1894 = and i32 %1893, -2130706433, !dbg !1430
  %1895 = or i32 %1894, 452984832, !dbg !1430
  store i32 %1895, i32* %1892, align 4, !dbg !1430
  br label %error, !dbg !1430

do.end2418:                                       ; preds = %do.body2409
  store i32 46, i32* %p_state, align 4, !dbg !1433
  br label %for.inc3405, !dbg !1434

sw.bb2419:                                        ; preds = %reexecute
  %1896 = load i8* %ch, align 1, !dbg !1435
  %conv2420 = sext i8 %1896 to i32, !dbg !1435
  %cmp2421 = icmp eq i32 %conv2420, 32, !dbg !1435
  br i1 %cmp2421, label %if.then2427, label %lor.lhs.false2423, !dbg !1435

lor.lhs.false2423:                                ; preds = %sw.bb2419
  %1897 = load i8* %ch, align 1, !dbg !1435
  %conv2424 = sext i8 %1897 to i32, !dbg !1435
  %cmp2425 = icmp eq i32 %conv2424, 9, !dbg !1435
  br i1 %cmp2425, label %if.then2427, label %if.else2428, !dbg !1435

if.then2427:                                      ; preds = %lor.lhs.false2423, %sw.bb2419
  store i32 44, i32* %p_state, align 4, !dbg !1437
  br label %for.inc3405, !dbg !1439

if.else2428:                                      ; preds = %lor.lhs.false2423
  %1898 = load %struct.http_parser** %parser.addr, align 8, !dbg !1440
  %1899 = bitcast %struct.http_parser* %1898 to i32*, !dbg !1440
  %1900 = load i32* %1899, align 8, !dbg !1440
  %int_cast_to_i64148 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64148), !dbg !1440
  %1901 = lshr i32 %1900, 16, !dbg !1440
  %bf.clear2429 = and i32 %1901, 255, !dbg !1440
  switch i32 %bf.clear2429, label %do.body2448 [
    i32 20, label %sw.bb2430
    i32 21, label %sw.bb2434
    i32 22, label %sw.bb2438
    i32 19, label %sw.bb2442
  ], !dbg !1440

sw.bb2430:                                        ; preds = %if.else2428
  %1902 = load %struct.http_parser** %parser.addr, align 8, !dbg !1442
  %1903 = bitcast %struct.http_parser* %1902 to i32*, !dbg !1442
  %1904 = load i32* %1903, align 8, !dbg !1442
  %int_cast_to_i64149 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64149), !dbg !1442
  %1905 = lshr i32 %1904, 2, !dbg !1442
  %bf.clear2431 = and i32 %1905, 127, !dbg !1442
  %or2432 = or i32 %bf.clear2431, 2, !dbg !1442
  %bf.value2433 = and i32 %or2432, 127, !dbg !1442
  %1906 = bitcast %struct.http_parser* %1902 to i32*, !dbg !1442
  %1907 = and i32 %bf.value2433, 127, !dbg !1442
  %int_cast_to_i64150 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64150), !dbg !1442
  %1908 = shl i32 %1907, 2, !dbg !1442
  %1909 = load i32* %1906, align 8, !dbg !1442
  %1910 = and i32 %1909, -509, !dbg !1442
  %1911 = or i32 %1910, %1908, !dbg !1442
  store i32 %1911, i32* %1906, align 8, !dbg !1442
  br label %do.body2448, !dbg !1444

sw.bb2434:                                        ; preds = %if.else2428
  %1912 = load %struct.http_parser** %parser.addr, align 8, !dbg !1445
  %1913 = bitcast %struct.http_parser* %1912 to i32*, !dbg !1445
  %1914 = load i32* %1913, align 8, !dbg !1445
  %int_cast_to_i64151 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64151), !dbg !1445
  %1915 = lshr i32 %1914, 2, !dbg !1445
  %bf.clear2435 = and i32 %1915, 127, !dbg !1445
  %or2436 = or i32 %bf.clear2435, 4, !dbg !1445
  %bf.value2437 = and i32 %or2436, 127, !dbg !1445
  %1916 = bitcast %struct.http_parser* %1912 to i32*, !dbg !1445
  %1917 = and i32 %bf.value2437, 127, !dbg !1445
  %int_cast_to_i64152 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64152), !dbg !1445
  %1918 = shl i32 %1917, 2, !dbg !1445
  %1919 = load i32* %1916, align 8, !dbg !1445
  %1920 = and i32 %1919, -509, !dbg !1445
  %1921 = or i32 %1920, %1918, !dbg !1445
  store i32 %1921, i32* %1916, align 8, !dbg !1445
  br label %do.body2448, !dbg !1446

sw.bb2438:                                        ; preds = %if.else2428
  %1922 = load %struct.http_parser** %parser.addr, align 8, !dbg !1447
  %1923 = bitcast %struct.http_parser* %1922 to i32*, !dbg !1447
  %1924 = load i32* %1923, align 8, !dbg !1447
  %int_cast_to_i64153 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64153), !dbg !1447
  %1925 = lshr i32 %1924, 2, !dbg !1447
  %bf.clear2439 = and i32 %1925, 127, !dbg !1447
  %or2440 = or i32 %bf.clear2439, 8, !dbg !1447
  %bf.value2441 = and i32 %or2440, 127, !dbg !1447
  %1926 = bitcast %struct.http_parser* %1922 to i32*, !dbg !1447
  %1927 = and i32 %bf.value2441, 127, !dbg !1447
  %int_cast_to_i64154 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64154), !dbg !1447
  %1928 = shl i32 %1927, 2, !dbg !1447
  %1929 = load i32* %1926, align 8, !dbg !1447
  %1930 = and i32 %1929, -509, !dbg !1447
  %1931 = or i32 %1930, %1928, !dbg !1447
  store i32 %1931, i32* %1926, align 8, !dbg !1447
  br label %do.body2448, !dbg !1448

sw.bb2442:                                        ; preds = %if.else2428
  %1932 = load %struct.http_parser** %parser.addr, align 8, !dbg !1449
  %1933 = bitcast %struct.http_parser* %1932 to i32*, !dbg !1449
  %1934 = load i32* %1933, align 8, !dbg !1449
  %int_cast_to_i64155 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64155), !dbg !1449
  %1935 = lshr i32 %1934, 2, !dbg !1449
  %bf.clear2443 = and i32 %1935, 127, !dbg !1449
  %or2444 = or i32 %bf.clear2443, 1, !dbg !1449
  %bf.value2445 = and i32 %or2444, 127, !dbg !1449
  %1936 = bitcast %struct.http_parser* %1932 to i32*, !dbg !1449
  %1937 = and i32 %bf.value2445, 127, !dbg !1449
  %int_cast_to_i64156 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64156), !dbg !1449
  %1938 = shl i32 %1937, 2, !dbg !1449
  %1939 = load i32* %1936, align 8, !dbg !1449
  %1940 = and i32 %1939, -509, !dbg !1449
  %1941 = or i32 %1940, %1938, !dbg !1449
  store i32 %1941, i32* %1936, align 8, !dbg !1449
  br label %do.body2448, !dbg !1450

do.body2448:                                      ; preds = %sw.bb2430, %sw.bb2434, %sw.bb2438, %sw.bb2442, %if.else2428
  %1942 = load i8** %header_value_mark, align 8, !dbg !1451
  %tobool2449 = icmp ne i8* %1942, null, !dbg !1451
  br i1 %tobool2449, label %do.end2452, label %if.then2450, !dbg !1451

if.then2450:                                      ; preds = %do.body2448
  %1943 = load i8** %p, align 8, !dbg !1453
  store i8* %1943, i8** %header_value_mark, align 8, !dbg !1453
  br label %do.end2452, !dbg !1453

do.end2452:                                       ; preds = %do.body2448, %if.then2450
  store i32 42, i32* %p_state, align 4, !dbg !1455
  %1944 = load %struct.http_parser** %parser.addr, align 8, !dbg !1456
  %1945 = bitcast %struct.http_parser* %1944 to i8*, !dbg !1456
  %bf.field.offs2454 = getelementptr i8* %1945, i32 20, !dbg !1456
  %1946 = bitcast i8* %bf.field.offs2454 to i32*, !dbg !1456
  %1947 = load i32* %1946, align 4, !dbg !1456
  %int_cast_to_i64157 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64157), !dbg !1456
  %1948 = lshr i32 %1947, 24, !dbg !1456
  %bf.clear2455 = and i32 %1948, 127, !dbg !1456
  %cmp2456 = icmp eq i32 %bf.clear2455, 0, !dbg !1456
  br i1 %cmp2456, label %cond.end2460, label %cond.false2459, !dbg !1456

cond.false2459:                                   ; preds = %do.end2452
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1777, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !1456

cond.end2460:                                     ; preds = %do.end2452
  %1949 = load i8** %header_value_mark, align 8, !dbg !1456
  %tobool2461 = icmp ne i8* %1949, null, !dbg !1456
  br i1 %tobool2461, label %if.then2462, label %reexecute, !dbg !1456

if.then2462:                                      ; preds = %cond.end2460
  %1950 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1458
  %on_header_value2463 = getelementptr inbounds %struct.http_parser_settings* %1950, i32 0, i32 4, !dbg !1458
  %1951 = load i32 (%struct.http_parser*, i8*, i64)** %on_header_value2463, align 8, !dbg !1458
  %tobool2464 = icmp ne i32 (%struct.http_parser*, i8*, i64)* %1951, null, !dbg !1458
  %lnot2465 = xor i1 %tobool2464, true, !dbg !1458
  %lnot2467 = xor i1 %lnot2465, true, !dbg !1458
  %lnot.ext2468 = zext i1 %lnot2467 to i32, !dbg !1458
  %conv2469 = sext i32 %lnot.ext2468 to i64, !dbg !1458
  %tobool2471 = icmp ne i64 %conv2469, 0, !dbg !1458
  br i1 %tobool2471, label %if.then2472, label %if.end2510, !dbg !1458

if.then2472:                                      ; preds = %if.then2462
  %1952 = load i32* %p_state, align 4, !dbg !1460
  %1953 = load %struct.http_parser** %parser.addr, align 8, !dbg !1460
  %bf.value2473 = and i32 %1952, 127, !dbg !1460
  %1954 = bitcast %struct.http_parser* %1953 to i32*, !dbg !1460
  %1955 = and i32 %bf.value2473, 127, !dbg !1460
  %int_cast_to_i64158 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64158), !dbg !1460
  %1956 = shl i32 %1955, 9, !dbg !1460
  %1957 = load i32* %1954, align 8, !dbg !1460
  %1958 = and i32 %1957, -65025, !dbg !1460
  %1959 = or i32 %1958, %1956, !dbg !1460
  store i32 %1959, i32* %1954, align 8, !dbg !1460
  %1960 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1460
  %on_header_value2474 = getelementptr inbounds %struct.http_parser_settings* %1960, i32 0, i32 4, !dbg !1460
  %1961 = load i32 (%struct.http_parser*, i8*, i64)** %on_header_value2474, align 8, !dbg !1460
  %1962 = load %struct.http_parser** %parser.addr, align 8, !dbg !1460
  %1963 = load i8** %header_value_mark, align 8, !dbg !1460
  %1964 = load i8** %p, align 8, !dbg !1460
  %1965 = load i8** %header_value_mark, align 8, !dbg !1460
  %sub.ptr.lhs.cast2475 = ptrtoint i8* %1964 to i64, !dbg !1460
  %sub.ptr.rhs.cast2476 = ptrtoint i8* %1965 to i64, !dbg !1460
  %sub.ptr.sub2477 = sub i64 %sub.ptr.lhs.cast2475, %sub.ptr.rhs.cast2476, !dbg !1460
  %call2478 = call i32 %1961(%struct.http_parser* %1962, i8* %1963, i64 %sub.ptr.sub2477), !dbg !1460
  %cmp2479 = icmp ne i32 0, %call2478, !dbg !1460
  %lnot2481 = xor i1 %cmp2479, true, !dbg !1460
  %lnot2483 = xor i1 %lnot2481, true, !dbg !1460
  %lnot.ext2484 = zext i1 %lnot2483 to i32, !dbg !1460
  %conv2485 = sext i32 %lnot.ext2484 to i64, !dbg !1460
  %tobool2487 = icmp ne i64 %conv2485, 0, !dbg !1460
  br i1 %tobool2487, label %do.body2489, label %if.end2492, !dbg !1460

do.body2489:                                      ; preds = %if.then2472
  %1966 = load %struct.http_parser** %parser.addr, align 8, !dbg !1462
  %1967 = bitcast %struct.http_parser* %1966 to i8*, !dbg !1462
  %bf.field.offs2490 = getelementptr i8* %1967, i32 20, !dbg !1462
  %1968 = bitcast i8* %bf.field.offs2490 to i32*, !dbg !1462
  %1969 = load i32* %1968, align 4, !dbg !1462
  %1970 = and i32 %1969, -2130706433, !dbg !1462
  %1971 = or i32 %1970, 67108864, !dbg !1462
  store i32 %1971, i32* %1968, align 4, !dbg !1462
  br label %if.end2492, !dbg !1462

if.end2492:                                       ; preds = %do.body2489, %if.then2472
  %1972 = load %struct.http_parser** %parser.addr, align 8, !dbg !1462
  %1973 = bitcast %struct.http_parser* %1972 to i32*, !dbg !1462
  %1974 = load i32* %1973, align 8, !dbg !1462
  %int_cast_to_i64159 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64159), !dbg !1462
  %1975 = lshr i32 %1974, 9, !dbg !1462
  %bf.clear2493 = and i32 %1975, 127, !dbg !1462
  store i32 %bf.clear2493, i32* %p_state, align 4, !dbg !1462
  %1976 = load %struct.http_parser** %parser.addr, align 8, !dbg !1462
  %1977 = bitcast %struct.http_parser* %1976 to i8*, !dbg !1462
  %bf.field.offs2494 = getelementptr i8* %1977, i32 20, !dbg !1462
  %1978 = bitcast i8* %bf.field.offs2494 to i32*, !dbg !1462
  %1979 = load i32* %1978, align 4, !dbg !1462
  %int_cast_to_i64160 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64160), !dbg !1462
  %1980 = lshr i32 %1979, 24, !dbg !1462
  %bf.clear2495 = and i32 %1980, 127, !dbg !1462
  %cmp2496 = icmp ne i32 %bf.clear2495, 0, !dbg !1462
  %lnot2498 = xor i1 %cmp2496, true, !dbg !1462
  %lnot2500 = xor i1 %lnot2498, true, !dbg !1462
  %lnot.ext2501 = zext i1 %lnot2500 to i32, !dbg !1462
  %conv2502 = sext i32 %lnot.ext2501 to i64, !dbg !1462
  %tobool2504 = icmp ne i64 %conv2502, 0, !dbg !1462
  br i1 %tobool2504, label %if.then2505, label %if.end2510, !dbg !1462

if.then2505:                                      ; preds = %if.end2492
  %1981 = load i8** %p, align 8, !dbg !1465
  %1982 = load i8** %data.addr, align 8, !dbg !1465
  %sub.ptr.lhs.cast2506 = ptrtoint i8* %1981 to i64, !dbg !1465
  %sub.ptr.rhs.cast2507 = ptrtoint i8* %1982 to i64, !dbg !1465
  %sub.ptr.sub2508 = sub i64 %sub.ptr.lhs.cast2506, %sub.ptr.rhs.cast2507, !dbg !1465
  store i64 %sub.ptr.sub2508, i64* %retval, !dbg !1465
  br label %do.end3744, !dbg !1465

if.end2510:                                       ; preds = %if.end2492, %if.then2462
  store i8* null, i8** %header_value_mark, align 8, !dbg !1465
  br label %reexecute, !dbg !1465

do.body2514:                                      ; preds = %reexecute
  %1983 = load i8* %ch, align 1, !dbg !1467
  %conv2515 = sext i8 %1983 to i32, !dbg !1467
  %cmp2516 = icmp ne i32 %conv2515, 10, !dbg !1467
  %1984 = load %struct.http_parser** %parser.addr, align 8, !dbg !1470
  br i1 %cmp2516, label %do.body2519, label %do.end2523, !dbg !1467

do.body2519:                                      ; preds = %do.body2514
  %1985 = bitcast %struct.http_parser* %1984 to i8*, !dbg !1470
  %bf.field.offs2520 = getelementptr i8* %1985, i32 20, !dbg !1470
  %1986 = bitcast i8* %bf.field.offs2520 to i32*, !dbg !1470
  %1987 = load i32* %1986, align 4, !dbg !1470
  %1988 = and i32 %1987, -2130706433, !dbg !1470
  %1989 = or i32 %1988, 452984832, !dbg !1470
  store i32 %1989, i32* %1986, align 4, !dbg !1470
  br label %error, !dbg !1470

do.end2523:                                       ; preds = %do.body2514
  %1990 = bitcast %struct.http_parser* %1984 to i32*, !dbg !1473
  %1991 = load i32* %1990, align 8, !dbg !1473
  %int_cast_to_i64161 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64161), !dbg !1473
  %1992 = lshr i32 %1991, 2, !dbg !1473
  %bf.clear2524 = and i32 %1992, 127, !dbg !1473
  %and = and i32 %bf.clear2524, 16, !dbg !1473
  %tobool2525 = icmp ne i32 %and, 0, !dbg !1473
  br i1 %tobool2525, label %if.then2526, label %if.end2592, !dbg !1473

if.then2526:                                      ; preds = %do.end2523
  %1993 = load %struct.http_parser** %parser.addr, align 8, !dbg !1474
  %call2527 = call i32 @http_should_keep_alive(%struct.http_parser* %1993), !dbg !1474
  %tobool2528 = icmp ne i32 %call2527, 0, !dbg !1474
  br i1 %tobool2528, label %cond.true2529, label %cond.end2535, !dbg !1474

cond.true2529:                                    ; preds = %if.then2526
  %1994 = load %struct.http_parser** %parser.addr, align 8, !dbg !1474
  %1995 = bitcast %struct.http_parser* %1994 to i32*, !dbg !1474
  %1996 = load i32* %1995, align 8, !dbg !1474
  %bf.clear2530 = and i32 %1996, 3, !dbg !1474
  %cmp2531 = icmp eq i32 %bf.clear2530, 0, !dbg !1474
  %cond2533 = select i1 %cmp2531, i32 18, i32 4, !dbg !1474
  br label %cond.end2535, !dbg !1474

cond.end2535:                                     ; preds = %if.then2526, %cond.true2529
  %cond2536 = phi i32 [ %cond2533, %cond.true2529 ], [ 1, %if.then2526 ], !dbg !1474
  store i32 %cond2536, i32* %p_state, align 4, !dbg !1474
  %1997 = load %struct.http_parser** %parser.addr, align 8, !dbg !1476
  %1998 = bitcast %struct.http_parser* %1997 to i8*, !dbg !1476
  %bf.field.offs2538 = getelementptr i8* %1998, i32 20, !dbg !1476
  %1999 = bitcast i8* %bf.field.offs2538 to i32*, !dbg !1476
  %2000 = load i32* %1999, align 4, !dbg !1476
  %int_cast_to_i64162 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64162), !dbg !1476
  %2001 = lshr i32 %2000, 24, !dbg !1476
  %bf.clear2539 = and i32 %2001, 127, !dbg !1476
  %cmp2540 = icmp eq i32 %bf.clear2539, 0, !dbg !1476
  br i1 %cmp2540, label %cond.end2544, label %cond.false2543, !dbg !1476

cond.false2543:                                   ; preds = %cond.end2535
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1789, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !1476

cond.end2544:                                     ; preds = %cond.end2535
  %2002 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1476
  %on_message_complete2545 = getelementptr inbounds %struct.http_parser_settings* %2002, i32 0, i32 7, !dbg !1476
  %2003 = load i32 (%struct.http_parser*)** %on_message_complete2545, align 8, !dbg !1476
  %tobool2546 = icmp ne i32 (%struct.http_parser*)* %2003, null, !dbg !1476
  %lnot2547 = xor i1 %tobool2546, true, !dbg !1476
  %lnot2549 = xor i1 %lnot2547, true, !dbg !1476
  %lnot.ext2550 = zext i1 %lnot2549 to i32, !dbg !1476
  %conv2551 = sext i32 %lnot.ext2550 to i64, !dbg !1476
  %tobool2553 = icmp ne i64 %conv2551, 0, !dbg !1476
  br i1 %tobool2553, label %if.then2554, label %for.inc3405, !dbg !1476

if.then2554:                                      ; preds = %cond.end2544
  %2004 = load i32* %p_state, align 4, !dbg !1478
  %2005 = load %struct.http_parser** %parser.addr, align 8, !dbg !1478
  %bf.value2555 = and i32 %2004, 127, !dbg !1478
  %2006 = bitcast %struct.http_parser* %2005 to i32*, !dbg !1478
  %2007 = and i32 %bf.value2555, 127, !dbg !1478
  %int_cast_to_i64163 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64163), !dbg !1478
  %2008 = shl i32 %2007, 9, !dbg !1478
  %2009 = load i32* %2006, align 8, !dbg !1478
  %2010 = and i32 %2009, -65025, !dbg !1478
  %2011 = or i32 %2010, %2008, !dbg !1478
  store i32 %2011, i32* %2006, align 8, !dbg !1478
  %2012 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1478
  %on_message_complete2556 = getelementptr inbounds %struct.http_parser_settings* %2012, i32 0, i32 7, !dbg !1478
  %2013 = load i32 (%struct.http_parser*)** %on_message_complete2556, align 8, !dbg !1478
  %2014 = load %struct.http_parser** %parser.addr, align 8, !dbg !1478
  %call2557 = call i32 %2013(%struct.http_parser* %2014), !dbg !1478
  %cmp2558 = icmp ne i32 0, %call2557, !dbg !1478
  %lnot2560 = xor i1 %cmp2558, true, !dbg !1478
  %lnot2562 = xor i1 %lnot2560, true, !dbg !1478
  %lnot.ext2563 = zext i1 %lnot2562 to i32, !dbg !1478
  %conv2564 = sext i32 %lnot.ext2563 to i64, !dbg !1478
  %tobool2566 = icmp ne i64 %conv2564, 0, !dbg !1478
  br i1 %tobool2566, label %do.body2568, label %if.end2571, !dbg !1478

do.body2568:                                      ; preds = %if.then2554
  %2015 = load %struct.http_parser** %parser.addr, align 8, !dbg !1480
  %2016 = bitcast %struct.http_parser* %2015 to i8*, !dbg !1480
  %bf.field.offs2569 = getelementptr i8* %2016, i32 20, !dbg !1480
  %2017 = bitcast i8* %bf.field.offs2569 to i32*, !dbg !1480
  %2018 = load i32* %2017, align 4, !dbg !1480
  %2019 = and i32 %2018, -2130706433, !dbg !1480
  %2020 = or i32 %2019, 117440512, !dbg !1480
  store i32 %2020, i32* %2017, align 4, !dbg !1480
  br label %if.end2571, !dbg !1480

if.end2571:                                       ; preds = %do.body2568, %if.then2554
  %2021 = load %struct.http_parser** %parser.addr, align 8, !dbg !1480
  %2022 = bitcast %struct.http_parser* %2021 to i32*, !dbg !1480
  %2023 = load i32* %2022, align 8, !dbg !1480
  %int_cast_to_i64164 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64164), !dbg !1480
  %2024 = lshr i32 %2023, 9, !dbg !1480
  %bf.clear2572 = and i32 %2024, 127, !dbg !1480
  store i32 %bf.clear2572, i32* %p_state, align 4, !dbg !1480
  %2025 = load %struct.http_parser** %parser.addr, align 8, !dbg !1480
  %2026 = bitcast %struct.http_parser* %2025 to i8*, !dbg !1480
  %bf.field.offs2573 = getelementptr i8* %2026, i32 20, !dbg !1480
  %2027 = bitcast i8* %bf.field.offs2573 to i32*, !dbg !1480
  %2028 = load i32* %2027, align 4, !dbg !1480
  %int_cast_to_i64165 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64165), !dbg !1480
  %2029 = lshr i32 %2028, 24, !dbg !1480
  %bf.clear2574 = and i32 %2029, 127, !dbg !1480
  %cmp2575 = icmp ne i32 %bf.clear2574, 0, !dbg !1480
  %lnot2577 = xor i1 %cmp2575, true, !dbg !1480
  %lnot2579 = xor i1 %lnot2577, true, !dbg !1480
  %lnot.ext2580 = zext i1 %lnot2579 to i32, !dbg !1480
  %conv2581 = sext i32 %lnot.ext2580 to i64, !dbg !1480
  %tobool2583 = icmp ne i64 %conv2581, 0, !dbg !1480
  br i1 %tobool2583, label %if.then2584, label %for.inc3405, !dbg !1480

if.then2584:                                      ; preds = %if.end2571
  %2030 = load i8** %p, align 8, !dbg !1483
  %2031 = load i8** %data.addr, align 8, !dbg !1483
  %sub.ptr.lhs.cast2585 = ptrtoint i8* %2030 to i64, !dbg !1483
  %sub.ptr.rhs.cast2586 = ptrtoint i8* %2031 to i64, !dbg !1483
  %sub.ptr.sub2587 = sub i64 %sub.ptr.lhs.cast2585, %sub.ptr.rhs.cast2586, !dbg !1483
  %add2588 = add nsw i64 %sub.ptr.sub2587, 1, !dbg !1483
  store i64 %add2588, i64* %retval, !dbg !1483
  br label %do.end3744, !dbg !1483

if.end2592:                                       ; preds = %do.end2523
  store i32 56, i32* %p_state, align 4, !dbg !1485
  %2032 = load %struct.http_parser** %parser.addr, align 8, !dbg !1486
  %2033 = bitcast %struct.http_parser* %2032 to i32*, !dbg !1486
  %2034 = load i32* %2033, align 8, !dbg !1486
  %int_cast_to_i64166 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64166), !dbg !1486
  %2035 = lshr i32 %2034, 2, !dbg !1486
  %bf.clear2593 = and i32 %2035, 127, !dbg !1486
  %and2594 = and i32 %bf.clear2593, 40, !dbg !1486
  %cmp2595 = icmp eq i32 %and2594, 40, !dbg !1486
  br i1 %cmp2595, label %lor.end2602, label %lor.rhs2597, !dbg !1486

lor.rhs2597:                                      ; preds = %if.end2592
  %2036 = load %struct.http_parser** %parser.addr, align 8, !dbg !1486
  %2037 = bitcast %struct.http_parser* %2036 to i8*, !dbg !1486
  %bf.field.offs2598 = getelementptr i8* %2037, i32 20, !dbg !1486
  %2038 = bitcast i8* %bf.field.offs2598 to i32*, !dbg !1486
  %2039 = load i32* %2038, align 4, !dbg !1486
  %int_cast_to_i64167 = zext i32 16 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64167), !dbg !1486
  %2040 = lshr i32 %2039, 16, !dbg !1486
  %bf.clear2599 = and i32 %2040, 255, !dbg !1486
  %cmp2600 = icmp eq i32 %bf.clear2599, 5, !dbg !1486
  br label %lor.end2602, !dbg !1486

lor.end2602:                                      ; preds = %lor.rhs2597, %if.end2592
  %2041 = phi i1 [ true, %if.end2592 ], [ %cmp2600, %lor.rhs2597 ]
  %lor.ext = zext i1 %2041 to i32, !dbg !1486
  %2042 = load %struct.http_parser** %parser.addr, align 8, !dbg !1486
  %bf.value2603 = and i32 %lor.ext, 1, !dbg !1486
  %2043 = bitcast %struct.http_parser* %2042 to i8*, !dbg !1486
  %bf.field.offs2604 = getelementptr i8* %2043, i32 20, !dbg !1486
  %2044 = bitcast i8* %bf.field.offs2604 to i32*, !dbg !1486
  %2045 = and i32 %bf.value2603, 1, !dbg !1486
  %int_cast_to_i64168 = zext i32 31 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64168), !dbg !1486
  %2046 = shl i32 %2045, 31, !dbg !1486
  %2047 = load i32* %2044, align 4, !dbg !1486
  %2048 = and i32 %2047, 2147483647, !dbg !1486
  %2049 = or i32 %2048, %2046, !dbg !1486
  store i32 %2049, i32* %2044, align 4, !dbg !1486
  %2050 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1487
  %on_headers_complete = getelementptr inbounds %struct.http_parser_settings* %2050, i32 0, i32 5, !dbg !1487
  %2051 = load i32 (%struct.http_parser*)** %on_headers_complete, align 8, !dbg !1487
  %tobool2605 = icmp ne i32 (%struct.http_parser*)* %2051, null, !dbg !1487
  br i1 %tobool2605, label %if.then2606, label %if.end2625, !dbg !1487

if.then2606:                                      ; preds = %lor.end2602
  %2052 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1488
  %on_headers_complete2607 = getelementptr inbounds %struct.http_parser_settings* %2052, i32 0, i32 5, !dbg !1488
  %2053 = load i32 (%struct.http_parser*)** %on_headers_complete2607, align 8, !dbg !1488
  %2054 = load %struct.http_parser** %parser.addr, align 8, !dbg !1488
  %call2608 = call i32 %2053(%struct.http_parser* %2054), !dbg !1488
  switch i32 %call2608, label %do.body2615 [
    i32 0, label %if.end2625
    i32 1, label %sw.bb2610
  ], !dbg !1488

sw.bb2610:                                        ; preds = %if.then2606
  %2055 = load %struct.http_parser** %parser.addr, align 8, !dbg !1490
  %2056 = bitcast %struct.http_parser* %2055 to i32*, !dbg !1490
  %2057 = load i32* %2056, align 8, !dbg !1490
  %int_cast_to_i64169 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64169), !dbg !1490
  %2058 = lshr i32 %2057, 2, !dbg !1490
  %bf.clear2611 = and i32 %2058, 127, !dbg !1490
  %or2612 = or i32 %bf.clear2611, 64, !dbg !1490
  %bf.value2613 = and i32 %or2612, 127, !dbg !1490
  %2059 = bitcast %struct.http_parser* %2055 to i32*, !dbg !1490
  %2060 = and i32 %bf.value2613, 127, !dbg !1490
  %int_cast_to_i64170 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64170), !dbg !1490
  %2061 = shl i32 %2060, 2, !dbg !1490
  %2062 = load i32* %2059, align 8, !dbg !1490
  %2063 = and i32 %2062, -509, !dbg !1490
  %2064 = or i32 %2063, %2061, !dbg !1490
  store i32 %2064, i32* %2059, align 8, !dbg !1490
  br label %if.end2625, !dbg !1492

do.body2615:                                      ; preds = %if.then2606
  %2065 = load %struct.http_parser** %parser.addr, align 8, !dbg !1493
  %2066 = bitcast %struct.http_parser* %2065 to i8*, !dbg !1493
  %bf.field.offs2616 = getelementptr i8* %2066, i32 20, !dbg !1493
  %2067 = bitcast i8* %bf.field.offs2616 to i32*, !dbg !1493
  %2068 = load i32* %2067, align 4, !dbg !1493
  %2069 = and i32 %2068, -2130706433, !dbg !1493
  %2070 = or i32 %2069, 83886080, !dbg !1493
  store i32 %2070, i32* %2067, align 4, !dbg !1493
  %2071 = load i32* %p_state, align 4, !dbg !1495
  %2072 = load %struct.http_parser** %parser.addr, align 8, !dbg !1495
  %bf.value2619 = and i32 %2071, 127, !dbg !1495
  %2073 = bitcast %struct.http_parser* %2072 to i32*, !dbg !1495
  %2074 = and i32 %bf.value2619, 127, !dbg !1495
  %int_cast_to_i64171 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64171), !dbg !1495
  %2075 = shl i32 %2074, 9, !dbg !1495
  %2076 = load i32* %2073, align 8, !dbg !1495
  %2077 = and i32 %2076, -65025, !dbg !1495
  %2078 = or i32 %2077, %2075, !dbg !1495
  store i32 %2078, i32* %2073, align 8, !dbg !1495
  %2079 = load i8** %p, align 8, !dbg !1495
  %2080 = load i8** %data.addr, align 8, !dbg !1495
  %sub.ptr.lhs.cast2620 = ptrtoint i8* %2079 to i64, !dbg !1495
  %sub.ptr.rhs.cast2621 = ptrtoint i8* %2080 to i64, !dbg !1495
  %sub.ptr.sub2622 = sub i64 %sub.ptr.lhs.cast2620, %sub.ptr.rhs.cast2621, !dbg !1495
  store i64 %sub.ptr.sub2622, i64* %retval, !dbg !1495
  br label %do.end3744, !dbg !1495

if.end2625:                                       ; preds = %sw.bb2610, %if.then2606, %lor.end2602
  %2081 = load %struct.http_parser** %parser.addr, align 8, !dbg !1497
  %2082 = bitcast %struct.http_parser* %2081 to i8*, !dbg !1497
  %bf.field.offs2626 = getelementptr i8* %2082, i32 20, !dbg !1497
  %2083 = bitcast i8* %bf.field.offs2626 to i32*, !dbg !1497
  %2084 = load i32* %2083, align 4, !dbg !1497
  %int_cast_to_i64172 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64172), !dbg !1497
  %2085 = lshr i32 %2084, 24, !dbg !1497
  %bf.clear2627 = and i32 %2085, 127, !dbg !1497
  %cmp2628 = icmp ne i32 %bf.clear2627, 0, !dbg !1497
  br i1 %cmp2628, label %do.body2631, label %reexecute, !dbg !1497

do.body2631:                                      ; preds = %if.end2625
  %2086 = load i32* %p_state, align 4, !dbg !1498
  %2087 = load %struct.http_parser** %parser.addr, align 8, !dbg !1498
  %bf.value2632 = and i32 %2086, 127, !dbg !1498
  %2088 = bitcast %struct.http_parser* %2087 to i32*, !dbg !1498
  %2089 = and i32 %bf.value2632, 127, !dbg !1498
  %int_cast_to_i64173 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64173), !dbg !1498
  %2090 = shl i32 %2089, 9, !dbg !1498
  %2091 = load i32* %2088, align 8, !dbg !1498
  %2092 = and i32 %2091, -65025, !dbg !1498
  %2093 = or i32 %2092, %2090, !dbg !1498
  store i32 %2093, i32* %2088, align 8, !dbg !1498
  %2094 = load i8** %p, align 8, !dbg !1498
  %2095 = load i8** %data.addr, align 8, !dbg !1498
  %sub.ptr.lhs.cast2633 = ptrtoint i8* %2094 to i64, !dbg !1498
  %sub.ptr.rhs.cast2634 = ptrtoint i8* %2095 to i64, !dbg !1498
  %sub.ptr.sub2635 = sub i64 %sub.ptr.lhs.cast2633, %sub.ptr.rhs.cast2634, !dbg !1498
  store i64 %sub.ptr.sub2635, i64* %retval, !dbg !1498
  br label %do.end3744, !dbg !1498

do.body2639:                                      ; preds = %reexecute
  %2096 = load i8* %ch, align 1, !dbg !1501
  %conv2640 = sext i8 %2096 to i32, !dbg !1501
  %cmp2641 = icmp ne i32 %conv2640, 10, !dbg !1501
  %2097 = load %struct.http_parser** %parser.addr, align 8, !dbg !1504
  br i1 %cmp2641, label %do.body2644, label %do.end2648, !dbg !1501

do.body2644:                                      ; preds = %do.body2639
  %2098 = bitcast %struct.http_parser* %2097 to i8*, !dbg !1504
  %bf.field.offs2645 = getelementptr i8* %2098, i32 20, !dbg !1504
  %2099 = bitcast i8* %bf.field.offs2645 to i32*, !dbg !1504
  %2100 = load i32* %2099, align 4, !dbg !1504
  %2101 = and i32 %2100, -2130706433, !dbg !1504
  %2102 = or i32 %2101, 452984832, !dbg !1504
  store i32 %2102, i32* %2099, align 4, !dbg !1504
  br label %error, !dbg !1504

do.end2648:                                       ; preds = %do.body2639
  %nread2649 = getelementptr inbounds %struct.http_parser* %2097, i32 0, i32 4, !dbg !1507
  store i32 0, i32* %nread2649, align 4, !dbg !1507
  %2103 = load %struct.http_parser** %parser.addr, align 8, !dbg !1508
  %2104 = bitcast %struct.http_parser* %2103 to i8*, !dbg !1508
  %bf.field.offs2650 = getelementptr i8* %2104, i32 20, !dbg !1508
  %2105 = bitcast i8* %bf.field.offs2650 to i32*, !dbg !1508
  %2106 = load i32* %2105, align 4, !dbg !1508
  %int_cast_to_i64174 = zext i32 31 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64174), !dbg !1508
  %2107 = lshr i32 %2106, 31, !dbg !1508
  %bf.clear2651 = and i32 %2107, 1, !dbg !1508
  %tobool2652 = icmp ne i32 %bf.clear2651, 0, !dbg !1508
  %2108 = load %struct.http_parser** %parser.addr, align 8, !dbg !1509
  br i1 %tobool2652, label %if.then2653, label %if.end2726, !dbg !1508

if.then2653:                                      ; preds = %do.end2648
  %call2654 = call i32 @http_should_keep_alive(%struct.http_parser* %2108), !dbg !1509
  %tobool2655 = icmp ne i32 %call2654, 0, !dbg !1509
  br i1 %tobool2655, label %cond.true2656, label %cond.end2662, !dbg !1509

cond.true2656:                                    ; preds = %if.then2653
  %2109 = load %struct.http_parser** %parser.addr, align 8, !dbg !1509
  %2110 = bitcast %struct.http_parser* %2109 to i32*, !dbg !1509
  %2111 = load i32* %2110, align 8, !dbg !1509
  %bf.clear2657 = and i32 %2111, 3, !dbg !1509
  %cmp2658 = icmp eq i32 %bf.clear2657, 0, !dbg !1509
  %cond2660 = select i1 %cmp2658, i32 18, i32 4, !dbg !1509
  br label %cond.end2662, !dbg !1509

cond.end2662:                                     ; preds = %if.then2653, %cond.true2656
  %cond2663 = phi i32 [ %cond2660, %cond.true2656 ], [ 1, %if.then2653 ], !dbg !1509
  store i32 %cond2663, i32* %p_state, align 4, !dbg !1509
  %2112 = load %struct.http_parser** %parser.addr, align 8, !dbg !1511
  %2113 = bitcast %struct.http_parser* %2112 to i8*, !dbg !1511
  %bf.field.offs2665 = getelementptr i8* %2113, i32 20, !dbg !1511
  %2114 = bitcast i8* %bf.field.offs2665 to i32*, !dbg !1511
  %2115 = load i32* %2114, align 4, !dbg !1511
  %int_cast_to_i64175 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64175), !dbg !1511
  %2116 = lshr i32 %2115, 24, !dbg !1511
  %bf.clear2666 = and i32 %2116, 127, !dbg !1511
  %cmp2667 = icmp eq i32 %bf.clear2666, 0, !dbg !1511
  br i1 %cmp2667, label %cond.end2671, label %cond.false2670, !dbg !1511

cond.false2670:                                   ; preds = %cond.end2662
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1841, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !1511

cond.end2671:                                     ; preds = %cond.end2662
  %2117 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1511
  %on_message_complete2672 = getelementptr inbounds %struct.http_parser_settings* %2117, i32 0, i32 7, !dbg !1511
  %2118 = load i32 (%struct.http_parser*)** %on_message_complete2672, align 8, !dbg !1511
  %tobool2673 = icmp ne i32 (%struct.http_parser*)* %2118, null, !dbg !1511
  %lnot2674 = xor i1 %tobool2673, true, !dbg !1511
  %lnot2676 = xor i1 %lnot2674, true, !dbg !1511
  %lnot.ext2677 = zext i1 %lnot2676 to i32, !dbg !1511
  %conv2678 = sext i32 %lnot.ext2677 to i64, !dbg !1511
  %tobool2680 = icmp ne i64 %conv2678, 0, !dbg !1511
  br i1 %tobool2680, label %if.then2681, label %do.body2719, !dbg !1511

if.then2681:                                      ; preds = %cond.end2671
  %2119 = load i32* %p_state, align 4, !dbg !1513
  %2120 = load %struct.http_parser** %parser.addr, align 8, !dbg !1513
  %bf.value2682 = and i32 %2119, 127, !dbg !1513
  %2121 = bitcast %struct.http_parser* %2120 to i32*, !dbg !1513
  %2122 = and i32 %bf.value2682, 127, !dbg !1513
  %int_cast_to_i64176 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64176), !dbg !1513
  %2123 = shl i32 %2122, 9, !dbg !1513
  %2124 = load i32* %2121, align 8, !dbg !1513
  %2125 = and i32 %2124, -65025, !dbg !1513
  %2126 = or i32 %2125, %2123, !dbg !1513
  store i32 %2126, i32* %2121, align 8, !dbg !1513
  %2127 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1513
  %on_message_complete2683 = getelementptr inbounds %struct.http_parser_settings* %2127, i32 0, i32 7, !dbg !1513
  %2128 = load i32 (%struct.http_parser*)** %on_message_complete2683, align 8, !dbg !1513
  %2129 = load %struct.http_parser** %parser.addr, align 8, !dbg !1513
  %call2684 = call i32 %2128(%struct.http_parser* %2129), !dbg !1513
  %cmp2685 = icmp ne i32 0, %call2684, !dbg !1513
  %lnot2687 = xor i1 %cmp2685, true, !dbg !1513
  %lnot2689 = xor i1 %lnot2687, true, !dbg !1513
  %lnot.ext2690 = zext i1 %lnot2689 to i32, !dbg !1513
  %conv2691 = sext i32 %lnot.ext2690 to i64, !dbg !1513
  %tobool2693 = icmp ne i64 %conv2691, 0, !dbg !1513
  br i1 %tobool2693, label %do.body2695, label %if.end2698, !dbg !1513

do.body2695:                                      ; preds = %if.then2681
  %2130 = load %struct.http_parser** %parser.addr, align 8, !dbg !1515
  %2131 = bitcast %struct.http_parser* %2130 to i8*, !dbg !1515
  %bf.field.offs2696 = getelementptr i8* %2131, i32 20, !dbg !1515
  %2132 = bitcast i8* %bf.field.offs2696 to i32*, !dbg !1515
  %2133 = load i32* %2132, align 4, !dbg !1515
  %2134 = and i32 %2133, -2130706433, !dbg !1515
  %2135 = or i32 %2134, 117440512, !dbg !1515
  store i32 %2135, i32* %2132, align 4, !dbg !1515
  br label %if.end2698, !dbg !1515

if.end2698:                                       ; preds = %do.body2695, %if.then2681
  %2136 = load %struct.http_parser** %parser.addr, align 8, !dbg !1515
  %2137 = bitcast %struct.http_parser* %2136 to i32*, !dbg !1515
  %2138 = load i32* %2137, align 8, !dbg !1515
  %int_cast_to_i64177 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64177), !dbg !1515
  %2139 = lshr i32 %2138, 9, !dbg !1515
  %bf.clear2699 = and i32 %2139, 127, !dbg !1515
  store i32 %bf.clear2699, i32* %p_state, align 4, !dbg !1515
  %2140 = load %struct.http_parser** %parser.addr, align 8, !dbg !1515
  %2141 = bitcast %struct.http_parser* %2140 to i8*, !dbg !1515
  %bf.field.offs2700 = getelementptr i8* %2141, i32 20, !dbg !1515
  %2142 = bitcast i8* %bf.field.offs2700 to i32*, !dbg !1515
  %2143 = load i32* %2142, align 4, !dbg !1515
  %int_cast_to_i64178 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64178), !dbg !1515
  %2144 = lshr i32 %2143, 24, !dbg !1515
  %bf.clear2701 = and i32 %2144, 127, !dbg !1515
  %cmp2702 = icmp ne i32 %bf.clear2701, 0, !dbg !1515
  %lnot2704 = xor i1 %cmp2702, true, !dbg !1515
  %lnot2706 = xor i1 %lnot2704, true, !dbg !1515
  %lnot.ext2707 = zext i1 %lnot2706 to i32, !dbg !1515
  %conv2708 = sext i32 %lnot.ext2707 to i64, !dbg !1515
  %tobool2710 = icmp ne i64 %conv2708, 0, !dbg !1515
  br i1 %tobool2710, label %if.then2711, label %do.body2719, !dbg !1515

if.then2711:                                      ; preds = %if.end2698
  %2145 = load i8** %p, align 8, !dbg !1518
  %2146 = load i8** %data.addr, align 8, !dbg !1518
  %sub.ptr.lhs.cast2712 = ptrtoint i8* %2145 to i64, !dbg !1518
  %sub.ptr.rhs.cast2713 = ptrtoint i8* %2146 to i64, !dbg !1518
  %sub.ptr.sub2714 = sub i64 %sub.ptr.lhs.cast2712, %sub.ptr.rhs.cast2713, !dbg !1518
  %add2715 = add nsw i64 %sub.ptr.sub2714, 1, !dbg !1518
  store i64 %add2715, i64* %retval, !dbg !1518
  br label %do.end3744, !dbg !1518

do.body2719:                                      ; preds = %if.end2698, %cond.end2671
  %2147 = load i32* %p_state, align 4, !dbg !1520
  %2148 = load %struct.http_parser** %parser.addr, align 8, !dbg !1520
  %bf.value2720 = and i32 %2147, 127, !dbg !1520
  %2149 = bitcast %struct.http_parser* %2148 to i32*, !dbg !1520
  %2150 = and i32 %bf.value2720, 127, !dbg !1520
  %int_cast_to_i64179 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64179), !dbg !1520
  %2151 = shl i32 %2150, 9, !dbg !1520
  %2152 = load i32* %2149, align 8, !dbg !1520
  %2153 = and i32 %2152, -65025, !dbg !1520
  %2154 = or i32 %2153, %2151, !dbg !1520
  store i32 %2154, i32* %2149, align 8, !dbg !1520
  %2155 = load i8** %p, align 8, !dbg !1520
  %2156 = load i8** %data.addr, align 8, !dbg !1520
  %sub.ptr.lhs.cast2721 = ptrtoint i8* %2155 to i64, !dbg !1520
  %sub.ptr.rhs.cast2722 = ptrtoint i8* %2156 to i64, !dbg !1520
  %sub.ptr.sub2723 = sub i64 %sub.ptr.lhs.cast2721, %sub.ptr.rhs.cast2722, !dbg !1520
  %add2724 = add nsw i64 %sub.ptr.sub2723, 1, !dbg !1520
  store i64 %add2724, i64* %retval, !dbg !1520
  br label %do.end3744, !dbg !1520

if.end2726:                                       ; preds = %do.end2648
  %2157 = bitcast %struct.http_parser* %2108 to i32*, !dbg !1522
  %2158 = load i32* %2157, align 8, !dbg !1522
  %int_cast_to_i64180 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64180), !dbg !1522
  %2159 = lshr i32 %2158, 2, !dbg !1522
  %bf.clear2727 = and i32 %2159, 127, !dbg !1522
  %and2728 = and i32 %bf.clear2727, 64, !dbg !1522
  %tobool2729 = icmp ne i32 %and2728, 0, !dbg !1522
  %2160 = load %struct.http_parser** %parser.addr, align 8, !dbg !1523
  br i1 %tobool2729, label %if.then2730, label %if.else2796, !dbg !1522

if.then2730:                                      ; preds = %if.end2726
  %call2731 = call i32 @http_should_keep_alive(%struct.http_parser* %2160), !dbg !1523
  %tobool2732 = icmp ne i32 %call2731, 0, !dbg !1523
  br i1 %tobool2732, label %cond.true2733, label %cond.end2739, !dbg !1523

cond.true2733:                                    ; preds = %if.then2730
  %2161 = load %struct.http_parser** %parser.addr, align 8, !dbg !1523
  %2162 = bitcast %struct.http_parser* %2161 to i32*, !dbg !1523
  %2163 = load i32* %2162, align 8, !dbg !1523
  %bf.clear2734 = and i32 %2163, 3, !dbg !1523
  %cmp2735 = icmp eq i32 %bf.clear2734, 0, !dbg !1523
  %cond2737 = select i1 %cmp2735, i32 18, i32 4, !dbg !1523
  br label %cond.end2739, !dbg !1523

cond.end2739:                                     ; preds = %if.then2730, %cond.true2733
  %cond2740 = phi i32 [ %cond2737, %cond.true2733 ], [ 1, %if.then2730 ], !dbg !1523
  store i32 %cond2740, i32* %p_state, align 4, !dbg !1523
  %2164 = load %struct.http_parser** %parser.addr, align 8, !dbg !1525
  %2165 = bitcast %struct.http_parser* %2164 to i8*, !dbg !1525
  %bf.field.offs2742 = getelementptr i8* %2165, i32 20, !dbg !1525
  %2166 = bitcast i8* %bf.field.offs2742 to i32*, !dbg !1525
  %2167 = load i32* %2166, align 4, !dbg !1525
  %int_cast_to_i64181 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64181), !dbg !1525
  %2168 = lshr i32 %2167, 24, !dbg !1525
  %bf.clear2743 = and i32 %2168, 127, !dbg !1525
  %cmp2744 = icmp eq i32 %bf.clear2743, 0, !dbg !1525
  br i1 %cmp2744, label %cond.end2748, label %cond.false2747, !dbg !1525

cond.false2747:                                   ; preds = %cond.end2739
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1847, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !1525

cond.end2748:                                     ; preds = %cond.end2739
  %2169 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1525
  %on_message_complete2749 = getelementptr inbounds %struct.http_parser_settings* %2169, i32 0, i32 7, !dbg !1525
  %2170 = load i32 (%struct.http_parser*)** %on_message_complete2749, align 8, !dbg !1525
  %tobool2750 = icmp ne i32 (%struct.http_parser*)* %2170, null, !dbg !1525
  %lnot2751 = xor i1 %tobool2750, true, !dbg !1525
  %lnot2753 = xor i1 %lnot2751, true, !dbg !1525
  %lnot.ext2754 = zext i1 %lnot2753 to i32, !dbg !1525
  %conv2755 = sext i32 %lnot.ext2754 to i64, !dbg !1525
  %tobool2757 = icmp ne i64 %conv2755, 0, !dbg !1525
  br i1 %tobool2757, label %if.then2758, label %for.inc3405, !dbg !1525

if.then2758:                                      ; preds = %cond.end2748
  %2171 = load i32* %p_state, align 4, !dbg !1527
  %2172 = load %struct.http_parser** %parser.addr, align 8, !dbg !1527
  %bf.value2759 = and i32 %2171, 127, !dbg !1527
  %2173 = bitcast %struct.http_parser* %2172 to i32*, !dbg !1527
  %2174 = and i32 %bf.value2759, 127, !dbg !1527
  %int_cast_to_i64182 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64182), !dbg !1527
  %2175 = shl i32 %2174, 9, !dbg !1527
  %2176 = load i32* %2173, align 8, !dbg !1527
  %2177 = and i32 %2176, -65025, !dbg !1527
  %2178 = or i32 %2177, %2175, !dbg !1527
  store i32 %2178, i32* %2173, align 8, !dbg !1527
  %2179 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1527
  %on_message_complete2760 = getelementptr inbounds %struct.http_parser_settings* %2179, i32 0, i32 7, !dbg !1527
  %2180 = load i32 (%struct.http_parser*)** %on_message_complete2760, align 8, !dbg !1527
  %2181 = load %struct.http_parser** %parser.addr, align 8, !dbg !1527
  %call2761 = call i32 %2180(%struct.http_parser* %2181), !dbg !1527
  %cmp2762 = icmp ne i32 0, %call2761, !dbg !1527
  %lnot2764 = xor i1 %cmp2762, true, !dbg !1527
  %lnot2766 = xor i1 %lnot2764, true, !dbg !1527
  %lnot.ext2767 = zext i1 %lnot2766 to i32, !dbg !1527
  %conv2768 = sext i32 %lnot.ext2767 to i64, !dbg !1527
  %tobool2770 = icmp ne i64 %conv2768, 0, !dbg !1527
  br i1 %tobool2770, label %do.body2772, label %if.end2775, !dbg !1527

do.body2772:                                      ; preds = %if.then2758
  %2182 = load %struct.http_parser** %parser.addr, align 8, !dbg !1529
  %2183 = bitcast %struct.http_parser* %2182 to i8*, !dbg !1529
  %bf.field.offs2773 = getelementptr i8* %2183, i32 20, !dbg !1529
  %2184 = bitcast i8* %bf.field.offs2773 to i32*, !dbg !1529
  %2185 = load i32* %2184, align 4, !dbg !1529
  %2186 = and i32 %2185, -2130706433, !dbg !1529
  %2187 = or i32 %2186, 117440512, !dbg !1529
  store i32 %2187, i32* %2184, align 4, !dbg !1529
  br label %if.end2775, !dbg !1529

if.end2775:                                       ; preds = %do.body2772, %if.then2758
  %2188 = load %struct.http_parser** %parser.addr, align 8, !dbg !1529
  %2189 = bitcast %struct.http_parser* %2188 to i32*, !dbg !1529
  %2190 = load i32* %2189, align 8, !dbg !1529
  %int_cast_to_i64183 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64183), !dbg !1529
  %2191 = lshr i32 %2190, 9, !dbg !1529
  %bf.clear2776 = and i32 %2191, 127, !dbg !1529
  store i32 %bf.clear2776, i32* %p_state, align 4, !dbg !1529
  %2192 = load %struct.http_parser** %parser.addr, align 8, !dbg !1529
  %2193 = bitcast %struct.http_parser* %2192 to i8*, !dbg !1529
  %bf.field.offs2777 = getelementptr i8* %2193, i32 20, !dbg !1529
  %2194 = bitcast i8* %bf.field.offs2777 to i32*, !dbg !1529
  %2195 = load i32* %2194, align 4, !dbg !1529
  %int_cast_to_i64184 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64184), !dbg !1529
  %2196 = lshr i32 %2195, 24, !dbg !1529
  %bf.clear2778 = and i32 %2196, 127, !dbg !1529
  %cmp2779 = icmp ne i32 %bf.clear2778, 0, !dbg !1529
  %lnot2781 = xor i1 %cmp2779, true, !dbg !1529
  %lnot2783 = xor i1 %lnot2781, true, !dbg !1529
  %lnot.ext2784 = zext i1 %lnot2783 to i32, !dbg !1529
  %conv2785 = sext i32 %lnot.ext2784 to i64, !dbg !1529
  %tobool2787 = icmp ne i64 %conv2785, 0, !dbg !1529
  br i1 %tobool2787, label %if.then2788, label %for.inc3405, !dbg !1529

if.then2788:                                      ; preds = %if.end2775
  %2197 = load i8** %p, align 8, !dbg !1532
  %2198 = load i8** %data.addr, align 8, !dbg !1532
  %sub.ptr.lhs.cast2789 = ptrtoint i8* %2197 to i64, !dbg !1532
  %sub.ptr.rhs.cast2790 = ptrtoint i8* %2198 to i64, !dbg !1532
  %sub.ptr.sub2791 = sub i64 %sub.ptr.lhs.cast2789, %sub.ptr.rhs.cast2790, !dbg !1532
  %add2792 = add nsw i64 %sub.ptr.sub2791, 1, !dbg !1532
  store i64 %add2792, i64* %retval, !dbg !1532
  br label %do.end3744, !dbg !1532

if.else2796:                                      ; preds = %if.end2726
  %2199 = bitcast %struct.http_parser* %2160 to i32*, !dbg !1534
  %2200 = load i32* %2199, align 8, !dbg !1534
  %int_cast_to_i64185 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64185), !dbg !1534
  %2201 = lshr i32 %2200, 2, !dbg !1534
  %bf.clear2797 = and i32 %2201, 127, !dbg !1534
  %and2798 = and i32 %bf.clear2797, 1, !dbg !1534
  %tobool2799 = icmp ne i32 %and2798, 0, !dbg !1534
  br i1 %tobool2799, label %if.then2800, label %if.else2801, !dbg !1534

if.then2800:                                      ; preds = %if.else2796
  store i32 51, i32* %p_state, align 4, !dbg !1535
  br label %for.inc3405, !dbg !1537

if.else2801:                                      ; preds = %if.else2796
  %2202 = load %struct.http_parser** %parser.addr, align 8, !dbg !1538
  %content_length2802 = getelementptr inbounds %struct.http_parser* %2202, i32 0, i32 5, !dbg !1538
  %2203 = load i64* %content_length2802, align 8, !dbg !1538
  %cmp2803 = icmp eq i64 %2203, 0, !dbg !1538
  %2204 = load %struct.http_parser** %parser.addr, align 8, !dbg !1540
  br i1 %cmp2803, label %if.then2805, label %if.else2871, !dbg !1538

if.then2805:                                      ; preds = %if.else2801
  %call2806 = call i32 @http_should_keep_alive(%struct.http_parser* %2204), !dbg !1540
  %tobool2807 = icmp ne i32 %call2806, 0, !dbg !1540
  br i1 %tobool2807, label %cond.true2808, label %cond.end2814, !dbg !1540

cond.true2808:                                    ; preds = %if.then2805
  %2205 = load %struct.http_parser** %parser.addr, align 8, !dbg !1540
  %2206 = bitcast %struct.http_parser* %2205 to i32*, !dbg !1540
  %2207 = load i32* %2206, align 8, !dbg !1540
  %bf.clear2809 = and i32 %2207, 3, !dbg !1540
  %cmp2810 = icmp eq i32 %bf.clear2809, 0, !dbg !1540
  %cond2812 = select i1 %cmp2810, i32 18, i32 4, !dbg !1540
  br label %cond.end2814, !dbg !1540

cond.end2814:                                     ; preds = %if.then2805, %cond.true2808
  %cond2815 = phi i32 [ %cond2812, %cond.true2808 ], [ 1, %if.then2805 ], !dbg !1540
  store i32 %cond2815, i32* %p_state, align 4, !dbg !1540
  %2208 = load %struct.http_parser** %parser.addr, align 8, !dbg !1542
  %2209 = bitcast %struct.http_parser* %2208 to i8*, !dbg !1542
  %bf.field.offs2817 = getelementptr i8* %2209, i32 20, !dbg !1542
  %2210 = bitcast i8* %bf.field.offs2817 to i32*, !dbg !1542
  %2211 = load i32* %2210, align 4, !dbg !1542
  %int_cast_to_i64186 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64186), !dbg !1542
  %2212 = lshr i32 %2211, 24, !dbg !1542
  %bf.clear2818 = and i32 %2212, 127, !dbg !1542
  %cmp2819 = icmp eq i32 %bf.clear2818, 0, !dbg !1542
  br i1 %cmp2819, label %cond.end2823, label %cond.false2822, !dbg !1542

cond.false2822:                                   ; preds = %cond.end2814
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1855, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !1542

cond.end2823:                                     ; preds = %cond.end2814
  %2213 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1542
  %on_message_complete2824 = getelementptr inbounds %struct.http_parser_settings* %2213, i32 0, i32 7, !dbg !1542
  %2214 = load i32 (%struct.http_parser*)** %on_message_complete2824, align 8, !dbg !1542
  %tobool2825 = icmp ne i32 (%struct.http_parser*)* %2214, null, !dbg !1542
  %lnot2826 = xor i1 %tobool2825, true, !dbg !1542
  %lnot2828 = xor i1 %lnot2826, true, !dbg !1542
  %lnot.ext2829 = zext i1 %lnot2828 to i32, !dbg !1542
  %conv2830 = sext i32 %lnot.ext2829 to i64, !dbg !1542
  %tobool2832 = icmp ne i64 %conv2830, 0, !dbg !1542
  br i1 %tobool2832, label %if.then2833, label %for.inc3405, !dbg !1542

if.then2833:                                      ; preds = %cond.end2823
  %2215 = load i32* %p_state, align 4, !dbg !1544
  %2216 = load %struct.http_parser** %parser.addr, align 8, !dbg !1544
  %bf.value2834 = and i32 %2215, 127, !dbg !1544
  %2217 = bitcast %struct.http_parser* %2216 to i32*, !dbg !1544
  %2218 = and i32 %bf.value2834, 127, !dbg !1544
  %int_cast_to_i64187 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64187), !dbg !1544
  %2219 = shl i32 %2218, 9, !dbg !1544
  %2220 = load i32* %2217, align 8, !dbg !1544
  %2221 = and i32 %2220, -65025, !dbg !1544
  %2222 = or i32 %2221, %2219, !dbg !1544
  store i32 %2222, i32* %2217, align 8, !dbg !1544
  %2223 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1544
  %on_message_complete2835 = getelementptr inbounds %struct.http_parser_settings* %2223, i32 0, i32 7, !dbg !1544
  %2224 = load i32 (%struct.http_parser*)** %on_message_complete2835, align 8, !dbg !1544
  %2225 = load %struct.http_parser** %parser.addr, align 8, !dbg !1544
  %call2836 = call i32 %2224(%struct.http_parser* %2225), !dbg !1544
  %cmp2837 = icmp ne i32 0, %call2836, !dbg !1544
  %lnot2839 = xor i1 %cmp2837, true, !dbg !1544
  %lnot2841 = xor i1 %lnot2839, true, !dbg !1544
  %lnot.ext2842 = zext i1 %lnot2841 to i32, !dbg !1544
  %conv2843 = sext i32 %lnot.ext2842 to i64, !dbg !1544
  %tobool2845 = icmp ne i64 %conv2843, 0, !dbg !1544
  br i1 %tobool2845, label %do.body2847, label %if.end2850, !dbg !1544

do.body2847:                                      ; preds = %if.then2833
  %2226 = load %struct.http_parser** %parser.addr, align 8, !dbg !1546
  %2227 = bitcast %struct.http_parser* %2226 to i8*, !dbg !1546
  %bf.field.offs2848 = getelementptr i8* %2227, i32 20, !dbg !1546
  %2228 = bitcast i8* %bf.field.offs2848 to i32*, !dbg !1546
  %2229 = load i32* %2228, align 4, !dbg !1546
  %2230 = and i32 %2229, -2130706433, !dbg !1546
  %2231 = or i32 %2230, 117440512, !dbg !1546
  store i32 %2231, i32* %2228, align 4, !dbg !1546
  br label %if.end2850, !dbg !1546

if.end2850:                                       ; preds = %do.body2847, %if.then2833
  %2232 = load %struct.http_parser** %parser.addr, align 8, !dbg !1546
  %2233 = bitcast %struct.http_parser* %2232 to i32*, !dbg !1546
  %2234 = load i32* %2233, align 8, !dbg !1546
  %int_cast_to_i64188 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64188), !dbg !1546
  %2235 = lshr i32 %2234, 9, !dbg !1546
  %bf.clear2851 = and i32 %2235, 127, !dbg !1546
  store i32 %bf.clear2851, i32* %p_state, align 4, !dbg !1546
  %2236 = load %struct.http_parser** %parser.addr, align 8, !dbg !1546
  %2237 = bitcast %struct.http_parser* %2236 to i8*, !dbg !1546
  %bf.field.offs2852 = getelementptr i8* %2237, i32 20, !dbg !1546
  %2238 = bitcast i8* %bf.field.offs2852 to i32*, !dbg !1546
  %2239 = load i32* %2238, align 4, !dbg !1546
  %int_cast_to_i64189 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64189), !dbg !1546
  %2240 = lshr i32 %2239, 24, !dbg !1546
  %bf.clear2853 = and i32 %2240, 127, !dbg !1546
  %cmp2854 = icmp ne i32 %bf.clear2853, 0, !dbg !1546
  %lnot2856 = xor i1 %cmp2854, true, !dbg !1546
  %lnot2858 = xor i1 %lnot2856, true, !dbg !1546
  %lnot.ext2859 = zext i1 %lnot2858 to i32, !dbg !1546
  %conv2860 = sext i32 %lnot.ext2859 to i64, !dbg !1546
  %tobool2862 = icmp ne i64 %conv2860, 0, !dbg !1546
  br i1 %tobool2862, label %if.then2863, label %for.inc3405, !dbg !1546

if.then2863:                                      ; preds = %if.end2850
  %2241 = load i8** %p, align 8, !dbg !1549
  %2242 = load i8** %data.addr, align 8, !dbg !1549
  %sub.ptr.lhs.cast2864 = ptrtoint i8* %2241 to i64, !dbg !1549
  %sub.ptr.rhs.cast2865 = ptrtoint i8* %2242 to i64, !dbg !1549
  %sub.ptr.sub2866 = sub i64 %sub.ptr.lhs.cast2864, %sub.ptr.rhs.cast2865, !dbg !1549
  %add2867 = add nsw i64 %sub.ptr.sub2866, 1, !dbg !1549
  store i64 %add2867, i64* %retval, !dbg !1549
  br label %do.end3744, !dbg !1549

if.else2871:                                      ; preds = %if.else2801
  %content_length2872 = getelementptr inbounds %struct.http_parser* %2204, i32 0, i32 5, !dbg !1551
  %2243 = load i64* %content_length2872, align 8, !dbg !1551
  %cmp2873 = icmp ne i64 %2243, -1, !dbg !1551
  br i1 %cmp2873, label %if.then2875, label %if.else2876, !dbg !1551

if.then2875:                                      ; preds = %if.else2871
  store i32 60, i32* %p_state, align 4, !dbg !1552
  br label %for.inc3405, !dbg !1554

if.else2876:                                      ; preds = %if.else2871
  %2244 = load %struct.http_parser** %parser.addr, align 8, !dbg !1555
  %2245 = bitcast %struct.http_parser* %2244 to i32*, !dbg !1555
  %2246 = load i32* %2245, align 8, !dbg !1555
  %bf.clear2877 = and i32 %2246, 3, !dbg !1555
  %cmp2878 = icmp eq i32 %bf.clear2877, 0, !dbg !1555
  br i1 %cmp2878, label %if.then2883, label %lor.lhs.false2880, !dbg !1555

lor.lhs.false2880:                                ; preds = %if.else2876
  %2247 = load %struct.http_parser** %parser.addr, align 8, !dbg !1557
  %call2881 = call i32 @http_message_needs_eof(%struct.http_parser* %2247), !dbg !1557
  %tobool2882 = icmp ne i32 %call2881, 0, !dbg !1557
  br i1 %tobool2882, label %if.else2949, label %if.then2883, !dbg !1557

if.then2883:                                      ; preds = %lor.lhs.false2880, %if.else2876
  %2248 = load %struct.http_parser** %parser.addr, align 8, !dbg !1558
  %call2884 = call i32 @http_should_keep_alive(%struct.http_parser* %2248), !dbg !1558
  %tobool2885 = icmp ne i32 %call2884, 0, !dbg !1558
  br i1 %tobool2885, label %cond.true2886, label %cond.end2892, !dbg !1558

cond.true2886:                                    ; preds = %if.then2883
  %2249 = load %struct.http_parser** %parser.addr, align 8, !dbg !1558
  %2250 = bitcast %struct.http_parser* %2249 to i32*, !dbg !1558
  %2251 = load i32* %2250, align 8, !dbg !1558
  %bf.clear2887 = and i32 %2251, 3, !dbg !1558
  %cmp2888 = icmp eq i32 %bf.clear2887, 0, !dbg !1558
  %cond2890 = select i1 %cmp2888, i32 18, i32 4, !dbg !1558
  br label %cond.end2892, !dbg !1558

cond.end2892:                                     ; preds = %if.then2883, %cond.true2886
  %cond2893 = phi i32 [ %cond2890, %cond.true2886 ], [ 1, %if.then2883 ], !dbg !1558
  store i32 %cond2893, i32* %p_state, align 4, !dbg !1558
  %2252 = load %struct.http_parser** %parser.addr, align 8, !dbg !1560
  %2253 = bitcast %struct.http_parser* %2252 to i8*, !dbg !1560
  %bf.field.offs2895 = getelementptr i8* %2253, i32 20, !dbg !1560
  %2254 = bitcast i8* %bf.field.offs2895 to i32*, !dbg !1560
  %2255 = load i32* %2254, align 4, !dbg !1560
  %int_cast_to_i64190 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64190), !dbg !1560
  %2256 = lshr i32 %2255, 24, !dbg !1560
  %bf.clear2896 = and i32 %2256, 127, !dbg !1560
  %cmp2897 = icmp eq i32 %bf.clear2896, 0, !dbg !1560
  br i1 %cmp2897, label %cond.end2901, label %cond.false2900, !dbg !1560

cond.false2900:                                   ; preds = %cond.end2892
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1864, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !1560

cond.end2901:                                     ; preds = %cond.end2892
  %2257 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1560
  %on_message_complete2902 = getelementptr inbounds %struct.http_parser_settings* %2257, i32 0, i32 7, !dbg !1560
  %2258 = load i32 (%struct.http_parser*)** %on_message_complete2902, align 8, !dbg !1560
  %tobool2903 = icmp ne i32 (%struct.http_parser*)* %2258, null, !dbg !1560
  %lnot2904 = xor i1 %tobool2903, true, !dbg !1560
  %lnot2906 = xor i1 %lnot2904, true, !dbg !1560
  %lnot.ext2907 = zext i1 %lnot2906 to i32, !dbg !1560
  %conv2908 = sext i32 %lnot.ext2907 to i64, !dbg !1560
  %tobool2910 = icmp ne i64 %conv2908, 0, !dbg !1560
  br i1 %tobool2910, label %if.then2911, label %for.inc3405, !dbg !1560

if.then2911:                                      ; preds = %cond.end2901
  %2259 = load i32* %p_state, align 4, !dbg !1562
  %2260 = load %struct.http_parser** %parser.addr, align 8, !dbg !1562
  %bf.value2912 = and i32 %2259, 127, !dbg !1562
  %2261 = bitcast %struct.http_parser* %2260 to i32*, !dbg !1562
  %2262 = and i32 %bf.value2912, 127, !dbg !1562
  %int_cast_to_i64191 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64191), !dbg !1562
  %2263 = shl i32 %2262, 9, !dbg !1562
  %2264 = load i32* %2261, align 8, !dbg !1562
  %2265 = and i32 %2264, -65025, !dbg !1562
  %2266 = or i32 %2265, %2263, !dbg !1562
  store i32 %2266, i32* %2261, align 8, !dbg !1562
  %2267 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1562
  %on_message_complete2913 = getelementptr inbounds %struct.http_parser_settings* %2267, i32 0, i32 7, !dbg !1562
  %2268 = load i32 (%struct.http_parser*)** %on_message_complete2913, align 8, !dbg !1562
  %2269 = load %struct.http_parser** %parser.addr, align 8, !dbg !1562
  %call2914 = call i32 %2268(%struct.http_parser* %2269), !dbg !1562
  %cmp2915 = icmp ne i32 0, %call2914, !dbg !1562
  %lnot2917 = xor i1 %cmp2915, true, !dbg !1562
  %lnot2919 = xor i1 %lnot2917, true, !dbg !1562
  %lnot.ext2920 = zext i1 %lnot2919 to i32, !dbg !1562
  %conv2921 = sext i32 %lnot.ext2920 to i64, !dbg !1562
  %tobool2923 = icmp ne i64 %conv2921, 0, !dbg !1562
  br i1 %tobool2923, label %do.body2925, label %if.end2928, !dbg !1562

do.body2925:                                      ; preds = %if.then2911
  %2270 = load %struct.http_parser** %parser.addr, align 8, !dbg !1564
  %2271 = bitcast %struct.http_parser* %2270 to i8*, !dbg !1564
  %bf.field.offs2926 = getelementptr i8* %2271, i32 20, !dbg !1564
  %2272 = bitcast i8* %bf.field.offs2926 to i32*, !dbg !1564
  %2273 = load i32* %2272, align 4, !dbg !1564
  %2274 = and i32 %2273, -2130706433, !dbg !1564
  %2275 = or i32 %2274, 117440512, !dbg !1564
  store i32 %2275, i32* %2272, align 4, !dbg !1564
  br label %if.end2928, !dbg !1564

if.end2928:                                       ; preds = %do.body2925, %if.then2911
  %2276 = load %struct.http_parser** %parser.addr, align 8, !dbg !1564
  %2277 = bitcast %struct.http_parser* %2276 to i32*, !dbg !1564
  %2278 = load i32* %2277, align 8, !dbg !1564
  %int_cast_to_i64192 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64192), !dbg !1564
  %2279 = lshr i32 %2278, 9, !dbg !1564
  %bf.clear2929 = and i32 %2279, 127, !dbg !1564
  store i32 %bf.clear2929, i32* %p_state, align 4, !dbg !1564
  %2280 = load %struct.http_parser** %parser.addr, align 8, !dbg !1564
  %2281 = bitcast %struct.http_parser* %2280 to i8*, !dbg !1564
  %bf.field.offs2930 = getelementptr i8* %2281, i32 20, !dbg !1564
  %2282 = bitcast i8* %bf.field.offs2930 to i32*, !dbg !1564
  %2283 = load i32* %2282, align 4, !dbg !1564
  %int_cast_to_i64193 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64193), !dbg !1564
  %2284 = lshr i32 %2283, 24, !dbg !1564
  %bf.clear2931 = and i32 %2284, 127, !dbg !1564
  %cmp2932 = icmp ne i32 %bf.clear2931, 0, !dbg !1564
  %lnot2934 = xor i1 %cmp2932, true, !dbg !1564
  %lnot2936 = xor i1 %lnot2934, true, !dbg !1564
  %lnot.ext2937 = zext i1 %lnot2936 to i32, !dbg !1564
  %conv2938 = sext i32 %lnot.ext2937 to i64, !dbg !1564
  %tobool2940 = icmp ne i64 %conv2938, 0, !dbg !1564
  br i1 %tobool2940, label %if.then2941, label %for.inc3405, !dbg !1564

if.then2941:                                      ; preds = %if.end2928
  %2285 = load i8** %p, align 8, !dbg !1567
  %2286 = load i8** %data.addr, align 8, !dbg !1567
  %sub.ptr.lhs.cast2942 = ptrtoint i8* %2285 to i64, !dbg !1567
  %sub.ptr.rhs.cast2943 = ptrtoint i8* %2286 to i64, !dbg !1567
  %sub.ptr.sub2944 = sub i64 %sub.ptr.lhs.cast2942, %sub.ptr.rhs.cast2943, !dbg !1567
  %add2945 = add nsw i64 %sub.ptr.sub2944, 1, !dbg !1567
  store i64 %add2945, i64* %retval, !dbg !1567
  br label %do.end3744, !dbg !1567

if.else2949:                                      ; preds = %lor.lhs.false2880
  store i32 61, i32* %p_state, align 4, !dbg !1569
  br label %for.inc3405

sw.bb2955:                                        ; preds = %reexecute
  %2287 = load %struct.http_parser** %parser.addr, align 8, !dbg !1571
  %content_length2956 = getelementptr inbounds %struct.http_parser* %2287, i32 0, i32 5, !dbg !1571
  %2288 = load i64* %content_length2956, align 8, !dbg !1571
  %2289 = load i8** %data.addr, align 8, !dbg !1571
  %2290 = load i64* %len.addr, align 8, !dbg !1571
  %add.ptr2957 = getelementptr inbounds i8* %2289, i64 %2290, !dbg !1571
  %2291 = load i8** %p, align 8, !dbg !1571
  %sub.ptr.lhs.cast2958 = ptrtoint i8* %add.ptr2957 to i64, !dbg !1571
  %sub.ptr.rhs.cast2959 = ptrtoint i8* %2291 to i64, !dbg !1571
  %sub.ptr.sub2960 = sub i64 %sub.ptr.lhs.cast2958, %sub.ptr.rhs.cast2959, !dbg !1571
  %cmp2961 = icmp ult i64 %2288, %sub.ptr.sub2960, !dbg !1571
  br i1 %cmp2961, label %cond.true2963, label %cond.false2965, !dbg !1571

cond.true2963:                                    ; preds = %sw.bb2955
  %2292 = load %struct.http_parser** %parser.addr, align 8, !dbg !1571
  %content_length2964 = getelementptr inbounds %struct.http_parser* %2292, i32 0, i32 5, !dbg !1571
  %2293 = load i64* %content_length2964, align 8, !dbg !1571
  br label %cond.end2970, !dbg !1571

cond.false2965:                                   ; preds = %sw.bb2955
  %2294 = load i8** %data.addr, align 8, !dbg !1571
  %2295 = load i64* %len.addr, align 8, !dbg !1571
  %add.ptr2966 = getelementptr inbounds i8* %2294, i64 %2295, !dbg !1571
  %2296 = load i8** %p, align 8, !dbg !1571
  %sub.ptr.lhs.cast2967 = ptrtoint i8* %add.ptr2966 to i64, !dbg !1571
  %sub.ptr.rhs.cast2968 = ptrtoint i8* %2296 to i64, !dbg !1571
  %sub.ptr.sub2969 = sub i64 %sub.ptr.lhs.cast2967, %sub.ptr.rhs.cast2968, !dbg !1571
  br label %cond.end2970, !dbg !1571

cond.end2970:                                     ; preds = %cond.false2965, %cond.true2963
  %cond2971 = phi i64 [ %2293, %cond.true2963 ], [ %sub.ptr.sub2969, %cond.false2965 ], !dbg !1571
  store i64 %cond2971, i64* %to_read, align 8, !dbg !1571
  %2297 = load %struct.http_parser** %parser.addr, align 8, !dbg !1573
  %content_length2972 = getelementptr inbounds %struct.http_parser* %2297, i32 0, i32 5, !dbg !1573
  %2298 = load i64* %content_length2972, align 8, !dbg !1573
  %cmp2973 = icmp ne i64 %2298, 0, !dbg !1573
  br i1 %cmp2973, label %land.lhs.true2975, label %cond.false2980, !dbg !1573

land.lhs.true2975:                                ; preds = %cond.end2970
  %2299 = load %struct.http_parser** %parser.addr, align 8, !dbg !1573
  %content_length2976 = getelementptr inbounds %struct.http_parser* %2299, i32 0, i32 5, !dbg !1573
  %2300 = load i64* %content_length2976, align 8, !dbg !1573
  %cmp2977 = icmp ne i64 %2300, -1, !dbg !1573
  br i1 %cmp2977, label %do.body2982, label %cond.false2980, !dbg !1573

cond.false2980:                                   ; preds = %land.lhs.true2975, %cond.end2970
  call void @__assert_fail(i8* getelementptr inbounds ([91 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1881, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 
  unreachable, !dbg !1573

do.body2982:                                      ; preds = %land.lhs.true2975
  %2301 = load i8** %body_mark, align 8, !dbg !1574
  %tobool2983 = icmp ne i8* %2301, null, !dbg !1574
  br i1 %tobool2983, label %do.end2986, label %if.then2984, !dbg !1574

if.then2984:                                      ; preds = %do.body2982
  %2302 = load i8** %p, align 8, !dbg !1576
  store i8* %2302, i8** %body_mark, align 8, !dbg !1576
  br label %do.end2986, !dbg !1576

do.end2986:                                       ; preds = %do.body2982, %if.then2984
  %2303 = load i64* %to_read, align 8, !dbg !1578
  %2304 = load %struct.http_parser** %parser.addr, align 8, !dbg !1578
  %content_length2987 = getelementptr inbounds %struct.http_parser* %2304, i32 0, i32 5, !dbg !1578
  %2305 = load i64* %content_length2987, align 8, !dbg !1578
  %sub2988 = sub i64 %2305, %2303, !dbg !1578
  store i64 %sub2988, i64* %content_length2987, align 8, !dbg !1578
  %2306 = load i64* %to_read, align 8, !dbg !1579
  %sub2989 = sub i64 %2306, 1, !dbg !1579
  %2307 = load i8** %p, align 8, !dbg !1579
  %add.ptr2990 = getelementptr inbounds i8* %2307, i64 %sub2989, !dbg !1579
  store i8* %add.ptr2990, i8** %p, align 8, !dbg !1579
  %2308 = load %struct.http_parser** %parser.addr, align 8, !dbg !1580
  %content_length2991 = getelementptr inbounds %struct.http_parser* %2308, i32 0, i32 5, !dbg !1580
  %2309 = load i64* %content_length2991, align 8, !dbg !1580
  %cmp2992 = icmp eq i64 %2309, 0, !dbg !1580
  br i1 %cmp2992, label %if.then2994, label %for.inc3405, !dbg !1580

if.then2994:                                      ; preds = %do.end2986
  store i32 62, i32* %p_state, align 4, !dbg !1581
  %2310 = load %struct.http_parser** %parser.addr, align 8, !dbg !1583
  %2311 = bitcast %struct.http_parser* %2310 to i8*, !dbg !1583
  %bf.field.offs2996 = getelementptr i8* %2311, i32 20, !dbg !1583
  %2312 = bitcast i8* %bf.field.offs2996 to i32*, !dbg !1583
  %2313 = load i32* %2312, align 4, !dbg !1583
  %int_cast_to_i64194 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64194), !dbg !1583
  %2314 = lshr i32 %2313, 24, !dbg !1583
  %bf.clear2997 = and i32 %2314, 127, !dbg !1583
  %cmp2998 = icmp eq i32 %bf.clear2997, 0, !dbg !1583
  br i1 %cmp2998, label %cond.end3002, label %cond.false3001, !dbg !1583

cond.false3001:                                   ; preds = %if.then2994
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1904, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !1583

cond.end3002:                                     ; preds = %if.then2994
  %2315 = load i8** %body_mark, align 8, !dbg !1583
  %tobool3003 = icmp ne i8* %2315, null, !dbg !1583
  br i1 %tobool3003, label %if.then3004, label %reexecute, !dbg !1583

if.then3004:                                      ; preds = %cond.end3002
  %2316 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1585
  %on_body = getelementptr inbounds %struct.http_parser_settings* %2316, i32 0, i32 6, !dbg !1585
  %2317 = load i32 (%struct.http_parser*, i8*, i64)** %on_body, align 8, !dbg !1585
  %tobool3005 = icmp ne i32 (%struct.http_parser*, i8*, i64)* %2317, null, !dbg !1585
  %lnot3006 = xor i1 %tobool3005, true, !dbg !1585
  %lnot3008 = xor i1 %lnot3006, true, !dbg !1585
  %lnot.ext3009 = zext i1 %lnot3008 to i32, !dbg !1585
  %conv3010 = sext i32 %lnot.ext3009 to i64, !dbg !1585
  %tobool3012 = icmp ne i64 %conv3010, 0, !dbg !1585
  br i1 %tobool3012, label %if.then3013, label %if.end3052, !dbg !1585

if.then3013:                                      ; preds = %if.then3004
  %2318 = load i32* %p_state, align 4, !dbg !1587
  %2319 = load %struct.http_parser** %parser.addr, align 8, !dbg !1587
  %bf.value3014 = and i32 %2318, 127, !dbg !1587
  %2320 = bitcast %struct.http_parser* %2319 to i32*, !dbg !1587
  %2321 = and i32 %bf.value3014, 127, !dbg !1587
  %int_cast_to_i64195 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64195), !dbg !1587
  %2322 = shl i32 %2321, 9, !dbg !1587
  %2323 = load i32* %2320, align 8, !dbg !1587
  %2324 = and i32 %2323, -65025, !dbg !1587
  %2325 = or i32 %2324, %2322, !dbg !1587
  store i32 %2325, i32* %2320, align 8, !dbg !1587
  %2326 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1587
  %on_body3015 = getelementptr inbounds %struct.http_parser_settings* %2326, i32 0, i32 6, !dbg !1587
  %2327 = load i32 (%struct.http_parser*, i8*, i64)** %on_body3015, align 8, !dbg !1587
  %2328 = load %struct.http_parser** %parser.addr, align 8, !dbg !1587
  %2329 = load i8** %body_mark, align 8, !dbg !1587
  %2330 = load i8** %p, align 8, !dbg !1587
  %2331 = load i8** %body_mark, align 8, !dbg !1587
  %sub.ptr.lhs.cast3016 = ptrtoint i8* %2330 to i64, !dbg !1587
  %sub.ptr.rhs.cast3017 = ptrtoint i8* %2331 to i64, !dbg !1587
  %sub.ptr.sub3018 = sub i64 %sub.ptr.lhs.cast3016, %sub.ptr.rhs.cast3017, !dbg !1587
  %add3019 = add nsw i64 %sub.ptr.sub3018, 1, !dbg !1587
  %call3020 = call i32 %2327(%struct.http_parser* %2328, i8* %2329, i64 %add3019), !dbg !1587
  %cmp3021 = icmp ne i32 0, %call3020, !dbg !1587
  %lnot3023 = xor i1 %cmp3021, true, !dbg !1587
  %lnot3025 = xor i1 %lnot3023, true, !dbg !1587
  %lnot.ext3026 = zext i1 %lnot3025 to i32, !dbg !1587
  %conv3027 = sext i32 %lnot.ext3026 to i64, !dbg !1587
  %tobool3029 = icmp ne i64 %conv3027, 0, !dbg !1587
  br i1 %tobool3029, label %do.body3031, label %if.end3034, !dbg !1587

do.body3031:                                      ; preds = %if.then3013
  %2332 = load %struct.http_parser** %parser.addr, align 8, !dbg !1589
  %2333 = bitcast %struct.http_parser* %2332 to i8*, !dbg !1589
  %bf.field.offs3032 = getelementptr i8* %2333, i32 20, !dbg !1589
  %2334 = bitcast i8* %bf.field.offs3032 to i32*, !dbg !1589
  %2335 = load i32* %2334, align 4, !dbg !1589
  %2336 = and i32 %2335, -2130706433, !dbg !1589
  %2337 = or i32 %2336, 100663296, !dbg !1589
  store i32 %2337, i32* %2334, align 4, !dbg !1589
  br label %if.end3034, !dbg !1589

if.end3034:                                       ; preds = %do.body3031, %if.then3013
  %2338 = load %struct.http_parser** %parser.addr, align 8, !dbg !1589
  %2339 = bitcast %struct.http_parser* %2338 to i32*, !dbg !1589
  %2340 = load i32* %2339, align 8, !dbg !1589
  %int_cast_to_i64196 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64196), !dbg !1589
  %2341 = lshr i32 %2340, 9, !dbg !1589
  %bf.clear3035 = and i32 %2341, 127, !dbg !1589
  store i32 %bf.clear3035, i32* %p_state, align 4, !dbg !1589
  %2342 = load %struct.http_parser** %parser.addr, align 8, !dbg !1589
  %2343 = bitcast %struct.http_parser* %2342 to i8*, !dbg !1589
  %bf.field.offs3036 = getelementptr i8* %2343, i32 20, !dbg !1589
  %2344 = bitcast i8* %bf.field.offs3036 to i32*, !dbg !1589
  %2345 = load i32* %2344, align 4, !dbg !1589
  %int_cast_to_i64197 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64197), !dbg !1589
  %2346 = lshr i32 %2345, 24, !dbg !1589
  %bf.clear3037 = and i32 %2346, 127, !dbg !1589
  %cmp3038 = icmp ne i32 %bf.clear3037, 0, !dbg !1589
  %lnot3040 = xor i1 %cmp3038, true, !dbg !1589
  %lnot3042 = xor i1 %lnot3040, true, !dbg !1589
  %lnot.ext3043 = zext i1 %lnot3042 to i32, !dbg !1589
  %conv3044 = sext i32 %lnot.ext3043 to i64, !dbg !1589
  %tobool3046 = icmp ne i64 %conv3044, 0, !dbg !1589
  br i1 %tobool3046, label %if.then3047, label %if.end3052, !dbg !1589

if.then3047:                                      ; preds = %if.end3034
  %2347 = load i8** %p, align 8, !dbg !1592
  %2348 = load i8** %data.addr, align 8, !dbg !1592
  %sub.ptr.lhs.cast3048 = ptrtoint i8* %2347 to i64, !dbg !1592
  %sub.ptr.rhs.cast3049 = ptrtoint i8* %2348 to i64, !dbg !1592
  %sub.ptr.sub3050 = sub i64 %sub.ptr.lhs.cast3048, %sub.ptr.rhs.cast3049, !dbg !1592
  store i64 %sub.ptr.sub3050, i64* %retval, !dbg !1592
  br label %do.end3744, !dbg !1592

if.end3052:                                       ; preds = %if.end3034, %if.then3004
  store i8* null, i8** %body_mark, align 8, !dbg !1592
  br label %reexecute, !dbg !1592

do.body3057:                                      ; preds = %reexecute
  %2349 = load i8** %body_mark, align 8, !dbg !1594
  %tobool3058 = icmp ne i8* %2349, null, !dbg !1594
  br i1 %tobool3058, label %do.end3061, label %if.then3059, !dbg !1594

if.then3059:                                      ; preds = %do.body3057
  %2350 = load i8** %p, align 8, !dbg !1596
  store i8* %2350, i8** %body_mark, align 8, !dbg !1596
  br label %do.end3061, !dbg !1596

do.end3061:                                       ; preds = %do.body3057, %if.then3059
  %2351 = load i8** %data.addr, align 8, !dbg !1598
  %2352 = load i64* %len.addr, align 8, !dbg !1598
  %add.ptr3062 = getelementptr inbounds i8* %2351, i64 %2352, !dbg !1598
  %add.ptr3063 = getelementptr inbounds i8* %add.ptr3062, i64 -1, !dbg !1598
  store i8* %add.ptr3063, i8** %p, align 8, !dbg !1598
  br label %for.inc3405, !dbg !1599

sw.bb3064:                                        ; preds = %reexecute
  %2353 = load %struct.http_parser** %parser.addr, align 8, !dbg !1600
  %call3065 = call i32 @http_should_keep_alive(%struct.http_parser* %2353), !dbg !1600
  %tobool3066 = icmp ne i32 %call3065, 0, !dbg !1600
  br i1 %tobool3066, label %cond.true3067, label %cond.end3073, !dbg !1600

cond.true3067:                                    ; preds = %sw.bb3064
  %2354 = load %struct.http_parser** %parser.addr, align 8, !dbg !1600
  %2355 = bitcast %struct.http_parser* %2354 to i32*, !dbg !1600
  %2356 = load i32* %2355, align 8, !dbg !1600
  %bf.clear3068 = and i32 %2356, 3, !dbg !1600
  %cmp3069 = icmp eq i32 %bf.clear3068, 0, !dbg !1600
  %cond3071 = select i1 %cmp3069, i32 18, i32 4, !dbg !1600
  br label %cond.end3073, !dbg !1600

cond.end3073:                                     ; preds = %sw.bb3064, %cond.true3067
  %cond3074 = phi i32 [ %cond3071, %cond.true3067 ], [ 1, %sw.bb3064 ], !dbg !1600
  store i32 %cond3074, i32* %p_state, align 4, !dbg !1600
  %2357 = load %struct.http_parser** %parser.addr, align 8, !dbg !1601
  %2358 = bitcast %struct.http_parser* %2357 to i8*, !dbg !1601
  %bf.field.offs3076 = getelementptr i8* %2358, i32 20, !dbg !1601
  %2359 = bitcast i8* %bf.field.offs3076 to i32*, !dbg !1601
  %2360 = load i32* %2359, align 4, !dbg !1601
  %int_cast_to_i64198 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64198), !dbg !1601
  %2361 = lshr i32 %2360, 24, !dbg !1601
  %bf.clear3077 = and i32 %2361, 127, !dbg !1601
  %cmp3078 = icmp eq i32 %bf.clear3077, 0, !dbg !1601
  br i1 %cmp3078, label %cond.end3082, label %cond.false3081, !dbg !1601

cond.false3081:                                   ; preds = %cond.end3073
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1920, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !1601

cond.end3082:                                     ; preds = %cond.end3073
  %2362 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1601
  %on_message_complete3083 = getelementptr inbounds %struct.http_parser_settings* %2362, i32 0, i32 7, !dbg !1601
  %2363 = load i32 (%struct.http_parser*)** %on_message_complete3083, align 8, !dbg !1601
  %tobool3084 = icmp ne i32 (%struct.http_parser*)* %2363, null, !dbg !1601
  %lnot3085 = xor i1 %tobool3084, true, !dbg !1601
  %lnot3087 = xor i1 %lnot3085, true, !dbg !1601
  %lnot.ext3088 = zext i1 %lnot3087 to i32, !dbg !1601
  %conv3089 = sext i32 %lnot.ext3088 to i64, !dbg !1601
  %tobool3091 = icmp ne i64 %conv3089, 0, !dbg !1601
  br i1 %tobool3091, label %if.then3092, label %for.inc3405, !dbg !1601

if.then3092:                                      ; preds = %cond.end3082
  %2364 = load i32* %p_state, align 4, !dbg !1603
  %2365 = load %struct.http_parser** %parser.addr, align 8, !dbg !1603
  %bf.value3093 = and i32 %2364, 127, !dbg !1603
  %2366 = bitcast %struct.http_parser* %2365 to i32*, !dbg !1603
  %2367 = and i32 %bf.value3093, 127, !dbg !1603
  %int_cast_to_i64199 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64199), !dbg !1603
  %2368 = shl i32 %2367, 9, !dbg !1603
  %2369 = load i32* %2366, align 8, !dbg !1603
  %2370 = and i32 %2369, -65025, !dbg !1603
  %2371 = or i32 %2370, %2368, !dbg !1603
  store i32 %2371, i32* %2366, align 8, !dbg !1603
  %2372 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1603
  %on_message_complete3094 = getelementptr inbounds %struct.http_parser_settings* %2372, i32 0, i32 7, !dbg !1603
  %2373 = load i32 (%struct.http_parser*)** %on_message_complete3094, align 8, !dbg !1603
  %2374 = load %struct.http_parser** %parser.addr, align 8, !dbg !1603
  %call3095 = call i32 %2373(%struct.http_parser* %2374), !dbg !1603
  %cmp3096 = icmp ne i32 0, %call3095, !dbg !1603
  %lnot3098 = xor i1 %cmp3096, true, !dbg !1603
  %lnot3100 = xor i1 %lnot3098, true, !dbg !1603
  %lnot.ext3101 = zext i1 %lnot3100 to i32, !dbg !1603
  %conv3102 = sext i32 %lnot.ext3101 to i64, !dbg !1603
  %tobool3104 = icmp ne i64 %conv3102, 0, !dbg !1603
  br i1 %tobool3104, label %do.body3106, label %if.end3109, !dbg !1603

do.body3106:                                      ; preds = %if.then3092
  %2375 = load %struct.http_parser** %parser.addr, align 8, !dbg !1605
  %2376 = bitcast %struct.http_parser* %2375 to i8*, !dbg !1605
  %bf.field.offs3107 = getelementptr i8* %2376, i32 20, !dbg !1605
  %2377 = bitcast i8* %bf.field.offs3107 to i32*, !dbg !1605
  %2378 = load i32* %2377, align 4, !dbg !1605
  %2379 = and i32 %2378, -2130706433, !dbg !1605
  %2380 = or i32 %2379, 117440512, !dbg !1605
  store i32 %2380, i32* %2377, align 4, !dbg !1605
  br label %if.end3109, !dbg !1605

if.end3109:                                       ; preds = %do.body3106, %if.then3092
  %2381 = load %struct.http_parser** %parser.addr, align 8, !dbg !1605
  %2382 = bitcast %struct.http_parser* %2381 to i32*, !dbg !1605
  %2383 = load i32* %2382, align 8, !dbg !1605
  %int_cast_to_i64200 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64200), !dbg !1605
  %2384 = lshr i32 %2383, 9, !dbg !1605
  %bf.clear3110 = and i32 %2384, 127, !dbg !1605
  store i32 %bf.clear3110, i32* %p_state, align 4, !dbg !1605
  %2385 = load %struct.http_parser** %parser.addr, align 8, !dbg !1605
  %2386 = bitcast %struct.http_parser* %2385 to i8*, !dbg !1605
  %bf.field.offs3111 = getelementptr i8* %2386, i32 20, !dbg !1605
  %2387 = bitcast i8* %bf.field.offs3111 to i32*, !dbg !1605
  %2388 = load i32* %2387, align 4, !dbg !1605
  %int_cast_to_i64201 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64201), !dbg !1605
  %2389 = lshr i32 %2388, 24, !dbg !1605
  %bf.clear3112 = and i32 %2389, 127, !dbg !1605
  %cmp3113 = icmp ne i32 %bf.clear3112, 0, !dbg !1605
  %lnot3115 = xor i1 %cmp3113, true, !dbg !1605
  %lnot3117 = xor i1 %lnot3115, true, !dbg !1605
  %lnot.ext3118 = zext i1 %lnot3117 to i32, !dbg !1605
  %conv3119 = sext i32 %lnot.ext3118 to i64, !dbg !1605
  %tobool3121 = icmp ne i64 %conv3119, 0, !dbg !1605
  br i1 %tobool3121, label %if.then3122, label %for.inc3405, !dbg !1605

if.then3122:                                      ; preds = %if.end3109
  %2390 = load i8** %p, align 8, !dbg !1608
  %2391 = load i8** %data.addr, align 8, !dbg !1608
  %sub.ptr.lhs.cast3123 = ptrtoint i8* %2390 to i64, !dbg !1608
  %sub.ptr.rhs.cast3124 = ptrtoint i8* %2391 to i64, !dbg !1608
  %sub.ptr.sub3125 = sub i64 %sub.ptr.lhs.cast3123, %sub.ptr.rhs.cast3124, !dbg !1608
  %add3126 = add nsw i64 %sub.ptr.sub3125, 1, !dbg !1608
  store i64 %add3126, i64* %retval, !dbg !1608
  br label %do.end3744, !dbg !1608

sw.bb3130:                                        ; preds = %reexecute
  %2392 = load %struct.http_parser** %parser.addr, align 8, !dbg !1610
  %nread3131 = getelementptr inbounds %struct.http_parser* %2392, i32 0, i32 4, !dbg !1610
  %2393 = load i32* %nread3131, align 4, !dbg !1610
  %cmp3132 = icmp eq i32 %2393, 1, !dbg !1610
  br i1 %cmp3132, label %cond.end3136, label %cond.false3135, !dbg !1610

cond.false3135:                                   ; preds = %sw.bb3130
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1925, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 
  unreachable, !dbg !1610

cond.end3136:                                     ; preds = %sw.bb3130
  %2394 = load %struct.http_parser** %parser.addr, align 8, !dbg !1612
  %2395 = bitcast %struct.http_parser* %2394 to i32*, !dbg !1612
  %2396 = load i32* %2395, align 8, !dbg !1612
  %int_cast_to_i64202 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64202), !dbg !1612
  %2397 = lshr i32 %2396, 2, !dbg !1612
  %bf.clear3137 = and i32 %2397, 127, !dbg !1612
  %and3138 = and i32 %bf.clear3137, 1, !dbg !1612
  %tobool3139 = icmp ne i32 %and3138, 0, !dbg !1612
  br i1 %tobool3139, label %cond.end3142, label %cond.false3141, !dbg !1612

cond.false3141:                                   ; preds = %cond.end3136
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1926, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 
  unreachable, !dbg !1612

cond.end3142:                                     ; preds = %cond.end3136
  %2398 = load i8* %ch, align 1, !dbg !1613
  %idxprom3143 = zext i8 %2398 to i64, !dbg !1613
  %arrayidx3144 = getelementptr inbounds [256 x i8]* @unhex, i32 0, i64 %idxprom3143, !dbg !1613
  %2399 = load i8* %arrayidx3144, align 1, !dbg !1613
  store i8 %2399, i8* %unhex_val, align 1, !dbg !1613
  %2400 = load i8* %unhex_val, align 1, !dbg !1614
  %conv3145 = sext i8 %2400 to i32, !dbg !1614
  %cmp3146 = icmp eq i32 %conv3145, -1, !dbg !1614
  %lnot3148 = xor i1 %cmp3146, true, !dbg !1614
  %lnot3150 = xor i1 %lnot3148, true, !dbg !1614
  %lnot.ext3151 = zext i1 %lnot3150 to i32, !dbg !1614
  %conv3152 = sext i32 %lnot.ext3151 to i64, !dbg !1614
  %tobool3154 = icmp ne i64 %conv3152, 0, !dbg !1614
  br i1 %tobool3154, label %do.body3156, label %if.end3159, !dbg !1614

do.body3156:                                      ; preds = %cond.end3142
  %2401 = load %struct.http_parser** %parser.addr, align 8, !dbg !1615
  %2402 = bitcast %struct.http_parser* %2401 to i8*, !dbg !1615
  %bf.field.offs3157 = getelementptr i8* %2402, i32 20, !dbg !1615
  %2403 = bitcast i8* %bf.field.offs3157 to i32*, !dbg !1615
  %2404 = load i32* %2403, align 4, !dbg !1615
  %2405 = and i32 %2404, -2130706433, !dbg !1615
  %2406 = or i32 %2405, 402653184, !dbg !1615
  store i32 %2406, i32* %2403, align 4, !dbg !1615
  br label %error, !dbg !1618

if.end3159:                                       ; preds = %cond.end3142
  %2407 = load i8* %unhex_val, align 1, !dbg !1619
  %conv3160 = sext i8 %2407 to i64, !dbg !1619
  %2408 = load %struct.http_parser** %parser.addr, align 8, !dbg !1619
  %content_length3161 = getelementptr inbounds %struct.http_parser* %2408, i32 0, i32 5, !dbg !1619
  store i64 %conv3160, i64* %content_length3161, align 8, !dbg !1619
  store i32 52, i32* %p_state, align 4, !dbg !1620
  br label %for.inc3405, !dbg !1621

sw.bb3162:                                        ; preds = %reexecute
  %2409 = load %struct.http_parser** %parser.addr, align 8, !dbg !1622
  %2410 = bitcast %struct.http_parser* %2409 to i32*, !dbg !1622
  %2411 = load i32* %2410, align 8, !dbg !1622
  %int_cast_to_i64203 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64203), !dbg !1622
  %2412 = lshr i32 %2411, 2, !dbg !1622
  %bf.clear3164 = and i32 %2412, 127, !dbg !1622
  %and3165 = and i32 %bf.clear3164, 1, !dbg !1622
  %tobool3166 = icmp ne i32 %and3165, 0, !dbg !1622
  br i1 %tobool3166, label %cond.end3169, label %cond.false3168, !dbg !1622

cond.false3168:                                   ; preds = %sw.bb3162
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1943, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 
  unreachable, !dbg !1622

cond.end3169:                                     ; preds = %sw.bb3162
  %2413 = load i8* %ch, align 1, !dbg !1624
  %conv3170 = sext i8 %2413 to i32, !dbg !1624
  %cmp3171 = icmp eq i32 %conv3170, 13, !dbg !1624
  br i1 %cmp3171, label %if.then3173, label %if.end3174, !dbg !1624

if.then3173:                                      ; preds = %cond.end3169
  store i32 54, i32* %p_state, align 4, !dbg !1625
  br label %for.inc3405, !dbg !1627

if.end3174:                                       ; preds = %cond.end3169
  %2414 = load i8* %ch, align 1, !dbg !1628
  %idxprom3175 = zext i8 %2414 to i64, !dbg !1628
  %arrayidx3176 = getelementptr inbounds [256 x i8]* @unhex, i32 0, i64 %idxprom3175, !dbg !1628
  %2415 = load i8* %arrayidx3176, align 1, !dbg !1628
  store i8 %2415, i8* %unhex_val, align 1, !dbg !1628
  %2416 = load i8* %unhex_val, align 1, !dbg !1629
  %conv3177 = sext i8 %2416 to i32, !dbg !1629
  %cmp3178 = icmp eq i32 %conv3177, -1, !dbg !1629
  br i1 %cmp3178, label %if.then3180, label %if.end3193, !dbg !1629

if.then3180:                                      ; preds = %if.end3174
  %2417 = load i8* %ch, align 1, !dbg !1630
  %conv3181 = sext i8 %2417 to i32, !dbg !1630
  %cmp3182 = icmp eq i32 %conv3181, 59, !dbg !1630
  br i1 %cmp3182, label %if.then3188, label %lor.lhs.false3184, !dbg !1630

lor.lhs.false3184:                                ; preds = %if.then3180
  %2418 = load i8* %ch, align 1, !dbg !1630
  %conv3185 = sext i8 %2418 to i32, !dbg !1630
  %cmp3186 = icmp eq i32 %conv3185, 32, !dbg !1630
  br i1 %cmp3186, label %if.then3188, label %do.body3190, !dbg !1630

if.then3188:                                      ; preds = %lor.lhs.false3184, %if.then3180
  store i32 53, i32* %p_state, align 4, !dbg !1632
  br label %for.inc3405, !dbg !1634

do.body3190:                                      ; preds = %lor.lhs.false3184
  %2419 = load %struct.http_parser** %parser.addr, align 8, !dbg !1635
  %2420 = bitcast %struct.http_parser* %2419 to i8*, !dbg !1635
  %bf.field.offs3191 = getelementptr i8* %2420, i32 20, !dbg !1635
  %2421 = bitcast i8* %bf.field.offs3191 to i32*, !dbg !1635
  %2422 = load i32* %2421, align 4, !dbg !1635
  %2423 = and i32 %2422, -2130706433, !dbg !1635
  %2424 = or i32 %2423, 402653184, !dbg !1635
  store i32 %2424, i32* %2421, align 4, !dbg !1635
  br label %error, !dbg !1637

if.end3193:                                       ; preds = %if.end3174
  %2425 = load %struct.http_parser** %parser.addr, align 8, !dbg !1638
  %content_length3194 = getelementptr inbounds %struct.http_parser* %2425, i32 0, i32 5, !dbg !1638
  %2426 = load i64* %content_length3194, align 8, !dbg !1638
  store i64 %2426, i64* %t3163, align 8, !dbg !1638
  %2427 = load i64* %t3163, align 8, !dbg !1639
  %mul3195 = mul i64 %2427, 16, !dbg !1639
  store i64 %mul3195, i64* %t3163, align 8, !dbg !1639
  %2428 = load i8* %unhex_val, align 1, !dbg !1640
  %conv3196 = sext i8 %2428 to i64, !dbg !1640
  %2429 = load i64* %t3163, align 8, !dbg !1640
  %add3197 = add i64 %2429, %conv3196, !dbg !1640
  store i64 %add3197, i64* %t3163, align 8, !dbg !1640
  %2430 = load %struct.http_parser** %parser.addr, align 8, !dbg !1641
  %content_length3198 = getelementptr inbounds %struct.http_parser* %2430, i32 0, i32 5, !dbg !1641
  %2431 = load i64* %content_length3198, align 8, !dbg !1641
  %cmp3199 = icmp ult i64 1152921504606846974, %2431, !dbg !1641
  %lnot3201 = xor i1 %cmp3199, true, !dbg !1641
  %lnot3203 = xor i1 %lnot3201, true, !dbg !1641
  %lnot.ext3204 = zext i1 %lnot3203 to i32, !dbg !1641
  %conv3205 = sext i32 %lnot.ext3204 to i64, !dbg !1641
  %tobool3207 = icmp ne i64 %conv3205, 0, !dbg !1641
  br i1 %tobool3207, label %do.body3209, label %if.end3212, !dbg !1641

do.body3209:                                      ; preds = %if.end3193
  %2432 = load %struct.http_parser** %parser.addr, align 8, !dbg !1642
  %2433 = bitcast %struct.http_parser* %2432 to i8*, !dbg !1642
  %bf.field.offs3210 = getelementptr i8* %2433, i32 20, !dbg !1642
  %2434 = bitcast i8* %bf.field.offs3210 to i32*, !dbg !1642
  %2435 = load i32* %2434, align 4, !dbg !1642
  %2436 = and i32 %2435, -2130706433, !dbg !1642
  %2437 = or i32 %2436, 385875968, !dbg !1642
  store i32 %2437, i32* %2434, align 4, !dbg !1642
  br label %error, !dbg !1645

if.end3212:                                       ; preds = %if.end3193
  %2438 = load i64* %t3163, align 8, !dbg !1646
  %2439 = load %struct.http_parser** %parser.addr, align 8, !dbg !1646
  %content_length3213 = getelementptr inbounds %struct.http_parser* %2439, i32 0, i32 5, !dbg !1646
  store i64 %2438, i64* %content_length3213, align 8, !dbg !1646
  br label %for.inc3405, !dbg !1647

sw.bb3214:                                        ; preds = %reexecute
  %2440 = load %struct.http_parser** %parser.addr, align 8, !dbg !1648
  %2441 = bitcast %struct.http_parser* %2440 to i32*, !dbg !1648
  %2442 = load i32* %2441, align 8, !dbg !1648
  %int_cast_to_i64204 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64204), !dbg !1648
  %2443 = lshr i32 %2442, 2, !dbg !1648
  %bf.clear3215 = and i32 %2443, 127, !dbg !1648
  %and3216 = and i32 %bf.clear3215, 1, !dbg !1648
  %tobool3217 = icmp ne i32 %and3216, 0, !dbg !1648
  br i1 %tobool3217, label %cond.end3220, label %cond.false3219, !dbg !1648

cond.false3219:                                   ; preds = %sw.bb3214
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1978, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 
  unreachable, !dbg !1648

cond.end3220:                                     ; preds = %sw.bb3214
  %2444 = load i8* %ch, align 1, !dbg !1650
  %conv3221 = sext i8 %2444 to i32, !dbg !1650
  %cmp3222 = icmp eq i32 %conv3221, 13, !dbg !1650
  br i1 %cmp3222, label %if.then3224, label %for.inc3405, !dbg !1650

if.then3224:                                      ; preds = %cond.end3220
  store i32 54, i32* %p_state, align 4, !dbg !1651
  br label %for.inc3405, !dbg !1653

sw.bb3226:                                        ; preds = %reexecute
  %2445 = load %struct.http_parser** %parser.addr, align 8, !dbg !1654
  %2446 = bitcast %struct.http_parser* %2445 to i32*, !dbg !1654
  %2447 = load i32* %2446, align 8, !dbg !1654
  %int_cast_to_i64205 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64205), !dbg !1654
  %2448 = lshr i32 %2447, 2, !dbg !1654
  %bf.clear3227 = and i32 %2448, 127, !dbg !1654
  %and3228 = and i32 %bf.clear3227, 1, !dbg !1654
  %tobool3229 = icmp ne i32 %and3228, 0, !dbg !1654
  br i1 %tobool3229, label %do.body3233, label %cond.false3231, !dbg !1654

cond.false3231:                                   ; preds = %sw.bb3226
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 1989, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 
  unreachable, !dbg !1654

do.body3233:                                      ; preds = %sw.bb3226
  %2449 = load i8* %ch, align 1, !dbg !1656
  %conv3234 = sext i8 %2449 to i32, !dbg !1656
  %cmp3235 = icmp ne i32 %conv3234, 10, !dbg !1656
  %2450 = load %struct.http_parser** %parser.addr, align 8, !dbg !1658
  br i1 %cmp3235, label %do.body3238, label %do.end3242, !dbg !1656

do.body3238:                                      ; preds = %do.body3233
  %2451 = bitcast %struct.http_parser* %2450 to i8*, !dbg !1658
  %bf.field.offs3239 = getelementptr i8* %2451, i32 20, !dbg !1658
  %2452 = bitcast i8* %bf.field.offs3239 to i32*, !dbg !1658
  %2453 = load i32* %2452, align 4, !dbg !1658
  %2454 = and i32 %2453, -2130706433, !dbg !1658
  %2455 = or i32 %2454, 452984832, !dbg !1658
  store i32 %2455, i32* %2452, align 4, !dbg !1658
  br label %error, !dbg !1658

do.end3242:                                       ; preds = %do.body3233
  %nread3243 = getelementptr inbounds %struct.http_parser* %2450, i32 0, i32 4, !dbg !1661
  store i32 0, i32* %nread3243, align 4, !dbg !1661
  %2456 = load %struct.http_parser** %parser.addr, align 8, !dbg !1662
  %content_length3244 = getelementptr inbounds %struct.http_parser* %2456, i32 0, i32 5, !dbg !1662
  %2457 = load i64* %content_length3244, align 8, !dbg !1662
  %cmp3245 = icmp eq i64 %2457, 0, !dbg !1662
  br i1 %cmp3245, label %if.then3247, label %if.else3251, !dbg !1662

if.then3247:                                      ; preds = %do.end3242
  %2458 = load %struct.http_parser** %parser.addr, align 8, !dbg !1663
  %2459 = bitcast %struct.http_parser* %2458 to i32*, !dbg !1663
  %2460 = load i32* %2459, align 8, !dbg !1663
  %int_cast_to_i64206 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64206), !dbg !1663
  %2461 = lshr i32 %2460, 2, !dbg !1663
  %bf.clear3248 = and i32 %2461, 127, !dbg !1663
  %or3249 = or i32 %bf.clear3248, 16, !dbg !1663
  %bf.value3250 = and i32 %or3249, 127, !dbg !1663
  %2462 = bitcast %struct.http_parser* %2458 to i32*, !dbg !1663
  %2463 = and i32 %bf.value3250, 127, !dbg !1663
  %int_cast_to_i64207 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64207), !dbg !1663
  %2464 = shl i32 %2463, 2, !dbg !1663
  %2465 = load i32* %2462, align 8, !dbg !1663
  %2466 = and i32 %2465, -509, !dbg !1663
  %2467 = or i32 %2466, %2464, !dbg !1663
  store i32 %2467, i32* %2462, align 8, !dbg !1663
  store i32 42, i32* %p_state, align 4, !dbg !1665
  br label %for.inc3405, !dbg !1666

if.else3251:                                      ; preds = %do.end3242
  store i32 57, i32* %p_state, align 4, !dbg !1667
  br label %for.inc3405

sw.bb3253:                                        ; preds = %reexecute
  %2468 = load %struct.http_parser** %parser.addr, align 8, !dbg !1669
  %content_length3255 = getelementptr inbounds %struct.http_parser* %2468, i32 0, i32 5, !dbg !1669
  %2469 = load i64* %content_length3255, align 8, !dbg !1669
  %2470 = load i8** %data.addr, align 8, !dbg !1669
  %2471 = load i64* %len.addr, align 8, !dbg !1669
  %add.ptr3256 = getelementptr inbounds i8* %2470, i64 %2471, !dbg !1669
  %2472 = load i8** %p, align 8, !dbg !1669
  %sub.ptr.lhs.cast3257 = ptrtoint i8* %add.ptr3256 to i64, !dbg !1669
  %sub.ptr.rhs.cast3258 = ptrtoint i8* %2472 to i64, !dbg !1669
  %sub.ptr.sub3259 = sub i64 %sub.ptr.lhs.cast3257, %sub.ptr.rhs.cast3258, !dbg !1669
  %cmp3260 = icmp ult i64 %2469, %sub.ptr.sub3259, !dbg !1669
  br i1 %cmp3260, label %cond.true3262, label %cond.false3264, !dbg !1669

cond.true3262:                                    ; preds = %sw.bb3253
  %2473 = load %struct.http_parser** %parser.addr, align 8, !dbg !1669
  %content_length3263 = getelementptr inbounds %struct.http_parser* %2473, i32 0, i32 5, !dbg !1669
  %2474 = load i64* %content_length3263, align 8, !dbg !1669
  br label %cond.end3269, !dbg !1669

cond.false3264:                                   ; preds = %sw.bb3253
  %2475 = load i8** %data.addr, align 8, !dbg !1669
  %2476 = load i64* %len.addr, align 8, !dbg !1669
  %add.ptr3265 = getelementptr inbounds i8* %2475, i64 %2476, !dbg !1669
  %2477 = load i8** %p, align 8, !dbg !1669
  %sub.ptr.lhs.cast3266 = ptrtoint i8* %add.ptr3265 to i64, !dbg !1669
  %sub.ptr.rhs.cast3267 = ptrtoint i8* %2477 to i64, !dbg !1669
  %sub.ptr.sub3268 = sub i64 %sub.ptr.lhs.cast3266, %sub.ptr.rhs.cast3267, !dbg !1669
  br label %cond.end3269, !dbg !1669

cond.end3269:                                     ; preds = %cond.false3264, %cond.true3262
  %cond3270 = phi i64 [ %2474, %cond.true3262 ], [ %sub.ptr.sub3268, %cond.false3264 ], !dbg !1669
  store i64 %cond3270, i64* %to_read3254, align 8, !dbg !1669
  %2478 = load %struct.http_parser** %parser.addr, align 8, !dbg !1671
  %2479 = bitcast %struct.http_parser* %2478 to i32*, !dbg !1671
  %2480 = load i32* %2479, align 8, !dbg !1671
  %int_cast_to_i64208 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64208), !dbg !1671
  %2481 = lshr i32 %2480, 2, !dbg !1671
  %bf.clear3271 = and i32 %2481, 127, !dbg !1671
  %and3272 = and i32 %bf.clear3271, 1, !dbg !1671
  %tobool3273 = icmp ne i32 %and3272, 0, !dbg !1671
  br i1 %tobool3273, label %cond.end3276, label %cond.false3275, !dbg !1671

cond.false3275:                                   ; preds = %cond.end3269
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2008, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 
  unreachable, !dbg !1671

cond.end3276:                                     ; preds = %cond.end3269
  %2482 = load %struct.http_parser** %parser.addr, align 8, !dbg !1672
  %content_length3277 = getelementptr inbounds %struct.http_parser* %2482, i32 0, i32 5, !dbg !1672
  %2483 = load i64* %content_length3277, align 8, !dbg !1672
  %cmp3278 = icmp ne i64 %2483, 0, !dbg !1672
  br i1 %cmp3278, label %land.lhs.true3280, label %cond.false3285, !dbg !1672

land.lhs.true3280:                                ; preds = %cond.end3276
  %2484 = load %struct.http_parser** %parser.addr, align 8, !dbg !1672
  %content_length3281 = getelementptr inbounds %struct.http_parser* %2484, i32 0, i32 5, !dbg !1672
  %2485 = load i64* %content_length3281, align 8, !dbg !1672
  %cmp3282 = icmp ne i64 %2485, -1, !dbg !1672
  br i1 %cmp3282, label %do.body3287, label %cond.false3285, !dbg !1672

cond.false3285:                                   ; preds = %land.lhs.true3280, %cond.end3276
  call void @__assert_fail(i8* getelementptr inbounds ([91 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2010, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 
  unreachable, !dbg !1672

do.body3287:                                      ; preds = %land.lhs.true3280
  %2486 = load i8** %body_mark, align 8, !dbg !1673
  %tobool3288 = icmp ne i8* %2486, null, !dbg !1673
  br i1 %tobool3288, label %do.end3291, label %if.then3289, !dbg !1673

if.then3289:                                      ; preds = %do.body3287
  %2487 = load i8** %p, align 8, !dbg !1675
  store i8* %2487, i8** %body_mark, align 8, !dbg !1675
  br label %do.end3291, !dbg !1675

do.end3291:                                       ; preds = %do.body3287, %if.then3289
  %2488 = load i64* %to_read3254, align 8, !dbg !1677
  %2489 = load %struct.http_parser** %parser.addr, align 8, !dbg !1677
  %content_length3292 = getelementptr inbounds %struct.http_parser* %2489, i32 0, i32 5, !dbg !1677
  %2490 = load i64* %content_length3292, align 8, !dbg !1677
  %sub3293 = sub i64 %2490, %2488, !dbg !1677
  store i64 %sub3293, i64* %content_length3292, align 8, !dbg !1677
  %2491 = load i64* %to_read3254, align 8, !dbg !1678
  %sub3294 = sub i64 %2491, 1, !dbg !1678
  %2492 = load i8** %p, align 8, !dbg !1678
  %add.ptr3295 = getelementptr inbounds i8* %2492, i64 %sub3294, !dbg !1678
  store i8* %add.ptr3295, i8** %p, align 8, !dbg !1678
  %2493 = load %struct.http_parser** %parser.addr, align 8, !dbg !1679
  %content_length3296 = getelementptr inbounds %struct.http_parser* %2493, i32 0, i32 5, !dbg !1679
  %2494 = load i64* %content_length3296, align 8, !dbg !1679
  %cmp3297 = icmp eq i64 %2494, 0, !dbg !1679
  br i1 %cmp3297, label %if.then3299, label %for.inc3405, !dbg !1679

if.then3299:                                      ; preds = %do.end3291
  store i32 58, i32* %p_state, align 4, !dbg !1680
  br label %for.inc3405, !dbg !1682

sw.bb3301:                                        ; preds = %reexecute
  %2495 = load %struct.http_parser** %parser.addr, align 8, !dbg !1683
  %2496 = bitcast %struct.http_parser* %2495 to i32*, !dbg !1683
  %2497 = load i32* %2496, align 8, !dbg !1683
  %int_cast_to_i64209 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64209), !dbg !1683
  %2498 = lshr i32 %2497, 2, !dbg !1683
  %bf.clear3302 = and i32 %2498, 127, !dbg !1683
  %and3303 = and i32 %bf.clear3302, 1, !dbg !1683
  %tobool3304 = icmp ne i32 %and3303, 0, !dbg !1683
  br i1 %tobool3304, label %cond.end3307, label %cond.false3306, !dbg !1683

cond.false3306:                                   ; preds = %sw.bb3301
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2027, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 
  unreachable, !dbg !1683

cond.end3307:                                     ; preds = %sw.bb3301
  %2499 = load %struct.http_parser** %parser.addr, align 8, !dbg !1684
  %content_length3308 = getelementptr inbounds %struct.http_parser* %2499, i32 0, i32 5, !dbg !1684
  %2500 = load i64* %content_length3308, align 8, !dbg !1684
  %cmp3309 = icmp eq i64 %2500, 0, !dbg !1684
  br i1 %cmp3309, label %do.body3314, label %cond.false3312, !dbg !1684

cond.false3312:                                   ; preds = %cond.end3307
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2028, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 
  unreachable, !dbg !1684

do.body3314:                                      ; preds = %cond.end3307
  %2501 = load i8* %ch, align 1, !dbg !1685
  %conv3315 = sext i8 %2501 to i32, !dbg !1685
  %cmp3316 = icmp ne i32 %conv3315, 13, !dbg !1685
  br i1 %cmp3316, label %do.body3319, label %do.end3323, !dbg !1685

do.body3319:                                      ; preds = %do.body3314
  %2502 = load %struct.http_parser** %parser.addr, align 8, !dbg !1687
  %2503 = bitcast %struct.http_parser* %2502 to i8*, !dbg !1687
  %bf.field.offs3320 = getelementptr i8* %2503, i32 20, !dbg !1687
  %2504 = bitcast i8* %bf.field.offs3320 to i32*, !dbg !1687
  %2505 = load i32* %2504, align 4, !dbg !1687
  %2506 = and i32 %2505, -2130706433, !dbg !1687
  %2507 = or i32 %2506, 452984832, !dbg !1687
  store i32 %2507, i32* %2504, align 4, !dbg !1687
  br label %error, !dbg !1687

do.end3323:                                       ; preds = %do.body3314
  store i32 59, i32* %p_state, align 4, !dbg !1690
  %2508 = load %struct.http_parser** %parser.addr, align 8, !dbg !1691
  %2509 = bitcast %struct.http_parser* %2508 to i8*, !dbg !1691
  %bf.field.offs3325 = getelementptr i8* %2509, i32 20, !dbg !1691
  %2510 = bitcast i8* %bf.field.offs3325 to i32*, !dbg !1691
  %2511 = load i32* %2510, align 4, !dbg !1691
  %int_cast_to_i64210 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64210), !dbg !1691
  %2512 = lshr i32 %2511, 24, !dbg !1691
  %bf.clear3326 = and i32 %2512, 127, !dbg !1691
  %cmp3327 = icmp eq i32 %bf.clear3326, 0, !dbg !1691
  br i1 %cmp3327, label %cond.end3331, label %cond.false3330, !dbg !1691

cond.false3330:                                   ; preds = %do.end3323
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2031, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !1691

cond.end3331:                                     ; preds = %do.end3323
  %2513 = load i8** %body_mark, align 8, !dbg !1691
  %tobool3332 = icmp ne i8* %2513, null, !dbg !1691
  br i1 %tobool3332, label %if.then3333, label %for.inc3405, !dbg !1691

if.then3333:                                      ; preds = %cond.end3331
  %2514 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1693
  %on_body3334 = getelementptr inbounds %struct.http_parser_settings* %2514, i32 0, i32 6, !dbg !1693
  %2515 = load i32 (%struct.http_parser*, i8*, i64)** %on_body3334, align 8, !dbg !1693
  %tobool3335 = icmp ne i32 (%struct.http_parser*, i8*, i64)* %2515, null, !dbg !1693
  %lnot3336 = xor i1 %tobool3335, true, !dbg !1693
  %lnot3338 = xor i1 %lnot3336, true, !dbg !1693
  %lnot.ext3339 = zext i1 %lnot3338 to i32, !dbg !1693
  %conv3340 = sext i32 %lnot.ext3339 to i64, !dbg !1693
  %tobool3342 = icmp ne i64 %conv3340, 0, !dbg !1693
  br i1 %tobool3342, label %if.then3343, label %if.end3382, !dbg !1693

if.then3343:                                      ; preds = %if.then3333
  %2516 = load i32* %p_state, align 4, !dbg !1695
  %2517 = load %struct.http_parser** %parser.addr, align 8, !dbg !1695
  %bf.value3344 = and i32 %2516, 127, !dbg !1695
  %2518 = bitcast %struct.http_parser* %2517 to i32*, !dbg !1695
  %2519 = and i32 %bf.value3344, 127, !dbg !1695
  %int_cast_to_i64211 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64211), !dbg !1695
  %2520 = shl i32 %2519, 9, !dbg !1695
  %2521 = load i32* %2518, align 8, !dbg !1695
  %2522 = and i32 %2521, -65025, !dbg !1695
  %2523 = or i32 %2522, %2520, !dbg !1695
  store i32 %2523, i32* %2518, align 8, !dbg !1695
  %2524 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1695
  %on_body3345 = getelementptr inbounds %struct.http_parser_settings* %2524, i32 0, i32 6, !dbg !1695
  %2525 = load i32 (%struct.http_parser*, i8*, i64)** %on_body3345, align 8, !dbg !1695
  %2526 = load %struct.http_parser** %parser.addr, align 8, !dbg !1695
  %2527 = load i8** %body_mark, align 8, !dbg !1695
  %2528 = load i8** %p, align 8, !dbg !1695
  %2529 = load i8** %body_mark, align 8, !dbg !1695
  %sub.ptr.lhs.cast3346 = ptrtoint i8* %2528 to i64, !dbg !1695
  %sub.ptr.rhs.cast3347 = ptrtoint i8* %2529 to i64, !dbg !1695
  %sub.ptr.sub3348 = sub i64 %sub.ptr.lhs.cast3346, %sub.ptr.rhs.cast3347, !dbg !1695
  %call3349 = call i32 %2525(%struct.http_parser* %2526, i8* %2527, i64 %sub.ptr.sub3348), !dbg !1695
  %cmp3350 = icmp ne i32 0, %call3349, !dbg !1695
  %lnot3352 = xor i1 %cmp3350, true, !dbg !1695
  %lnot3354 = xor i1 %lnot3352, true, !dbg !1695
  %lnot.ext3355 = zext i1 %lnot3354 to i32, !dbg !1695
  %conv3356 = sext i32 %lnot.ext3355 to i64, !dbg !1695
  %tobool3358 = icmp ne i64 %conv3356, 0, !dbg !1695
  br i1 %tobool3358, label %do.body3360, label %if.end3363, !dbg !1695

do.body3360:                                      ; preds = %if.then3343
  %2530 = load %struct.http_parser** %parser.addr, align 8, !dbg !1697
  %2531 = bitcast %struct.http_parser* %2530 to i8*, !dbg !1697
  %bf.field.offs3361 = getelementptr i8* %2531, i32 20, !dbg !1697
  %2532 = bitcast i8* %bf.field.offs3361 to i32*, !dbg !1697
  %2533 = load i32* %2532, align 4, !dbg !1697
  %2534 = and i32 %2533, -2130706433, !dbg !1697
  %2535 = or i32 %2534, 100663296, !dbg !1697
  store i32 %2535, i32* %2532, align 4, !dbg !1697
  br label %if.end3363, !dbg !1697

if.end3363:                                       ; preds = %do.body3360, %if.then3343
  %2536 = load %struct.http_parser** %parser.addr, align 8, !dbg !1697
  %2537 = bitcast %struct.http_parser* %2536 to i32*, !dbg !1697
  %2538 = load i32* %2537, align 8, !dbg !1697
  %int_cast_to_i64212 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64212), !dbg !1697
  %2539 = lshr i32 %2538, 9, !dbg !1697
  %bf.clear3364 = and i32 %2539, 127, !dbg !1697
  store i32 %bf.clear3364, i32* %p_state, align 4, !dbg !1697
  %2540 = load %struct.http_parser** %parser.addr, align 8, !dbg !1697
  %2541 = bitcast %struct.http_parser* %2540 to i8*, !dbg !1697
  %bf.field.offs3365 = getelementptr i8* %2541, i32 20, !dbg !1697
  %2542 = bitcast i8* %bf.field.offs3365 to i32*, !dbg !1697
  %2543 = load i32* %2542, align 4, !dbg !1697
  %int_cast_to_i64213 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64213), !dbg !1697
  %2544 = lshr i32 %2543, 24, !dbg !1697
  %bf.clear3366 = and i32 %2544, 127, !dbg !1697
  %cmp3367 = icmp ne i32 %bf.clear3366, 0, !dbg !1697
  %lnot3369 = xor i1 %cmp3367, true, !dbg !1697
  %lnot3371 = xor i1 %lnot3369, true, !dbg !1697
  %lnot.ext3372 = zext i1 %lnot3371 to i32, !dbg !1697
  %conv3373 = sext i32 %lnot.ext3372 to i64, !dbg !1697
  %tobool3375 = icmp ne i64 %conv3373, 0, !dbg !1697
  br i1 %tobool3375, label %if.then3376, label %if.end3382, !dbg !1697

if.then3376:                                      ; preds = %if.end3363
  %2545 = load i8** %p, align 8, !dbg !1700
  %2546 = load i8** %data.addr, align 8, !dbg !1700
  %sub.ptr.lhs.cast3377 = ptrtoint i8* %2545 to i64, !dbg !1700
  %sub.ptr.rhs.cast3378 = ptrtoint i8* %2546 to i64, !dbg !1700
  %sub.ptr.sub3379 = sub i64 %sub.ptr.lhs.cast3377, %sub.ptr.rhs.cast3378, !dbg !1700
  %add3380 = add nsw i64 %sub.ptr.sub3379, 1, !dbg !1700
  store i64 %add3380, i64* %retval, !dbg !1700
  br label %do.end3744, !dbg !1700

if.end3382:                                       ; preds = %if.end3363, %if.then3333
  store i8* null, i8** %body_mark, align 8, !dbg !1700
  br label %for.inc3405, !dbg !1700

sw.bb3385:                                        ; preds = %reexecute
  %2547 = load %struct.http_parser** %parser.addr, align 8, !dbg !1702
  %2548 = bitcast %struct.http_parser* %2547 to i32*, !dbg !1702
  %2549 = load i32* %2548, align 8, !dbg !1702
  %int_cast_to_i64214 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64214), !dbg !1702
  %2550 = lshr i32 %2549, 2, !dbg !1702
  %bf.clear3386 = and i32 %2550, 127, !dbg !1702
  %and3387 = and i32 %bf.clear3386, 1, !dbg !1702
  %tobool3388 = icmp ne i32 %and3387, 0, !dbg !1702
  br i1 %tobool3388, label %do.body3392, label %cond.false3390, !dbg !1702

cond.false3390:                                   ; preds = %sw.bb3385
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2035, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 
  unreachable, !dbg !1702

do.body3392:                                      ; preds = %sw.bb3385
  %2551 = load i8* %ch, align 1, !dbg !1703
  %conv3393 = sext i8 %2551 to i32, !dbg !1703
  %cmp3394 = icmp ne i32 %conv3393, 10, !dbg !1703
  %2552 = load %struct.http_parser** %parser.addr, align 8, !dbg !1705
  br i1 %cmp3394, label %do.body3397, label %do.end3401, !dbg !1703

do.body3397:                                      ; preds = %do.body3392
  %2553 = bitcast %struct.http_parser* %2552 to i8*, !dbg !1705
  %bf.field.offs3398 = getelementptr i8* %2553, i32 20, !dbg !1705
  %2554 = bitcast i8* %bf.field.offs3398 to i32*, !dbg !1705
  %2555 = load i32* %2554, align 4, !dbg !1705
  %2556 = and i32 %2555, -2130706433, !dbg !1705
  %2557 = or i32 %2556, 452984832, !dbg !1705
  store i32 %2557, i32* %2554, align 4, !dbg !1705
  br label %error, !dbg !1705

do.end3401:                                       ; preds = %do.body3392
  %nread3402 = getelementptr inbounds %struct.http_parser* %2552, i32 0, i32 4, !dbg !1708
  store i32 0, i32* %nread3402, align 4, !dbg !1708
  store i32 51, i32* %p_state, align 4, !dbg !1709
  br label %for.inc3405, !dbg !1710

sw.default3403:                                   ; preds = %reexecute
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2042, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 
  unreachable, !dbg !1711

for.inc3405:                                      ; preds = %do.end264, %do.end275, %do.end286, %do.end297, %if.end318, %if.then325, %if.end383, %if.then391, %if.end458, %if.then514, %if.then519, %do.end525, %do.end668, %if.end1050, %do.end1274, %do.end1
  %2558 = load i8** %p, align 8, !dbg !503
  %incdec.ptr3406 = getelementptr inbounds i8* %2558, i32 1, !dbg !503
  store i8* %incdec.ptr3406, i8** %p, align 8, !dbg !503
  br label %for.cond, !dbg !503

for.end3407:                                      ; preds = %for.cond
  %2559 = load i8** %header_field_mark, align 8, !dbg !1712
  %tobool3408 = icmp ne i8* %2559, null, !dbg !1712
  %cond3409 = select i1 %tobool3408, i32 1, i32 0, !dbg !1712
  %2560 = load i8** %header_value_mark, align 8, !dbg !1712
  %tobool3410 = icmp ne i8* %2560, null, !dbg !1712
  %cond3411 = select i1 %tobool3410, i32 1, i32 0, !dbg !1712
  %add3412 = add nsw i32 %cond3409, %cond3411, !dbg !1712
  %2561 = load i8** %url_mark, align 8, !dbg !1712
  %tobool3413 = icmp ne i8* %2561, null, !dbg !1712
  %cond3414 = select i1 %tobool3413, i32 1, i32 0, !dbg !1712
  %add3415 = add nsw i32 %add3412, %cond3414, !dbg !1712
  %2562 = load i8** %body_mark, align 8, !dbg !1712
  %tobool3416 = icmp ne i8* %2562, null, !dbg !1712
  %cond3417 = select i1 %tobool3416, i32 1, i32 0, !dbg !1712
  %add3418 = add nsw i32 %add3415, %cond3417, !dbg !1712
  %2563 = load i8** %status_mark, align 8, !dbg !1712
  %tobool3419 = icmp ne i8* %2563, null, !dbg !1712
  %cond3420 = select i1 %tobool3419, i32 1, i32 0, !dbg !1712
  %add3421 = add nsw i32 %add3418, %cond3420, !dbg !1712
  %cmp3422 = icmp sle i32 %add3421, 1, !dbg !1712
  br i1 %cmp3422, label %do.body3427, label %cond.false3425, !dbg !1712

cond.false3425:                                   ; preds = %for.end3407
  call void @__assert_fail(i8* getelementptr inbounds ([132 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2062, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32
  unreachable, !dbg !1712

do.body3427:                                      ; preds = %for.end3407
  %2564 = load %struct.http_parser** %parser.addr, align 8, !dbg !1713
  %2565 = bitcast %struct.http_parser* %2564 to i8*, !dbg !1713
  %bf.field.offs3428 = getelementptr i8* %2565, i32 20, !dbg !1713
  %2566 = bitcast i8* %bf.field.offs3428 to i32*, !dbg !1713
  %2567 = load i32* %2566, align 4, !dbg !1713
  %int_cast_to_i64215 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64215), !dbg !1713
  %2568 = lshr i32 %2567, 24, !dbg !1713
  %bf.clear3429 = and i32 %2568, 127, !dbg !1713
  %cmp3430 = icmp eq i32 %bf.clear3429, 0, !dbg !1713
  br i1 %cmp3430, label %cond.end3434, label %cond.false3433, !dbg !1713

cond.false3433:                                   ; preds = %do.body3427
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2064, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !1713

cond.end3434:                                     ; preds = %do.body3427
  %2569 = load i8** %header_field_mark, align 8, !dbg !1713
  %tobool3435 = icmp ne i8* %2569, null, !dbg !1713
  br i1 %tobool3435, label %if.then3436, label %do.body3487, !dbg !1713

if.then3436:                                      ; preds = %cond.end3434
  %2570 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1715
  %on_header_field3437 = getelementptr inbounds %struct.http_parser_settings* %2570, i32 0, i32 3, !dbg !1715
  %2571 = load i32 (%struct.http_parser*, i8*, i64)** %on_header_field3437, align 8, !dbg !1715
  %tobool3438 = icmp ne i32 (%struct.http_parser*, i8*, i64)* %2571, null, !dbg !1715
  %lnot3439 = xor i1 %tobool3438, true, !dbg !1715
  %lnot3441 = xor i1 %lnot3439, true, !dbg !1715
  %lnot.ext3442 = zext i1 %lnot3441 to i32, !dbg !1715
  %conv3443 = sext i32 %lnot.ext3442 to i64, !dbg !1715
  %tobool3445 = icmp ne i64 %conv3443, 0, !dbg !1715
  br i1 %tobool3445, label %if.then3446, label %if.end3484, !dbg !1715

if.then3446:                                      ; preds = %if.then3436
  %2572 = load i32* %p_state, align 4, !dbg !1717
  %2573 = load %struct.http_parser** %parser.addr, align 8, !dbg !1717
  %bf.value3447 = and i32 %2572, 127, !dbg !1717
  %2574 = bitcast %struct.http_parser* %2573 to i32*, !dbg !1717
  %2575 = and i32 %bf.value3447, 127, !dbg !1717
  %int_cast_to_i64216 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64216), !dbg !1717
  %2576 = shl i32 %2575, 9, !dbg !1717
  %2577 = load i32* %2574, align 8, !dbg !1717
  %2578 = and i32 %2577, -65025, !dbg !1717
  %2579 = or i32 %2578, %2576, !dbg !1717
  store i32 %2579, i32* %2574, align 8, !dbg !1717
  %2580 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1717
  %on_header_field3448 = getelementptr inbounds %struct.http_parser_settings* %2580, i32 0, i32 3, !dbg !1717
  %2581 = load i32 (%struct.http_parser*, i8*, i64)** %on_header_field3448, align 8, !dbg !1717
  %2582 = load %struct.http_parser** %parser.addr, align 8, !dbg !1717
  %2583 = load i8** %header_field_mark, align 8, !dbg !1717
  %2584 = load i8** %p, align 8, !dbg !1717
  %2585 = load i8** %header_field_mark, align 8, !dbg !1717
  %sub.ptr.lhs.cast3449 = ptrtoint i8* %2584 to i64, !dbg !1717
  %sub.ptr.rhs.cast3450 = ptrtoint i8* %2585 to i64, !dbg !1717
  %sub.ptr.sub3451 = sub i64 %sub.ptr.lhs.cast3449, %sub.ptr.rhs.cast3450, !dbg !1717
  %call3452 = call i32 %2581(%struct.http_parser* %2582, i8* %2583, i64 %sub.ptr.sub3451), !dbg !1717
  %cmp3453 = icmp ne i32 0, %call3452, !dbg !1717
  %lnot3455 = xor i1 %cmp3453, true, !dbg !1717
  %lnot3457 = xor i1 %lnot3455, true, !dbg !1717
  %lnot.ext3458 = zext i1 %lnot3457 to i32, !dbg !1717
  %conv3459 = sext i32 %lnot.ext3458 to i64, !dbg !1717
  %tobool3461 = icmp ne i64 %conv3459, 0, !dbg !1717
  br i1 %tobool3461, label %do.body3463, label %if.end3466, !dbg !1717

do.body3463:                                      ; preds = %if.then3446
  %2586 = load %struct.http_parser** %parser.addr, align 8, !dbg !1719
  %2587 = bitcast %struct.http_parser* %2586 to i8*, !dbg !1719
  %bf.field.offs3464 = getelementptr i8* %2587, i32 20, !dbg !1719
  %2588 = bitcast i8* %bf.field.offs3464 to i32*, !dbg !1719
  %2589 = load i32* %2588, align 4, !dbg !1719
  %2590 = and i32 %2589, -2130706433, !dbg !1719
  %2591 = or i32 %2590, 50331648, !dbg !1719
  store i32 %2591, i32* %2588, align 4, !dbg !1719
  br label %if.end3466, !dbg !1719

if.end3466:                                       ; preds = %do.body3463, %if.then3446
  %2592 = load %struct.http_parser** %parser.addr, align 8, !dbg !1719
  %2593 = bitcast %struct.http_parser* %2592 to i32*, !dbg !1719
  %2594 = load i32* %2593, align 8, !dbg !1719
  %int_cast_to_i64217 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64217), !dbg !1719
  %2595 = lshr i32 %2594, 9, !dbg !1719
  %bf.clear3467 = and i32 %2595, 127, !dbg !1719
  store i32 %bf.clear3467, i32* %p_state, align 4, !dbg !1719
  %2596 = load %struct.http_parser** %parser.addr, align 8, !dbg !1719
  %2597 = bitcast %struct.http_parser* %2596 to i8*, !dbg !1719
  %bf.field.offs3468 = getelementptr i8* %2597, i32 20, !dbg !1719
  %2598 = bitcast i8* %bf.field.offs3468 to i32*, !dbg !1719
  %2599 = load i32* %2598, align 4, !dbg !1719
  %int_cast_to_i64218 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64218), !dbg !1719
  %2600 = lshr i32 %2599, 24, !dbg !1719
  %bf.clear3469 = and i32 %2600, 127, !dbg !1719
  %cmp3470 = icmp ne i32 %bf.clear3469, 0, !dbg !1719
  %lnot3472 = xor i1 %cmp3470, true, !dbg !1719
  %lnot3474 = xor i1 %lnot3472, true, !dbg !1719
  %lnot.ext3475 = zext i1 %lnot3474 to i32, !dbg !1719
  %conv3476 = sext i32 %lnot.ext3475 to i64, !dbg !1719
  %tobool3478 = icmp ne i64 %conv3476, 0, !dbg !1719
  br i1 %tobool3478, label %if.then3479, label %if.end3484, !dbg !1719

if.then3479:                                      ; preds = %if.end3466
  %2601 = load i8** %p, align 8, !dbg !1722
  %2602 = load i8** %data.addr, align 8, !dbg !1722
  %sub.ptr.lhs.cast3480 = ptrtoint i8* %2601 to i64, !dbg !1722
  %sub.ptr.rhs.cast3481 = ptrtoint i8* %2602 to i64, !dbg !1722
  %sub.ptr.sub3482 = sub i64 %sub.ptr.lhs.cast3480, %sub.ptr.rhs.cast3481, !dbg !1722
  store i64 %sub.ptr.sub3482, i64* %retval, !dbg !1722
  br label %do.end3744, !dbg !1722

if.end3484:                                       ; preds = %if.end3466, %if.then3436
  store i8* null, i8** %header_field_mark, align 8, !dbg !1722
  br label %do.body3487, !dbg !1722

do.body3487:                                      ; preds = %if.end3484, %cond.end3434
  %2603 = load %struct.http_parser** %parser.addr, align 8, !dbg !1724
  %2604 = bitcast %struct.http_parser* %2603 to i8*, !dbg !1724
  %bf.field.offs3488 = getelementptr i8* %2604, i32 20, !dbg !1724
  %2605 = bitcast i8* %bf.field.offs3488 to i32*, !dbg !1724
  %2606 = load i32* %2605, align 4, !dbg !1724
  %int_cast_to_i64219 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64219), !dbg !1724
  %2607 = lshr i32 %2606, 24, !dbg !1724
  %bf.clear3489 = and i32 %2607, 127, !dbg !1724
  %cmp3490 = icmp eq i32 %bf.clear3489, 0, !dbg !1724
  br i1 %cmp3490, label %cond.end3494, label %cond.false3493, !dbg !1724

cond.false3493:                                   ; preds = %do.body3487
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2065, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !1724

cond.end3494:                                     ; preds = %do.body3487
  %2608 = load i8** %header_value_mark, align 8, !dbg !1724
  %tobool3495 = icmp ne i8* %2608, null, !dbg !1724
  br i1 %tobool3495, label %if.then3496, label %do.body3547, !dbg !1724

if.then3496:                                      ; preds = %cond.end3494
  %2609 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1726
  %on_header_value3497 = getelementptr inbounds %struct.http_parser_settings* %2609, i32 0, i32 4, !dbg !1726
  %2610 = load i32 (%struct.http_parser*, i8*, i64)** %on_header_value3497, align 8, !dbg !1726
  %tobool3498 = icmp ne i32 (%struct.http_parser*, i8*, i64)* %2610, null, !dbg !1726
  %lnot3499 = xor i1 %tobool3498, true, !dbg !1726
  %lnot3501 = xor i1 %lnot3499, true, !dbg !1726
  %lnot.ext3502 = zext i1 %lnot3501 to i32, !dbg !1726
  %conv3503 = sext i32 %lnot.ext3502 to i64, !dbg !1726
  %tobool3505 = icmp ne i64 %conv3503, 0, !dbg !1726
  br i1 %tobool3505, label %if.then3506, label %if.end3544, !dbg !1726

if.then3506:                                      ; preds = %if.then3496
  %2611 = load i32* %p_state, align 4, !dbg !1728
  %2612 = load %struct.http_parser** %parser.addr, align 8, !dbg !1728
  %bf.value3507 = and i32 %2611, 127, !dbg !1728
  %2613 = bitcast %struct.http_parser* %2612 to i32*, !dbg !1728
  %2614 = and i32 %bf.value3507, 127, !dbg !1728
  %int_cast_to_i64220 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64220), !dbg !1728
  %2615 = shl i32 %2614, 9, !dbg !1728
  %2616 = load i32* %2613, align 8, !dbg !1728
  %2617 = and i32 %2616, -65025, !dbg !1728
  %2618 = or i32 %2617, %2615, !dbg !1728
  store i32 %2618, i32* %2613, align 8, !dbg !1728
  %2619 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1728
  %on_header_value3508 = getelementptr inbounds %struct.http_parser_settings* %2619, i32 0, i32 4, !dbg !1728
  %2620 = load i32 (%struct.http_parser*, i8*, i64)** %on_header_value3508, align 8, !dbg !1728
  %2621 = load %struct.http_parser** %parser.addr, align 8, !dbg !1728
  %2622 = load i8** %header_value_mark, align 8, !dbg !1728
  %2623 = load i8** %p, align 8, !dbg !1728
  %2624 = load i8** %header_value_mark, align 8, !dbg !1728
  %sub.ptr.lhs.cast3509 = ptrtoint i8* %2623 to i64, !dbg !1728
  %sub.ptr.rhs.cast3510 = ptrtoint i8* %2624 to i64, !dbg !1728
  %sub.ptr.sub3511 = sub i64 %sub.ptr.lhs.cast3509, %sub.ptr.rhs.cast3510, !dbg !1728
  %call3512 = call i32 %2620(%struct.http_parser* %2621, i8* %2622, i64 %sub.ptr.sub3511), !dbg !1728
  %cmp3513 = icmp ne i32 0, %call3512, !dbg !1728
  %lnot3515 = xor i1 %cmp3513, true, !dbg !1728
  %lnot3517 = xor i1 %lnot3515, true, !dbg !1728
  %lnot.ext3518 = zext i1 %lnot3517 to i32, !dbg !1728
  %conv3519 = sext i32 %lnot.ext3518 to i64, !dbg !1728
  %tobool3521 = icmp ne i64 %conv3519, 0, !dbg !1728
  br i1 %tobool3521, label %do.body3523, label %if.end3526, !dbg !1728

do.body3523:                                      ; preds = %if.then3506
  %2625 = load %struct.http_parser** %parser.addr, align 8, !dbg !1730
  %2626 = bitcast %struct.http_parser* %2625 to i8*, !dbg !1730
  %bf.field.offs3524 = getelementptr i8* %2626, i32 20, !dbg !1730
  %2627 = bitcast i8* %bf.field.offs3524 to i32*, !dbg !1730
  %2628 = load i32* %2627, align 4, !dbg !1730
  %2629 = and i32 %2628, -2130706433, !dbg !1730
  %2630 = or i32 %2629, 67108864, !dbg !1730
  store i32 %2630, i32* %2627, align 4, !dbg !1730
  br label %if.end3526, !dbg !1730

if.end3526:                                       ; preds = %do.body3523, %if.then3506
  %2631 = load %struct.http_parser** %parser.addr, align 8, !dbg !1730
  %2632 = bitcast %struct.http_parser* %2631 to i32*, !dbg !1730
  %2633 = load i32* %2632, align 8, !dbg !1730
  %int_cast_to_i64221 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64221), !dbg !1730
  %2634 = lshr i32 %2633, 9, !dbg !1730
  %bf.clear3527 = and i32 %2634, 127, !dbg !1730
  store i32 %bf.clear3527, i32* %p_state, align 4, !dbg !1730
  %2635 = load %struct.http_parser** %parser.addr, align 8, !dbg !1730
  %2636 = bitcast %struct.http_parser* %2635 to i8*, !dbg !1730
  %bf.field.offs3528 = getelementptr i8* %2636, i32 20, !dbg !1730
  %2637 = bitcast i8* %bf.field.offs3528 to i32*, !dbg !1730
  %2638 = load i32* %2637, align 4, !dbg !1730
  %int_cast_to_i64222 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64222), !dbg !1730
  %2639 = lshr i32 %2638, 24, !dbg !1730
  %bf.clear3529 = and i32 %2639, 127, !dbg !1730
  %cmp3530 = icmp ne i32 %bf.clear3529, 0, !dbg !1730
  %lnot3532 = xor i1 %cmp3530, true, !dbg !1730
  %lnot3534 = xor i1 %lnot3532, true, !dbg !1730
  %lnot.ext3535 = zext i1 %lnot3534 to i32, !dbg !1730
  %conv3536 = sext i32 %lnot.ext3535 to i64, !dbg !1730
  %tobool3538 = icmp ne i64 %conv3536, 0, !dbg !1730
  br i1 %tobool3538, label %if.then3539, label %if.end3544, !dbg !1730

if.then3539:                                      ; preds = %if.end3526
  %2640 = load i8** %p, align 8, !dbg !1733
  %2641 = load i8** %data.addr, align 8, !dbg !1733
  %sub.ptr.lhs.cast3540 = ptrtoint i8* %2640 to i64, !dbg !1733
  %sub.ptr.rhs.cast3541 = ptrtoint i8* %2641 to i64, !dbg !1733
  %sub.ptr.sub3542 = sub i64 %sub.ptr.lhs.cast3540, %sub.ptr.rhs.cast3541, !dbg !1733
  store i64 %sub.ptr.sub3542, i64* %retval, !dbg !1733
  br label %do.end3744, !dbg !1733

if.end3544:                                       ; preds = %if.end3526, %if.then3496
  store i8* null, i8** %header_value_mark, align 8, !dbg !1733
  br label %do.body3547, !dbg !1733

do.body3547:                                      ; preds = %if.end3544, %cond.end3494
  %2642 = load %struct.http_parser** %parser.addr, align 8, !dbg !1735
  %2643 = bitcast %struct.http_parser* %2642 to i8*, !dbg !1735
  %bf.field.offs3548 = getelementptr i8* %2643, i32 20, !dbg !1735
  %2644 = bitcast i8* %bf.field.offs3548 to i32*, !dbg !1735
  %2645 = load i32* %2644, align 4, !dbg !1735
  %int_cast_to_i64223 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64223), !dbg !1735
  %2646 = lshr i32 %2645, 24, !dbg !1735
  %bf.clear3549 = and i32 %2646, 127, !dbg !1735
  %cmp3550 = icmp eq i32 %bf.clear3549, 0, !dbg !1735
  br i1 %cmp3550, label %cond.end3554, label %cond.false3553, !dbg !1735

cond.false3553:                                   ; preds = %do.body3547
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2066, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !1735

cond.end3554:                                     ; preds = %do.body3547
  %2647 = load i8** %url_mark, align 8, !dbg !1735
  %tobool3555 = icmp ne i8* %2647, null, !dbg !1735
  br i1 %tobool3555, label %if.then3556, label %do.body3607, !dbg !1735

if.then3556:                                      ; preds = %cond.end3554
  %2648 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1737
  %on_url3557 = getelementptr inbounds %struct.http_parser_settings* %2648, i32 0, i32 1, !dbg !1737
  %2649 = load i32 (%struct.http_parser*, i8*, i64)** %on_url3557, align 8, !dbg !1737
  %tobool3558 = icmp ne i32 (%struct.http_parser*, i8*, i64)* %2649, null, !dbg !1737
  %lnot3559 = xor i1 %tobool3558, true, !dbg !1737
  %lnot3561 = xor i1 %lnot3559, true, !dbg !1737
  %lnot.ext3562 = zext i1 %lnot3561 to i32, !dbg !1737
  %conv3563 = sext i32 %lnot.ext3562 to i64, !dbg !1737
  %tobool3565 = icmp ne i64 %conv3563, 0, !dbg !1737
  br i1 %tobool3565, label %if.then3566, label %if.end3604, !dbg !1737

if.then3566:                                      ; preds = %if.then3556
  %2650 = load i32* %p_state, align 4, !dbg !1739
  %2651 = load %struct.http_parser** %parser.addr, align 8, !dbg !1739
  %bf.value3567 = and i32 %2650, 127, !dbg !1739
  %2652 = bitcast %struct.http_parser* %2651 to i32*, !dbg !1739
  %2653 = and i32 %bf.value3567, 127, !dbg !1739
  %int_cast_to_i64224 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64224), !dbg !1739
  %2654 = shl i32 %2653, 9, !dbg !1739
  %2655 = load i32* %2652, align 8, !dbg !1739
  %2656 = and i32 %2655, -65025, !dbg !1739
  %2657 = or i32 %2656, %2654, !dbg !1739
  store i32 %2657, i32* %2652, align 8, !dbg !1739
  %2658 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1739
  %on_url3568 = getelementptr inbounds %struct.http_parser_settings* %2658, i32 0, i32 1, !dbg !1739
  %2659 = load i32 (%struct.http_parser*, i8*, i64)** %on_url3568, align 8, !dbg !1739
  %2660 = load %struct.http_parser** %parser.addr, align 8, !dbg !1739
  %2661 = load i8** %url_mark, align 8, !dbg !1739
  %2662 = load i8** %p, align 8, !dbg !1739
  %2663 = load i8** %url_mark, align 8, !dbg !1739
  %sub.ptr.lhs.cast3569 = ptrtoint i8* %2662 to i64, !dbg !1739
  %sub.ptr.rhs.cast3570 = ptrtoint i8* %2663 to i64, !dbg !1739
  %sub.ptr.sub3571 = sub i64 %sub.ptr.lhs.cast3569, %sub.ptr.rhs.cast3570, !dbg !1739
  %call3572 = call i32 %2659(%struct.http_parser* %2660, i8* %2661, i64 %sub.ptr.sub3571), !dbg !1739
  %cmp3573 = icmp ne i32 0, %call3572, !dbg !1739
  %lnot3575 = xor i1 %cmp3573, true, !dbg !1739
  %lnot3577 = xor i1 %lnot3575, true, !dbg !1739
  %lnot.ext3578 = zext i1 %lnot3577 to i32, !dbg !1739
  %conv3579 = sext i32 %lnot.ext3578 to i64, !dbg !1739
  %tobool3581 = icmp ne i64 %conv3579, 0, !dbg !1739
  br i1 %tobool3581, label %do.body3583, label %if.end3586, !dbg !1739

do.body3583:                                      ; preds = %if.then3566
  %2664 = load %struct.http_parser** %parser.addr, align 8, !dbg !1741
  %2665 = bitcast %struct.http_parser* %2664 to i8*, !dbg !1741
  %bf.field.offs3584 = getelementptr i8* %2665, i32 20, !dbg !1741
  %2666 = bitcast i8* %bf.field.offs3584 to i32*, !dbg !1741
  %2667 = load i32* %2666, align 4, !dbg !1741
  %2668 = and i32 %2667, -2130706433, !dbg !1741
  %2669 = or i32 %2668, 33554432, !dbg !1741
  store i32 %2669, i32* %2666, align 4, !dbg !1741
  br label %if.end3586, !dbg !1741

if.end3586:                                       ; preds = %do.body3583, %if.then3566
  %2670 = load %struct.http_parser** %parser.addr, align 8, !dbg !1741
  %2671 = bitcast %struct.http_parser* %2670 to i32*, !dbg !1741
  %2672 = load i32* %2671, align 8, !dbg !1741
  %int_cast_to_i64225 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64225), !dbg !1741
  %2673 = lshr i32 %2672, 9, !dbg !1741
  %bf.clear3587 = and i32 %2673, 127, !dbg !1741
  store i32 %bf.clear3587, i32* %p_state, align 4, !dbg !1741
  %2674 = load %struct.http_parser** %parser.addr, align 8, !dbg !1741
  %2675 = bitcast %struct.http_parser* %2674 to i8*, !dbg !1741
  %bf.field.offs3588 = getelementptr i8* %2675, i32 20, !dbg !1741
  %2676 = bitcast i8* %bf.field.offs3588 to i32*, !dbg !1741
  %2677 = load i32* %2676, align 4, !dbg !1741
  %int_cast_to_i64226 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64226), !dbg !1741
  %2678 = lshr i32 %2677, 24, !dbg !1741
  %bf.clear3589 = and i32 %2678, 127, !dbg !1741
  %cmp3590 = icmp ne i32 %bf.clear3589, 0, !dbg !1741
  %lnot3592 = xor i1 %cmp3590, true, !dbg !1741
  %lnot3594 = xor i1 %lnot3592, true, !dbg !1741
  %lnot.ext3595 = zext i1 %lnot3594 to i32, !dbg !1741
  %conv3596 = sext i32 %lnot.ext3595 to i64, !dbg !1741
  %tobool3598 = icmp ne i64 %conv3596, 0, !dbg !1741
  br i1 %tobool3598, label %if.then3599, label %if.end3604, !dbg !1741

if.then3599:                                      ; preds = %if.end3586
  %2679 = load i8** %p, align 8, !dbg !1744
  %2680 = load i8** %data.addr, align 8, !dbg !1744
  %sub.ptr.lhs.cast3600 = ptrtoint i8* %2679 to i64, !dbg !1744
  %sub.ptr.rhs.cast3601 = ptrtoint i8* %2680 to i64, !dbg !1744
  %sub.ptr.sub3602 = sub i64 %sub.ptr.lhs.cast3600, %sub.ptr.rhs.cast3601, !dbg !1744
  store i64 %sub.ptr.sub3602, i64* %retval, !dbg !1744
  br label %do.end3744, !dbg !1744

if.end3604:                                       ; preds = %if.end3586, %if.then3556
  store i8* null, i8** %url_mark, align 8, !dbg !1744
  br label %do.body3607, !dbg !1744

do.body3607:                                      ; preds = %if.end3604, %cond.end3554
  %2681 = load %struct.http_parser** %parser.addr, align 8, !dbg !1746
  %2682 = bitcast %struct.http_parser* %2681 to i8*, !dbg !1746
  %bf.field.offs3608 = getelementptr i8* %2682, i32 20, !dbg !1746
  %2683 = bitcast i8* %bf.field.offs3608 to i32*, !dbg !1746
  %2684 = load i32* %2683, align 4, !dbg !1746
  %int_cast_to_i64227 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64227), !dbg !1746
  %2685 = lshr i32 %2684, 24, !dbg !1746
  %bf.clear3609 = and i32 %2685, 127, !dbg !1746
  %cmp3610 = icmp eq i32 %bf.clear3609, 0, !dbg !1746
  br i1 %cmp3610, label %cond.end3614, label %cond.false3613, !dbg !1746

cond.false3613:                                   ; preds = %do.body3607
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2067, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !1746

cond.end3614:                                     ; preds = %do.body3607
  %2686 = load i8** %body_mark, align 8, !dbg !1746
  %tobool3615 = icmp ne i8* %2686, null, !dbg !1746
  br i1 %tobool3615, label %if.then3616, label %do.body3667, !dbg !1746

if.then3616:                                      ; preds = %cond.end3614
  %2687 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1748
  %on_body3617 = getelementptr inbounds %struct.http_parser_settings* %2687, i32 0, i32 6, !dbg !1748
  %2688 = load i32 (%struct.http_parser*, i8*, i64)** %on_body3617, align 8, !dbg !1748
  %tobool3618 = icmp ne i32 (%struct.http_parser*, i8*, i64)* %2688, null, !dbg !1748
  %lnot3619 = xor i1 %tobool3618, true, !dbg !1748
  %lnot3621 = xor i1 %lnot3619, true, !dbg !1748
  %lnot.ext3622 = zext i1 %lnot3621 to i32, !dbg !1748
  %conv3623 = sext i32 %lnot.ext3622 to i64, !dbg !1748
  %tobool3625 = icmp ne i64 %conv3623, 0, !dbg !1748
  br i1 %tobool3625, label %if.then3626, label %if.end3664, !dbg !1748

if.then3626:                                      ; preds = %if.then3616
  %2689 = load i32* %p_state, align 4, !dbg !1750
  %2690 = load %struct.http_parser** %parser.addr, align 8, !dbg !1750
  %bf.value3627 = and i32 %2689, 127, !dbg !1750
  %2691 = bitcast %struct.http_parser* %2690 to i32*, !dbg !1750
  %2692 = and i32 %bf.value3627, 127, !dbg !1750
  %int_cast_to_i64228 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64228), !dbg !1750
  %2693 = shl i32 %2692, 9, !dbg !1750
  %2694 = load i32* %2691, align 8, !dbg !1750
  %2695 = and i32 %2694, -65025, !dbg !1750
  %2696 = or i32 %2695, %2693, !dbg !1750
  store i32 %2696, i32* %2691, align 8, !dbg !1750
  %2697 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1750
  %on_body3628 = getelementptr inbounds %struct.http_parser_settings* %2697, i32 0, i32 6, !dbg !1750
  %2698 = load i32 (%struct.http_parser*, i8*, i64)** %on_body3628, align 8, !dbg !1750
  %2699 = load %struct.http_parser** %parser.addr, align 8, !dbg !1750
  %2700 = load i8** %body_mark, align 8, !dbg !1750
  %2701 = load i8** %p, align 8, !dbg !1750
  %2702 = load i8** %body_mark, align 8, !dbg !1750
  %sub.ptr.lhs.cast3629 = ptrtoint i8* %2701 to i64, !dbg !1750
  %sub.ptr.rhs.cast3630 = ptrtoint i8* %2702 to i64, !dbg !1750
  %sub.ptr.sub3631 = sub i64 %sub.ptr.lhs.cast3629, %sub.ptr.rhs.cast3630, !dbg !1750
  %call3632 = call i32 %2698(%struct.http_parser* %2699, i8* %2700, i64 %sub.ptr.sub3631), !dbg !1750
  %cmp3633 = icmp ne i32 0, %call3632, !dbg !1750
  %lnot3635 = xor i1 %cmp3633, true, !dbg !1750
  %lnot3637 = xor i1 %lnot3635, true, !dbg !1750
  %lnot.ext3638 = zext i1 %lnot3637 to i32, !dbg !1750
  %conv3639 = sext i32 %lnot.ext3638 to i64, !dbg !1750
  %tobool3641 = icmp ne i64 %conv3639, 0, !dbg !1750
  br i1 %tobool3641, label %do.body3643, label %if.end3646, !dbg !1750

do.body3643:                                      ; preds = %if.then3626
  %2703 = load %struct.http_parser** %parser.addr, align 8, !dbg !1752
  %2704 = bitcast %struct.http_parser* %2703 to i8*, !dbg !1752
  %bf.field.offs3644 = getelementptr i8* %2704, i32 20, !dbg !1752
  %2705 = bitcast i8* %bf.field.offs3644 to i32*, !dbg !1752
  %2706 = load i32* %2705, align 4, !dbg !1752
  %2707 = and i32 %2706, -2130706433, !dbg !1752
  %2708 = or i32 %2707, 100663296, !dbg !1752
  store i32 %2708, i32* %2705, align 4, !dbg !1752
  br label %if.end3646, !dbg !1752

if.end3646:                                       ; preds = %do.body3643, %if.then3626
  %2709 = load %struct.http_parser** %parser.addr, align 8, !dbg !1752
  %2710 = bitcast %struct.http_parser* %2709 to i32*, !dbg !1752
  %2711 = load i32* %2710, align 8, !dbg !1752
  %int_cast_to_i64229 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64229), !dbg !1752
  %2712 = lshr i32 %2711, 9, !dbg !1752
  %bf.clear3647 = and i32 %2712, 127, !dbg !1752
  store i32 %bf.clear3647, i32* %p_state, align 4, !dbg !1752
  %2713 = load %struct.http_parser** %parser.addr, align 8, !dbg !1752
  %2714 = bitcast %struct.http_parser* %2713 to i8*, !dbg !1752
  %bf.field.offs3648 = getelementptr i8* %2714, i32 20, !dbg !1752
  %2715 = bitcast i8* %bf.field.offs3648 to i32*, !dbg !1752
  %2716 = load i32* %2715, align 4, !dbg !1752
  %int_cast_to_i64230 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64230), !dbg !1752
  %2717 = lshr i32 %2716, 24, !dbg !1752
  %bf.clear3649 = and i32 %2717, 127, !dbg !1752
  %cmp3650 = icmp ne i32 %bf.clear3649, 0, !dbg !1752
  %lnot3652 = xor i1 %cmp3650, true, !dbg !1752
  %lnot3654 = xor i1 %lnot3652, true, !dbg !1752
  %lnot.ext3655 = zext i1 %lnot3654 to i32, !dbg !1752
  %conv3656 = sext i32 %lnot.ext3655 to i64, !dbg !1752
  %tobool3658 = icmp ne i64 %conv3656, 0, !dbg !1752
  br i1 %tobool3658, label %if.then3659, label %if.end3664, !dbg !1752

if.then3659:                                      ; preds = %if.end3646
  %2718 = load i8** %p, align 8, !dbg !1755
  %2719 = load i8** %data.addr, align 8, !dbg !1755
  %sub.ptr.lhs.cast3660 = ptrtoint i8* %2718 to i64, !dbg !1755
  %sub.ptr.rhs.cast3661 = ptrtoint i8* %2719 to i64, !dbg !1755
  %sub.ptr.sub3662 = sub i64 %sub.ptr.lhs.cast3660, %sub.ptr.rhs.cast3661, !dbg !1755
  store i64 %sub.ptr.sub3662, i64* %retval, !dbg !1755
  br label %do.end3744, !dbg !1755

if.end3664:                                       ; preds = %if.end3646, %if.then3616
  store i8* null, i8** %body_mark, align 8, !dbg !1755
  br label %do.body3667, !dbg !1755

do.body3667:                                      ; preds = %if.end3664, %cond.end3614
  %2720 = load %struct.http_parser** %parser.addr, align 8, !dbg !1757
  %2721 = bitcast %struct.http_parser* %2720 to i8*, !dbg !1757
  %bf.field.offs3668 = getelementptr i8* %2721, i32 20, !dbg !1757
  %2722 = bitcast i8* %bf.field.offs3668 to i32*, !dbg !1757
  %2723 = load i32* %2722, align 4, !dbg !1757
  %int_cast_to_i64231 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64231), !dbg !1757
  %2724 = lshr i32 %2723, 24, !dbg !1757
  %bf.clear3669 = and i32 %2724, 127, !dbg !1757
  %cmp3670 = icmp eq i32 %bf.clear3669, 0, !dbg !1757
  br i1 %cmp3670, label %cond.end3674, label %cond.false3673, !dbg !1757

cond.false3673:                                   ; preds = %do.body3667
  call void @__assert_fail(i8* getelementptr inbounds ([51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2068, i8* getelementptr inbounds ([94 x i8]* @__PRETTY_FUNCTION__.http_parser_execute, i32 0, i32 0)
  unreachable, !dbg !1757

cond.end3674:                                     ; preds = %do.body3667
  %2725 = load i8** %status_mark, align 8, !dbg !1757
  %tobool3675 = icmp ne i8* %2725, null, !dbg !1757
  br i1 %tobool3675, label %if.then3676, label %do.body3727, !dbg !1757

if.then3676:                                      ; preds = %cond.end3674
  %2726 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1759
  %on_status3677 = getelementptr inbounds %struct.http_parser_settings* %2726, i32 0, i32 2, !dbg !1759
  %2727 = load i32 (%struct.http_parser*, i8*, i64)** %on_status3677, align 8, !dbg !1759
  %tobool3678 = icmp ne i32 (%struct.http_parser*, i8*, i64)* %2727, null, !dbg !1759
  %lnot3679 = xor i1 %tobool3678, true, !dbg !1759
  %lnot3681 = xor i1 %lnot3679, true, !dbg !1759
  %lnot.ext3682 = zext i1 %lnot3681 to i32, !dbg !1759
  %conv3683 = sext i32 %lnot.ext3682 to i64, !dbg !1759
  %tobool3685 = icmp ne i64 %conv3683, 0, !dbg !1759
  br i1 %tobool3685, label %if.then3686, label %if.end3724, !dbg !1759

if.then3686:                                      ; preds = %if.then3676
  %2728 = load i32* %p_state, align 4, !dbg !1761
  %2729 = load %struct.http_parser** %parser.addr, align 8, !dbg !1761
  %bf.value3687 = and i32 %2728, 127, !dbg !1761
  %2730 = bitcast %struct.http_parser* %2729 to i32*, !dbg !1761
  %2731 = and i32 %bf.value3687, 127, !dbg !1761
  %int_cast_to_i64232 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64232), !dbg !1761
  %2732 = shl i32 %2731, 9, !dbg !1761
  %2733 = load i32* %2730, align 8, !dbg !1761
  %2734 = and i32 %2733, -65025, !dbg !1761
  %2735 = or i32 %2734, %2732, !dbg !1761
  store i32 %2735, i32* %2730, align 8, !dbg !1761
  %2736 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1761
  %on_status3688 = getelementptr inbounds %struct.http_parser_settings* %2736, i32 0, i32 2, !dbg !1761
  %2737 = load i32 (%struct.http_parser*, i8*, i64)** %on_status3688, align 8, !dbg !1761
  %2738 = load %struct.http_parser** %parser.addr, align 8, !dbg !1761
  %2739 = load i8** %status_mark, align 8, !dbg !1761
  %2740 = load i8** %p, align 8, !dbg !1761
  %2741 = load i8** %status_mark, align 8, !dbg !1761
  %sub.ptr.lhs.cast3689 = ptrtoint i8* %2740 to i64, !dbg !1761
  %sub.ptr.rhs.cast3690 = ptrtoint i8* %2741 to i64, !dbg !1761
  %sub.ptr.sub3691 = sub i64 %sub.ptr.lhs.cast3689, %sub.ptr.rhs.cast3690, !dbg !1761
  %call3692 = call i32 %2737(%struct.http_parser* %2738, i8* %2739, i64 %sub.ptr.sub3691), !dbg !1761
  %cmp3693 = icmp ne i32 0, %call3692, !dbg !1761
  %lnot3695 = xor i1 %cmp3693, true, !dbg !1761
  %lnot3697 = xor i1 %lnot3695, true, !dbg !1761
  %lnot.ext3698 = zext i1 %lnot3697 to i32, !dbg !1761
  %conv3699 = sext i32 %lnot.ext3698 to i64, !dbg !1761
  %tobool3701 = icmp ne i64 %conv3699, 0, !dbg !1761
  br i1 %tobool3701, label %do.body3703, label %if.end3706, !dbg !1761

do.body3703:                                      ; preds = %if.then3686
  %2742 = load %struct.http_parser** %parser.addr, align 8, !dbg !1763
  %2743 = bitcast %struct.http_parser* %2742 to i8*, !dbg !1763
  %bf.field.offs3704 = getelementptr i8* %2743, i32 20, !dbg !1763
  %2744 = bitcast i8* %bf.field.offs3704 to i32*, !dbg !1763
  %2745 = load i32* %2744, align 4, !dbg !1763
  %2746 = and i32 %2745, -2130706433, !dbg !1763
  %2747 = or i32 %2746, 134217728, !dbg !1763
  store i32 %2747, i32* %2744, align 4, !dbg !1763
  br label %if.end3706, !dbg !1763

if.end3706:                                       ; preds = %do.body3703, %if.then3686
  %2748 = load %struct.http_parser** %parser.addr, align 8, !dbg !1763
  %2749 = bitcast %struct.http_parser* %2748 to i32*, !dbg !1763
  %2750 = load i32* %2749, align 8, !dbg !1763
  %int_cast_to_i64233 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64233), !dbg !1763
  %2751 = lshr i32 %2750, 9, !dbg !1763
  %bf.clear3707 = and i32 %2751, 127, !dbg !1763
  store i32 %bf.clear3707, i32* %p_state, align 4, !dbg !1763
  %2752 = load %struct.http_parser** %parser.addr, align 8, !dbg !1763
  %2753 = bitcast %struct.http_parser* %2752 to i8*, !dbg !1763
  %bf.field.offs3708 = getelementptr i8* %2753, i32 20, !dbg !1763
  %2754 = bitcast i8* %bf.field.offs3708 to i32*, !dbg !1763
  %2755 = load i32* %2754, align 4, !dbg !1763
  %int_cast_to_i64234 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64234), !dbg !1763
  %2756 = lshr i32 %2755, 24, !dbg !1763
  %bf.clear3709 = and i32 %2756, 127, !dbg !1763
  %cmp3710 = icmp ne i32 %bf.clear3709, 0, !dbg !1763
  %lnot3712 = xor i1 %cmp3710, true, !dbg !1763
  %lnot3714 = xor i1 %lnot3712, true, !dbg !1763
  %lnot.ext3715 = zext i1 %lnot3714 to i32, !dbg !1763
  %conv3716 = sext i32 %lnot.ext3715 to i64, !dbg !1763
  %tobool3718 = icmp ne i64 %conv3716, 0, !dbg !1763
  br i1 %tobool3718, label %if.then3719, label %if.end3724, !dbg !1763

if.then3719:                                      ; preds = %if.end3706
  %2757 = load i8** %p, align 8, !dbg !1766
  %2758 = load i8** %data.addr, align 8, !dbg !1766
  %sub.ptr.lhs.cast3720 = ptrtoint i8* %2757 to i64, !dbg !1766
  %sub.ptr.rhs.cast3721 = ptrtoint i8* %2758 to i64, !dbg !1766
  %sub.ptr.sub3722 = sub i64 %sub.ptr.lhs.cast3720, %sub.ptr.rhs.cast3721, !dbg !1766
  store i64 %sub.ptr.sub3722, i64* %retval, !dbg !1766
  br label %do.end3744, !dbg !1766

if.end3724:                                       ; preds = %if.end3706, %if.then3676
  store i8* null, i8** %status_mark, align 8, !dbg !1766
  br label %do.body3727, !dbg !1766

do.body3727:                                      ; preds = %if.end3724, %cond.end3674
  %2759 = load i32* %p_state, align 4, !dbg !1768
  %2760 = load %struct.http_parser** %parser.addr, align 8, !dbg !1768
  %bf.value3728 = and i32 %2759, 127, !dbg !1768
  %2761 = bitcast %struct.http_parser* %2760 to i32*, !dbg !1768
  %2762 = and i32 %bf.value3728, 127, !dbg !1768
  %int_cast_to_i64235 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64235), !dbg !1768
  %2763 = shl i32 %2762, 9, !dbg !1768
  %2764 = load i32* %2761, align 8, !dbg !1768
  %2765 = and i32 %2764, -65025, !dbg !1768
  %2766 = or i32 %2765, %2763, !dbg !1768
  store i32 %2766, i32* %2761, align 8, !dbg !1768
  %2767 = load i64* %len.addr, align 8, !dbg !1768
  store i64 %2767, i64* %retval, !dbg !1768
  br label %do.end3744, !dbg !1768

error:                                            ; preds = %do.body3397, %do.body3319, %do.body3238, %do.body3209, %do.body3190, %do.body3156, %do.body2644, %do.body2519, %do.body2414, %do.body2374, %do.body2357, %do.body2144, %do.body2122, %do.body1987
  %2768 = load %struct.http_parser** %parser.addr, align 8, !dbg !1770
  %2769 = bitcast %struct.http_parser* %2768 to i8*, !dbg !1770
  %bf.field.offs3730 = getelementptr i8* %2769, i32 20, !dbg !1770
  %2770 = bitcast i8* %bf.field.offs3730 to i32*, !dbg !1770
  %2771 = load i32* %2770, align 4, !dbg !1770
  %int_cast_to_i64236 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64236), !dbg !1770
  %2772 = lshr i32 %2771, 24, !dbg !1770
  %bf.clear3731 = and i32 %2772, 127, !dbg !1770
  %cmp3732 = icmp eq i32 %bf.clear3731, 0, !dbg !1770
  br i1 %cmp3732, label %do.body3735, label %do.body3739, !dbg !1770

do.body3735:                                      ; preds = %error
  %2773 = load %struct.http_parser** %parser.addr, align 8, !dbg !1771
  %2774 = bitcast %struct.http_parser* %2773 to i8*, !dbg !1771
  %bf.field.offs3736 = getelementptr i8* %2774, i32 20, !dbg !1771
  %2775 = bitcast i8* %bf.field.offs3736 to i32*, !dbg !1771
  %2776 = load i32* %2775, align 4, !dbg !1771
  %2777 = and i32 %2776, -2130706433, !dbg !1771
  %2778 = or i32 %2777, 486539264, !dbg !1771
  store i32 %2778, i32* %2775, align 4, !dbg !1771
  br label %do.body3739, !dbg !1774

do.body3739:                                      ; preds = %error, %do.body3735
  %2779 = load i32* %p_state, align 4, !dbg !1775
  %2780 = load %struct.http_parser** %parser.addr, align 8, !dbg !1775
  %bf.value3740 = and i32 %2779, 127, !dbg !1775
  %2781 = bitcast %struct.http_parser* %2780 to i32*, !dbg !1775
  %2782 = and i32 %bf.value3740, 127, !dbg !1775
  %int_cast_to_i64237 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64237), !dbg !1775
  %2783 = shl i32 %2782, 9, !dbg !1775
  %2784 = load i32* %2781, align 8, !dbg !1775
  %2785 = and i32 %2784, -65025, !dbg !1775
  %2786 = or i32 %2785, %2783, !dbg !1775
  store i32 %2786, i32* %2781, align 8, !dbg !1775
  %2787 = load i8** %p, align 8, !dbg !1775
  %2788 = load i8** %data.addr, align 8, !dbg !1775
  %sub.ptr.lhs.cast3741 = ptrtoint i8* %2787 to i64, !dbg !1775
  %sub.ptr.rhs.cast3742 = ptrtoint i8* %2788 to i64, !dbg !1775
  %sub.ptr.sub3743 = sub i64 %sub.ptr.lhs.cast3741, %sub.ptr.rhs.cast3742, !dbg !1775
  store i64 %sub.ptr.sub3743, i64* %retval, !dbg !1775
  br label %do.end3744, !dbg !1775

do.end3744:                                       ; preds = %do.body3739, %do.body3727, %if.then3719, %if.then3659, %if.then3599, %if.then3539, %if.then3479, %if.then3376, %if.then3122, %if.then3047, %if.then2941, %if.then2863, %if.then2788, %do.body2719
  %2789 = load i64* %retval, !dbg !1777
  ret i64 %2789, !dbg !1777
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @__assert_fail(i8*, i8*, i32, i8*) noreturn nounwind

declare i64 @llvm.expect.i64(i64, i64) nounwind readnone

define internal i32 @parse_url_char(i32 %s, i8 signext %ch) nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %ch.addr = alloca i8, align 1
  store i32 %s, i32* %s.addr, align 4
  store i8 %ch, i8* %ch.addr, align 1
  %0 = load i8* %ch.addr, align 1, !dbg !1778
  %conv = sext i8 %0 to i32, !dbg !1778
  %cmp = icmp eq i32 %conv, 32, !dbg !1778
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1778

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8* %ch.addr, align 1, !dbg !1778
  %conv2 = sext i8 %1 to i32, !dbg !1778
  %cmp3 = icmp eq i32 %conv2, 13, !dbg !1778
  br i1 %cmp3, label %if.then, label %lor.lhs.false5, !dbg !1778

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load i8* %ch.addr, align 1, !dbg !1778
  %conv6 = sext i8 %2 to i32, !dbg !1778
  %cmp7 = icmp eq i32 %conv6, 10, !dbg !1778
  br i1 %cmp7, label %if.then, label %if.end, !dbg !1778

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false, %entry
  store i32 1, i32* %retval, !dbg !1780
  br label %return, !dbg !1780

if.end:                                           ; preds = %lor.lhs.false5
  %3 = load i8* %ch.addr, align 1, !dbg !1782
  %conv9 = sext i8 %3 to i32, !dbg !1782
  %cmp10 = icmp eq i32 %conv9, 9, !dbg !1782
  br i1 %cmp10, label %if.then16, label %lor.lhs.false12, !dbg !1782

lor.lhs.false12:                                  ; preds = %if.end
  %4 = load i8* %ch.addr, align 1, !dbg !1782
  %conv13 = sext i8 %4 to i32, !dbg !1782
  %cmp14 = icmp eq i32 %conv13, 12, !dbg !1782
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1782

if.then16:                                        ; preds = %lor.lhs.false12, %if.end
  store i32 1, i32* %retval, !dbg !1783
  br label %return, !dbg !1783

if.end17:                                         ; preds = %lor.lhs.false12
  %5 = load i32* %s.addr, align 4, !dbg !1785
  switch i32 %5, label %sw.epilog254 [
    i32 20, label %sw.bb
    i32 21, label %sw.bb40
    i32 22, label %sw.bb61
    i32 23, label %sw.bb67
    i32 26, label %sw.bb73
    i32 24, label %sw.bb79
    i32 25, label %sw.bb79
    i32 27, label %sw.bb194
    i32 28, label %sw.bb204
    i32 29, label %sw.bb204
    i32 30, label %sw.bb221
    i32 31, label %sw.bb238
  ], !dbg !1785

sw.bb:                                            ; preds = %if.end17
  %6 = load i8* %ch.addr, align 1, !dbg !1786
  %conv18 = sext i8 %6 to i32, !dbg !1786
  %cmp19 = icmp eq i32 %conv18, 47, !dbg !1786
  br i1 %cmp19, label %if.then25, label %lor.lhs.false21, !dbg !1786

lor.lhs.false21:                                  ; preds = %sw.bb
  %7 = load i8* %ch.addr, align 1, !dbg !1786
  %conv22 = sext i8 %7 to i32, !dbg !1786
  %cmp23 = icmp eq i32 %conv22, 42, !dbg !1786
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !1786

if.then25:                                        ; preds = %lor.lhs.false21, %sw.bb
  store i32 27, i32* %retval, !dbg !1788
  br label %return, !dbg !1788

if.end26:                                         ; preds = %lor.lhs.false21
  %8 = load i8* %ch.addr, align 1, !dbg !1790
  %conv27 = sext i8 %8 to i32, !dbg !1790
  %or = or i32 %conv27, 32, !dbg !1790
  %conv28 = trunc i32 %or to i8, !dbg !1790
  %conv29 = zext i8 %conv28 to i32, !dbg !1790
  %cmp30 = icmp sge i32 %conv29, 97, !dbg !1790
  br i1 %cmp30, label %land.lhs.true, label %sw.epilog254, !dbg !1790

land.lhs.true:                                    ; preds = %if.end26
  %9 = load i8* %ch.addr, align 1, !dbg !1790
  %conv32 = sext i8 %9 to i32, !dbg !1790
  %or33 = or i32 %conv32, 32, !dbg !1790
  %conv34 = trunc i32 %or33 to i8, !dbg !1790
  %conv35 = zext i8 %conv34 to i32, !dbg !1790
  %cmp36 = icmp sle i32 %conv35, 122, !dbg !1790
  br i1 %cmp36, label %if.then38, label %sw.epilog254, !dbg !1790

if.then38:                                        ; preds = %land.lhs.true
  store i32 21, i32* %retval, !dbg !1791
  br label %return, !dbg !1791

sw.bb40:                                          ; preds = %if.end17
  %10 = load i8* %ch.addr, align 1, !dbg !1793
  %conv41 = sext i8 %10 to i32, !dbg !1793
  %or42 = or i32 %conv41, 32, !dbg !1793
  %conv43 = trunc i32 %or42 to i8, !dbg !1793
  %conv44 = zext i8 %conv43 to i32, !dbg !1793
  %cmp45 = icmp sge i32 %conv44, 97, !dbg !1793
  br i1 %cmp45, label %land.lhs.true47, label %if.end55, !dbg !1793

land.lhs.true47:                                  ; preds = %sw.bb40
  %11 = load i8* %ch.addr, align 1, !dbg !1793
  %conv48 = sext i8 %11 to i32, !dbg !1793
  %or49 = or i32 %conv48, 32, !dbg !1793
  %conv50 = trunc i32 %or49 to i8, !dbg !1793
  %conv51 = zext i8 %conv50 to i32, !dbg !1793
  %cmp52 = icmp sle i32 %conv51, 122, !dbg !1793
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !1793

if.then54:                                        ; preds = %land.lhs.true47
  %12 = load i32* %s.addr, align 4, !dbg !1794
  store i32 %12, i32* %retval, !dbg !1794
  br label %return, !dbg !1794

if.end55:                                         ; preds = %land.lhs.true47, %sw.bb40
  %13 = load i8* %ch.addr, align 1, !dbg !1796
  %conv56 = sext i8 %13 to i32, !dbg !1796
  %cmp57 = icmp eq i32 %conv56, 58, !dbg !1796
  br i1 %cmp57, label %if.then59, label %sw.epilog254, !dbg !1796

if.then59:                                        ; preds = %if.end55
  store i32 22, i32* %retval, !dbg !1797
  br label %return, !dbg !1797

sw.bb61:                                          ; preds = %if.end17
  %14 = load i8* %ch.addr, align 1, !dbg !1799
  %conv62 = sext i8 %14 to i32, !dbg !1799
  %cmp63 = icmp eq i32 %conv62, 47, !dbg !1799
  br i1 %cmp63, label %if.then65, label %sw.epilog254, !dbg !1799

if.then65:                                        ; preds = %sw.bb61
  store i32 23, i32* %retval, !dbg !1800
  br label %return, !dbg !1800

sw.bb67:                                          ; preds = %if.end17
  %15 = load i8* %ch.addr, align 1, !dbg !1802
  %conv68 = sext i8 %15 to i32, !dbg !1802
  %cmp69 = icmp eq i32 %conv68, 47, !dbg !1802
  br i1 %cmp69, label %if.then71, label %sw.epilog254, !dbg !1802

if.then71:                                        ; preds = %sw.bb67
  store i32 24, i32* %retval, !dbg !1803
  br label %return, !dbg !1803

sw.bb73:                                          ; preds = %if.end17
  %16 = load i8* %ch.addr, align 1, !dbg !1805
  %conv74 = sext i8 %16 to i32, !dbg !1805
  %cmp75 = icmp eq i32 %conv74, 64, !dbg !1805
  br i1 %cmp75, label %if.then77, label %sw.bb79, !dbg !1805

if.then77:                                        ; preds = %sw.bb73
  store i32 1, i32* %retval, !dbg !1806
  br label %return, !dbg !1806

sw.bb79:                                          ; preds = %sw.bb73, %if.end17, %if.end17
  %17 = load i8* %ch.addr, align 1, !dbg !1808
  %conv80 = sext i8 %17 to i32, !dbg !1808
  %cmp81 = icmp eq i32 %conv80, 47, !dbg !1808
  br i1 %cmp81, label %if.then83, label %if.end84, !dbg !1808

if.then83:                                        ; preds = %sw.bb79
  store i32 27, i32* %retval, !dbg !1809
  br label %return, !dbg !1809

if.end84:                                         ; preds = %sw.bb79
  %18 = load i8* %ch.addr, align 1, !dbg !1811
  %conv85 = sext i8 %18 to i32, !dbg !1811
  %cmp86 = icmp eq i32 %conv85, 63, !dbg !1811
  br i1 %cmp86, label %if.then88, label %if.end89, !dbg !1811

if.then88:                                        ; preds = %if.end84
  store i32 28, i32* %retval, !dbg !1812
  br label %return, !dbg !1812

if.end89:                                         ; preds = %if.end84
  %19 = load i8* %ch.addr, align 1, !dbg !1814
  %conv90 = sext i8 %19 to i32, !dbg !1814
  %cmp91 = icmp eq i32 %conv90, 64, !dbg !1814
  br i1 %cmp91, label %if.then93, label %if.end94, !dbg !1814

if.then93:                                        ; preds = %if.end89
  store i32 26, i32* %retval, !dbg !1815
  br label %return, !dbg !1815

if.end94:                                         ; preds = %if.end89
  %20 = load i8* %ch.addr, align 1, !dbg !1817
  %conv95 = sext i8 %20 to i32, !dbg !1817
  %or96 = or i32 %conv95, 32, !dbg !1817
  %conv97 = trunc i32 %or96 to i8, !dbg !1817
  %conv98 = zext i8 %conv97 to i32, !dbg !1817
  %cmp99 = icmp sge i32 %conv98, 97, !dbg !1817
  br i1 %cmp99, label %land.lhs.true101, label %lor.lhs.false108, !dbg !1817

land.lhs.true101:                                 ; preds = %if.end94
  %21 = load i8* %ch.addr, align 1, !dbg !1817
  %conv102 = sext i8 %21 to i32, !dbg !1817
  %or103 = or i32 %conv102, 32, !dbg !1817
  %conv104 = trunc i32 %or103 to i8, !dbg !1817
  %conv105 = zext i8 %conv104 to i32, !dbg !1817
  %cmp106 = icmp sle i32 %conv105, 122, !dbg !1817
  br i1 %cmp106, label %if.then192, label %lor.lhs.false108, !dbg !1817

lor.lhs.false108:                                 ; preds = %land.lhs.true101, %if.end94
  %22 = load i8* %ch.addr, align 1, !dbg !1817
  %conv109 = sext i8 %22 to i32, !dbg !1817
  %cmp110 = icmp sge i32 %conv109, 48, !dbg !1817
  br i1 %cmp110, label %land.lhs.true112, label %lor.lhs.false116, !dbg !1817

land.lhs.true112:                                 ; preds = %lor.lhs.false108
  %23 = load i8* %ch.addr, align 1, !dbg !1817
  %conv113 = sext i8 %23 to i32, !dbg !1817
  %cmp114 = icmp sle i32 %conv113, 57, !dbg !1817
  br i1 %cmp114, label %if.then192, label %lor.lhs.false116, !dbg !1817

lor.lhs.false116:                                 ; preds = %land.lhs.true112, %lor.lhs.false108
  %24 = load i8* %ch.addr, align 1, !dbg !1817
  %conv117 = sext i8 %24 to i32, !dbg !1817
  %cmp118 = icmp eq i32 %conv117, 45, !dbg !1817
  br i1 %cmp118, label %if.then192, label %lor.lhs.false120, !dbg !1817

lor.lhs.false120:                                 ; preds = %lor.lhs.false116
  %25 = load i8* %ch.addr, align 1, !dbg !1817
  %conv121 = sext i8 %25 to i32, !dbg !1817
  %cmp122 = icmp eq i32 %conv121, 95, !dbg !1817
  br i1 %cmp122, label %if.then192, label %lor.lhs.false124, !dbg !1817

lor.lhs.false124:                                 ; preds = %lor.lhs.false120
  %26 = load i8* %ch.addr, align 1, !dbg !1817
  %conv125 = sext i8 %26 to i32, !dbg !1817
  %cmp126 = icmp eq i32 %conv125, 46, !dbg !1817
  br i1 %cmp126, label %if.then192, label %lor.lhs.false128, !dbg !1817

lor.lhs.false128:                                 ; preds = %lor.lhs.false124
  %27 = load i8* %ch.addr, align 1, !dbg !1817
  %conv129 = sext i8 %27 to i32, !dbg !1817
  %cmp130 = icmp eq i32 %conv129, 33, !dbg !1817
  br i1 %cmp130, label %if.then192, label %lor.lhs.false132, !dbg !1817

lor.lhs.false132:                                 ; preds = %lor.lhs.false128
  %28 = load i8* %ch.addr, align 1, !dbg !1817
  %conv133 = sext i8 %28 to i32, !dbg !1817
  %cmp134 = icmp eq i32 %conv133, 126, !dbg !1817
  br i1 %cmp134, label %if.then192, label %lor.lhs.false136, !dbg !1817

lor.lhs.false136:                                 ; preds = %lor.lhs.false132
  %29 = load i8* %ch.addr, align 1, !dbg !1817
  %conv137 = sext i8 %29 to i32, !dbg !1817
  %cmp138 = icmp eq i32 %conv137, 42, !dbg !1817
  br i1 %cmp138, label %if.then192, label %lor.lhs.false140, !dbg !1817

lor.lhs.false140:                                 ; preds = %lor.lhs.false136
  %30 = load i8* %ch.addr, align 1, !dbg !1817
  %conv141 = sext i8 %30 to i32, !dbg !1817
  %cmp142 = icmp eq i32 %conv141, 39, !dbg !1817
  br i1 %cmp142, label %if.then192, label %lor.lhs.false144, !dbg !1817

lor.lhs.false144:                                 ; preds = %lor.lhs.false140
  %31 = load i8* %ch.addr, align 1, !dbg !1817
  %conv145 = sext i8 %31 to i32, !dbg !1817
  %cmp146 = icmp eq i32 %conv145, 40, !dbg !1817
  br i1 %cmp146, label %if.then192, label %lor.lhs.false148, !dbg !1817

lor.lhs.false148:                                 ; preds = %lor.lhs.false144
  %32 = load i8* %ch.addr, align 1, !dbg !1817
  %conv149 = sext i8 %32 to i32, !dbg !1817
  %cmp150 = icmp eq i32 %conv149, 41, !dbg !1817
  br i1 %cmp150, label %if.then192, label %lor.lhs.false152, !dbg !1817

lor.lhs.false152:                                 ; preds = %lor.lhs.false148
  %33 = load i8* %ch.addr, align 1, !dbg !1817
  %conv153 = sext i8 %33 to i32, !dbg !1817
  %cmp154 = icmp eq i32 %conv153, 37, !dbg !1817
  br i1 %cmp154, label %if.then192, label %lor.lhs.false156, !dbg !1817

lor.lhs.false156:                                 ; preds = %lor.lhs.false152
  %34 = load i8* %ch.addr, align 1, !dbg !1817
  %conv157 = sext i8 %34 to i32, !dbg !1817
  %cmp158 = icmp eq i32 %conv157, 59, !dbg !1817
  br i1 %cmp158, label %if.then192, label %lor.lhs.false160, !dbg !1817

lor.lhs.false160:                                 ; preds = %lor.lhs.false156
  %35 = load i8* %ch.addr, align 1, !dbg !1817
  %conv161 = sext i8 %35 to i32, !dbg !1817
  %cmp162 = icmp eq i32 %conv161, 58, !dbg !1817
  br i1 %cmp162, label %if.then192, label %lor.lhs.false164, !dbg !1817

lor.lhs.false164:                                 ; preds = %lor.lhs.false160
  %36 = load i8* %ch.addr, align 1, !dbg !1817
  %conv165 = sext i8 %36 to i32, !dbg !1817
  %cmp166 = icmp eq i32 %conv165, 38, !dbg !1817
  br i1 %cmp166, label %if.then192, label %lor.lhs.false168, !dbg !1817

lor.lhs.false168:                                 ; preds = %lor.lhs.false164
  %37 = load i8* %ch.addr, align 1, !dbg !1817
  %conv169 = sext i8 %37 to i32, !dbg !1817
  %cmp170 = icmp eq i32 %conv169, 61, !dbg !1817
  br i1 %cmp170, label %if.then192, label %lor.lhs.false172, !dbg !1817

lor.lhs.false172:                                 ; preds = %lor.lhs.false168
  %38 = load i8* %ch.addr, align 1, !dbg !1817
  %conv173 = sext i8 %38 to i32, !dbg !1817
  %cmp174 = icmp eq i32 %conv173, 43, !dbg !1817
  br i1 %cmp174, label %if.then192, label %lor.lhs.false176, !dbg !1817

lor.lhs.false176:                                 ; preds = %lor.lhs.false172
  %39 = load i8* %ch.addr, align 1, !dbg !1817
  %conv177 = sext i8 %39 to i32, !dbg !1817
  %cmp178 = icmp eq i32 %conv177, 36, !dbg !1817
  br i1 %cmp178, label %if.then192, label %lor.lhs.false180, !dbg !1817

lor.lhs.false180:                                 ; preds = %lor.lhs.false176
  %40 = load i8* %ch.addr, align 1, !dbg !1817
  %conv181 = sext i8 %40 to i32, !dbg !1817
  %cmp182 = icmp eq i32 %conv181, 44, !dbg !1817
  br i1 %cmp182, label %if.then192, label %lor.lhs.false184, !dbg !1817

lor.lhs.false184:                                 ; preds = %lor.lhs.false180
  %41 = load i8* %ch.addr, align 1, !dbg !1817
  %conv185 = sext i8 %41 to i32, !dbg !1817
  %cmp186 = icmp eq i32 %conv185, 91, !dbg !1817
  br i1 %cmp186, label %if.then192, label %lor.lhs.false188, !dbg !1817

lor.lhs.false188:                                 ; preds = %lor.lhs.false184
  %42 = load i8* %ch.addr, align 1, !dbg !1817
  %conv189 = sext i8 %42 to i32, !dbg !1817
  %cmp190 = icmp eq i32 %conv189, 93, !dbg !1817
  br i1 %cmp190, label %if.then192, label %sw.epilog254, !dbg !1817

if.then192:                                       ; preds = %lor.lhs.false188, %lor.lhs.false184, %lor.lhs.false180, %lor.lhs.false176, %lor.lhs.false172, %lor.lhs.false168, %lor.lhs.false164, %lor.lhs.false160, %lor.lhs.false156, %lor.lhs.false152, %lor
  store i32 25, i32* %retval, !dbg !1818
  br label %return, !dbg !1818

sw.bb194:                                         ; preds = %if.end17
  %43 = load i8* %ch.addr, align 1, !dbg !1820
  %conv195 = zext i8 %43 to i32, !dbg !1820
  %int_cast_to_i64 = zext i32 3 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1820
  %shr = lshr i32 %conv195, 3, !dbg !1820
  %idxprom = zext i32 %shr to i64, !dbg !1820
  %arrayidx = getelementptr inbounds [32 x i8]* @normal_url_char, i32 0, i64 %idxprom, !dbg !1820
  %44 = load i8* %arrayidx, align 1, !dbg !1820
  %conv196 = zext i8 %44 to i32, !dbg !1820
  %45 = load i8* %ch.addr, align 1, !dbg !1820
  %conv197 = zext i8 %45 to i32, !dbg !1820
  %and = and i32 %conv197, 7, !dbg !1820
  %int_cast_to_i641 = zext i32 %and to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1820
  %shl = shl i32 1, %and, !dbg !1820
  %and198 = and i32 %conv196, %shl, !dbg !1820
  %tobool = icmp ne i32 %and198, 0, !dbg !1820
  br i1 %tobool, label %if.then199, label %if.end200, !dbg !1820

if.then199:                                       ; preds = %sw.bb194
  %46 = load i32* %s.addr, align 4, !dbg !1821
  store i32 %46, i32* %retval, !dbg !1821
  br label %return, !dbg !1821

if.end200:                                        ; preds = %sw.bb194
  %47 = load i8* %ch.addr, align 1, !dbg !1823
  %conv201 = sext i8 %47 to i32, !dbg !1823
  switch i32 %conv201, label %sw.epilog254 [
    i32 63, label %sw.bb202
    i32 35, label %sw.bb203
  ], !dbg !1823

sw.bb202:                                         ; preds = %if.end200
  store i32 28, i32* %retval, !dbg !1824
  br label %return, !dbg !1824

sw.bb203:                                         ; preds = %if.end200
  store i32 30, i32* %retval, !dbg !1826
  br label %return, !dbg !1826

sw.bb204:                                         ; preds = %if.end17, %if.end17
  %48 = load i8* %ch.addr, align 1, !dbg !1827
  %conv205 = zext i8 %48 to i32, !dbg !1827
  %int_cast_to_i642 = zext i32 3 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i642), !dbg !1827
  %shr206 = lshr i32 %conv205, 3, !dbg !1827
  %idxprom207 = zext i32 %shr206 to i64, !dbg !1827
  %arrayidx208 = getelementptr inbounds [32 x i8]* @normal_url_char, i32 0, i64 %idxprom207, !dbg !1827
  %49 = load i8* %arrayidx208, align 1, !dbg !1827
  %conv209 = zext i8 %49 to i32, !dbg !1827
  %50 = load i8* %ch.addr, align 1, !dbg !1827
  %conv210 = zext i8 %50 to i32, !dbg !1827
  %and211 = and i32 %conv210, 7, !dbg !1827
  %int_cast_to_i643 = zext i32 %and211 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i643), !dbg !1827
  %shl212 = shl i32 1, %and211, !dbg !1827
  %and213 = and i32 %conv209, %shl212, !dbg !1827
  %tobool214 = icmp ne i32 %and213, 0, !dbg !1827
  br i1 %tobool214, label %if.then215, label %if.end216, !dbg !1827

if.then215:                                       ; preds = %sw.bb204
  store i32 29, i32* %retval, !dbg !1828
  br label %return, !dbg !1828

if.end216:                                        ; preds = %sw.bb204
  %51 = load i8* %ch.addr, align 1, !dbg !1830
  %conv217 = sext i8 %51 to i32, !dbg !1830
  switch i32 %conv217, label %sw.epilog254 [
    i32 63, label %sw.bb218
    i32 35, label %sw.bb219
  ], !dbg !1830

sw.bb218:                                         ; preds = %if.end216
  store i32 29, i32* %retval, !dbg !1831
  br label %return, !dbg !1831

sw.bb219:                                         ; preds = %if.end216
  store i32 30, i32* %retval, !dbg !1833
  br label %return, !dbg !1833

sw.bb221:                                         ; preds = %if.end17
  %52 = load i8* %ch.addr, align 1, !dbg !1834
  %conv222 = zext i8 %52 to i32, !dbg !1834
  %int_cast_to_i644 = zext i32 3 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i644), !dbg !1834
  %shr223 = lshr i32 %conv222, 3, !dbg !1834
  %idxprom224 = zext i32 %shr223 to i64, !dbg !1834
  %arrayidx225 = getelementptr inbounds [32 x i8]* @normal_url_char, i32 0, i64 %idxprom224, !dbg !1834
  %53 = load i8* %arrayidx225, align 1, !dbg !1834
  %conv226 = zext i8 %53 to i32, !dbg !1834
  %54 = load i8* %ch.addr, align 1, !dbg !1834
  %conv227 = zext i8 %54 to i32, !dbg !1834
  %and228 = and i32 %conv227, 7, !dbg !1834
  %int_cast_to_i645 = zext i32 %and228 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i645), !dbg !1834
  %shl229 = shl i32 1, %and228, !dbg !1834
  %and230 = and i32 %conv226, %shl229, !dbg !1834
  %tobool231 = icmp ne i32 %and230, 0, !dbg !1834
  br i1 %tobool231, label %if.then232, label %if.end233, !dbg !1834

if.then232:                                       ; preds = %sw.bb221
  store i32 31, i32* %retval, !dbg !1835
  br label %return, !dbg !1835

if.end233:                                        ; preds = %sw.bb221
  %55 = load i8* %ch.addr, align 1, !dbg !1837
  %conv234 = sext i8 %55 to i32, !dbg !1837
  switch i32 %conv234, label %sw.epilog254 [
    i32 63, label %sw.bb235
    i32 35, label %sw.bb236
  ], !dbg !1837

sw.bb235:                                         ; preds = %if.end233
  store i32 31, i32* %retval, !dbg !1838
  br label %return, !dbg !1838

sw.bb236:                                         ; preds = %if.end233
  %56 = load i32* %s.addr, align 4, !dbg !1840
  store i32 %56, i32* %retval, !dbg !1840
  br label %return, !dbg !1840

sw.bb238:                                         ; preds = %if.end17
  %57 = load i8* %ch.addr, align 1, !dbg !1841
  %conv239 = zext i8 %57 to i32, !dbg !1841
  %int_cast_to_i646 = zext i32 3 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i646), !dbg !1841
  %shr240 = lshr i32 %conv239, 3, !dbg !1841
  %idxprom241 = zext i32 %shr240 to i64, !dbg !1841
  %arrayidx242 = getelementptr inbounds [32 x i8]* @normal_url_char, i32 0, i64 %idxprom241, !dbg !1841
  %58 = load i8* %arrayidx242, align 1, !dbg !1841
  %conv243 = zext i8 %58 to i32, !dbg !1841
  %59 = load i8* %ch.addr, align 1, !dbg !1841
  %conv244 = zext i8 %59 to i32, !dbg !1841
  %and245 = and i32 %conv244, 7, !dbg !1841
  %int_cast_to_i647 = zext i32 %and245 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i647), !dbg !1841
  %shl246 = shl i32 1, %and245, !dbg !1841
  %and247 = and i32 %conv243, %shl246, !dbg !1841
  %tobool248 = icmp ne i32 %and247, 0, !dbg !1841
  br i1 %tobool248, label %if.then249, label %if.end250, !dbg !1841

if.then249:                                       ; preds = %sw.bb238
  %60 = load i32* %s.addr, align 4, !dbg !1842
  store i32 %60, i32* %retval, !dbg !1842
  br label %return, !dbg !1842

if.end250:                                        ; preds = %sw.bb238
  %61 = load i8* %ch.addr, align 1, !dbg !1844
  %conv251 = sext i8 %61 to i32, !dbg !1844
  switch i32 %conv251, label %sw.epilog254 [
    i32 63, label %sw.bb252
    i32 35, label %sw.bb252
  ], !dbg !1844

sw.bb252:                                         ; preds = %if.end250, %if.end250
  %62 = load i32* %s.addr, align 4, !dbg !1845
  store i32 %62, i32* %retval, !dbg !1845
  br label %return, !dbg !1845

sw.epilog254:                                     ; preds = %if.end17, %if.end250, %if.end233, %if.end216, %if.end200, %lor.lhs.false188, %sw.bb67, %sw.bb61, %if.end55, %if.end26, %land.lhs.true
  store i32 1, i32* %retval, !dbg !1847
  br label %return, !dbg !1847

return:                                           ; preds = %sw.epilog254, %sw.bb252, %if.then249, %sw.bb236, %sw.bb235, %if.then232, %sw.bb219, %sw.bb218, %if.then215, %sw.bb203, %sw.bb202, %if.then199, %if.then192, %if.then93, %if.then88, %if.then83, %
  %63 = load i32* %retval, !dbg !1848
  ret i32 %63, !dbg !1848
}

declare i8* @memchr(i8*, i32, i64) nounwind readonly

define i32 @http_should_keep_alive(%struct.http_parser* %parser) nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %parser.addr = alloca %struct.http_parser*, align 8
  store %struct.http_parser* %parser, %struct.http_parser** %parser.addr, align 8
  %0 = load %struct.http_parser** %parser.addr, align 8, !dbg !1849
  %http_major = getelementptr inbounds %struct.http_parser* %0, i32 0, i32 6, !dbg !1849
  %1 = load i16* %http_major, align 2, !dbg !1849
  %conv = zext i16 %1 to i32, !dbg !1849
  %cmp = icmp sgt i32 %conv, 0, !dbg !1849
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1849

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.http_parser** %parser.addr, align 8, !dbg !1849
  %http_minor = getelementptr inbounds %struct.http_parser* %2, i32 0, i32 7, !dbg !1849
  %3 = load i16* %http_minor, align 2, !dbg !1849
  %conv2 = zext i16 %3 to i32, !dbg !1849
  %cmp3 = icmp sgt i32 %conv2, 0, !dbg !1849
  br i1 %cmp3, label %if.then, label %if.else, !dbg !1849

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.http_parser** %parser.addr, align 8, !dbg !1851
  %5 = bitcast %struct.http_parser* %4 to i32*, !dbg !1851
  %6 = load i32* %5, align 8, !dbg !1851
  %int_cast_to_i64 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1851
  %7 = lshr i32 %6, 2, !dbg !1851
  %bf.clear = and i32 %7, 127, !dbg !1851
  %and = and i32 %bf.clear, 4, !dbg !1851
  %tobool = icmp ne i32 %and, 0, !dbg !1851
  br i1 %tobool, label %if.then5, label %if.end11, !dbg !1851

if.then5:                                         ; preds = %if.then
  store i32 0, i32* %retval, !dbg !1853
  br label %return, !dbg !1853

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load %struct.http_parser** %parser.addr, align 8, !dbg !1855
  %9 = bitcast %struct.http_parser* %8 to i32*, !dbg !1855
  %10 = load i32* %9, align 8, !dbg !1855
  %int_cast_to_i641 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1855
  %11 = lshr i32 %10, 2, !dbg !1855
  %bf.clear6 = and i32 %11, 127, !dbg !1855
  %and7 = and i32 %bf.clear6, 2, !dbg !1855
  %tobool8 = icmp ne i32 %and7, 0, !dbg !1855
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !1855

if.then9:                                         ; preds = %if.else
  store i32 0, i32* %retval, !dbg !1857
  br label %return, !dbg !1857

if.end11:                                         ; preds = %if.else, %if.then
  %12 = load %struct.http_parser** %parser.addr, align 8, !dbg !1859
  %call = call i32 @http_message_needs_eof(%struct.http_parser* %12), !dbg !1859
  %tobool12 = icmp ne i32 %call, 0, !dbg !1859
  %lnot = xor i1 %tobool12, true, !dbg !1859
  %lnot.ext = zext i1 %lnot to i32, !dbg !1859
  store i32 %lnot.ext, i32* %retval, !dbg !1859
  br label %return, !dbg !1859

return:                                           ; preds = %if.end11, %if.then9, %if.then5
  %13 = load i32* %retval, !dbg !1860
  ret i32 %13, !dbg !1860
}

define i32 @http_message_needs_eof(%struct.http_parser* %parser) nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %parser.addr = alloca %struct.http_parser*, align 8
  store %struct.http_parser* %parser, %struct.http_parser** %parser.addr, align 8
  %0 = load %struct.http_parser** %parser.addr, align 8, !dbg !1861
  %1 = bitcast %struct.http_parser* %0 to i32*, !dbg !1861
  %2 = load i32* %1, align 8, !dbg !1861
  %bf.clear = and i32 %2, 3, !dbg !1861
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !1861
  br i1 %cmp, label %if.then, label %if.end, !dbg !1861

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !1863
  br label %return, !dbg !1863

if.end:                                           ; preds = %entry
  %3 = load %struct.http_parser** %parser.addr, align 8, !dbg !1865
  %4 = bitcast %struct.http_parser* %3 to i8*, !dbg !1865
  %bf.field.offs = getelementptr i8* %4, i32 20, !dbg !1865
  %5 = bitcast i8* %bf.field.offs to i32*, !dbg !1865
  %6 = load i32* %5, align 4, !dbg !1865
  %bf.clear1 = and i32 %6, 65535, !dbg !1865
  %int_cast_to_i64 = zext i32 100 to i64
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !1865
  %div = sdiv i32 %bf.clear1, 100, !dbg !1865
  %cmp2 = icmp eq i32 %div, 1, !dbg !1865
  br i1 %cmp2, label %if.then12, label %lor.lhs.false, !dbg !1865

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct.http_parser** %parser.addr, align 8, !dbg !1865
  %8 = bitcast %struct.http_parser* %7 to i8*, !dbg !1865
  %bf.field.offs3 = getelementptr i8* %8, i32 20, !dbg !1865
  %9 = bitcast i8* %bf.field.offs3 to i32*, !dbg !1865
  %10 = load i32* %9, align 4, !dbg !1865
  %bf.clear4 = and i32 %10, 65535, !dbg !1865
  %cmp5 = icmp eq i32 %bf.clear4, 204, !dbg !1865
  br i1 %cmp5, label %if.then12, label %lor.lhs.false6, !dbg !1865

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %11 = load %struct.http_parser** %parser.addr, align 8, !dbg !1865
  %12 = bitcast %struct.http_parser* %11 to i8*, !dbg !1865
  %bf.field.offs7 = getelementptr i8* %12, i32 20, !dbg !1865
  %13 = bitcast i8* %bf.field.offs7 to i32*, !dbg !1865
  %14 = load i32* %13, align 4, !dbg !1865
  %bf.clear8 = and i32 %14, 65535, !dbg !1865
  %cmp9 = icmp eq i32 %bf.clear8, 304, !dbg !1865
  br i1 %cmp9, label %if.then12, label %lor.lhs.false10, !dbg !1865

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %15 = load %struct.http_parser** %parser.addr, align 8, !dbg !1865
  %16 = bitcast %struct.http_parser* %15 to i32*, !dbg !1865
  %17 = load i32* %16, align 8, !dbg !1865
  %int_cast_to_i641 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1865
  %18 = lshr i32 %17, 2, !dbg !1865
  %bf.clear11 = and i32 %18, 127, !dbg !1865
  %and = and i32 %bf.clear11, 64, !dbg !1865
  %tobool = icmp ne i32 %and, 0, !dbg !1865
  br i1 %tobool, label %if.then12, label %if.end13, !dbg !1865

if.then12:                                        ; preds = %lor.lhs.false10, %lor.lhs.false6, %lor.lhs.false, %if.end
  store i32 0, i32* %retval, !dbg !1866
  br label %return, !dbg !1866

if.end13:                                         ; preds = %lor.lhs.false10
  %19 = load %struct.http_parser** %parser.addr, align 8, !dbg !1868
  %20 = bitcast %struct.http_parser* %19 to i32*, !dbg !1868
  %21 = load i32* %20, align 8, !dbg !1868
  %int_cast_to_i642 = zext i32 2 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i642), !dbg !1868
  %22 = lshr i32 %21, 2, !dbg !1868
  %bf.clear14 = and i32 %22, 127, !dbg !1868
  %and15 = and i32 %bf.clear14, 1, !dbg !1868
  %tobool16 = icmp ne i32 %and15, 0, !dbg !1868
  br i1 %tobool16, label %if.then19, label %lor.lhs.false17, !dbg !1868

lor.lhs.false17:                                  ; preds = %if.end13
  %23 = load %struct.http_parser** %parser.addr, align 8, !dbg !1868
  %content_length = getelementptr inbounds %struct.http_parser* %23, i32 0, i32 5, !dbg !1868
  %24 = load i64* %content_length, align 8, !dbg !1868
  %cmp18 = icmp ne i64 %24, -1, !dbg !1868
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1868

if.then19:                                        ; preds = %lor.lhs.false17, %if.end13
  store i32 0, i32* %retval, !dbg !1869
  br label %return, !dbg !1869

if.end20:                                         ; preds = %lor.lhs.false17
  store i32 1, i32* %retval, !dbg !1871
  br label %return, !dbg !1871

return:                                           ; preds = %if.end20, %if.then19, %if.then12, %if.then
  %25 = load i32* %retval, !dbg !1872
  ret i32 %25, !dbg !1872
}

define i8* @http_method_str(i32 %m) nounwind uwtable {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  %0 = load i32* %m.addr, align 4, !dbg !1873
  %conv = zext i32 %0 to i64, !dbg !1873
  %cmp = icmp ult i64 %conv, 27, !dbg !1873
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !1873

cond.true:                                        ; preds = %entry
  %1 = load i32* %m.addr, align 4, !dbg !1873
  %idxprom = zext i32 %1 to i64, !dbg !1873
  %arrayidx = getelementptr inbounds [27 x i8*]* @method_strings, i32 0, i64 %idxprom, !dbg !1873
  %2 = load i8** %arrayidx, align 8, !dbg !1873
  br label %cond.end, !dbg !1873

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ getelementptr inbounds ([10 x i8]* @.str18, i32 0, i32 0), %entry ], !dbg !1873
  ret i8* %cond, !dbg !1873
}

define void @http_parser_init(%struct.http_parser* %parser, i32 %t) nounwind uwtable {
entry:
  %parser.addr = alloca %struct.http_parser*, align 8
  %t.addr = alloca i32, align 4
  %data = alloca i8*, align 8
  store %struct.http_parser* %parser, %struct.http_parser** %parser.addr, align 8
  store i32 %t, i32* %t.addr, align 4
  %0 = load %struct.http_parser** %parser.addr, align 8, !dbg !1875
  %data1 = getelementptr inbounds %struct.http_parser* %0, i32 0, i32 11, !dbg !1875
  %1 = load i8** %data1, align 8, !dbg !1875
  store i8* %1, i8** %data, align 8, !dbg !1875
  %2 = load %struct.http_parser** %parser.addr, align 8, !dbg !1877
  %3 = bitcast %struct.http_parser* %2 to i8*, !dbg !1877
  %4 = call i8* @memset(i8* %3, i32 0, i64 32)
  %5 = load i8** %data, align 8, !dbg !1878
  %6 = load %struct.http_parser** %parser.addr, align 8, !dbg !1878
  %data2 = getelementptr inbounds %struct.http_parser* %6, i32 0, i32 11, !dbg !1878
  store i8* %5, i8** %data2, align 8, !dbg !1878
  %7 = load i32* %t.addr, align 4, !dbg !1879
  %8 = load %struct.http_parser** %parser.addr, align 8, !dbg !1879
  %bf.value = and i32 %7, 3, !dbg !1879
  %9 = bitcast %struct.http_parser* %8 to i32*, !dbg !1879
  %10 = and i32 %bf.value, 3, !dbg !1879
  %11 = load i32* %9, align 8, !dbg !1879
  %12 = and i32 %11, -4, !dbg !1879
  %13 = or i32 %12, %10, !dbg !1879
  store i32 %13, i32* %9, align 8, !dbg !1879
  %14 = load i32* %t.addr, align 4, !dbg !1880
  %cmp = icmp eq i32 %14, 0, !dbg !1880
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !1880

cond.false:                                       ; preds = %entry
  %15 = load i32* %t.addr, align 4, !dbg !1880
  %cmp3 = icmp eq i32 %15, 1, !dbg !1880
  %cond = select i1 %cmp3, i32 4, i32 2, !dbg !1880
  br label %cond.end, !dbg !1880

cond.end:                                         ; preds = %entry, %cond.false
  %cond4 = phi i32 [ %cond, %cond.false ], [ 18, %entry ], !dbg !1880
  %16 = load %struct.http_parser** %parser.addr, align 8, !dbg !1880
  %bf.value5 = and i32 %cond4, 127, !dbg !1880
  %17 = bitcast %struct.http_parser* %16 to i32*, !dbg !1880
  %18 = and i32 %bf.value5, 127, !dbg !1880
  %int_cast_to_i64 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1880
  %19 = shl i32 %18, 9, !dbg !1880
  %20 = load i32* %17, align 8, !dbg !1880
  %21 = and i32 %20, -65025, !dbg !1880
  %22 = or i32 %21, %19, !dbg !1880
  store i32 %22, i32* %17, align 8, !dbg !1880
  %23 = load %struct.http_parser** %parser.addr, align 8, !dbg !1881
  %24 = bitcast %struct.http_parser* %23 to i8*, !dbg !1881
  %bf.field.offs = getelementptr i8* %24, i32 20, !dbg !1881
  %25 = bitcast i8* %bf.field.offs to i32*, !dbg !1881
  %26 = load i32* %25, align 4, !dbg !1881
  %27 = and i32 %26, -2130706433, !dbg !1881
  store i32 %27, i32* %25, align 4, !dbg !1881
  ret void, !dbg !1882
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

define void @http_parser_settings_init(%struct.http_parser_settings* %settings) nounwind uwtable {
entry:
  %settings.addr = alloca %struct.http_parser_settings*, align 8
  store %struct.http_parser_settings* %settings, %struct.http_parser_settings** %settings.addr, align 8
  %0 = load %struct.http_parser_settings** %settings.addr, align 8, !dbg !1883
  %1 = bitcast %struct.http_parser_settings* %0 to i8*, !dbg !1883
  %2 = call i8* @memset(i8* %1, i32 0, i64 64)
  ret void, !dbg !1885
}

define i8* @http_errno_name(i32 %err) nounwind uwtable {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, i32* %err.addr, align 4
  %0 = load i32* %err.addr, align 4, !dbg !1886
  %conv = zext i32 %0 to i64, !dbg !1886
  %cmp = icmp ult i64 %conv, 30, !dbg !1886
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !1886

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([63 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2150, i8* getelementptr inbounds ([45 x i8]* @__PRETTY_FUNCTION__.http_errno_name, i32 0, i32 0)) 
  unreachable, !dbg !1886

cond.end:                                         ; preds = %entry
  %1 = load i32* %err.addr, align 4, !dbg !1888
  %idxprom = zext i32 %1 to i64, !dbg !1888
  %arrayidx = getelementptr inbounds [30 x %struct.anon]* @http_strerror_tab, i32 0, i64 %idxprom, !dbg !1888
  %name = getelementptr inbounds %struct.anon* %arrayidx, i32 0, i32 0, !dbg !1888
  %2 = load i8** %name, align 8, !dbg !1888
  ret i8* %2, !dbg !1888
}

define i8* @http_errno_description(i32 %err) nounwind uwtable {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, i32* %err.addr, align 4
  %0 = load i32* %err.addr, align 4, !dbg !1889
  %conv = zext i32 %0 to i64, !dbg !1889
  %cmp = icmp ult i64 %conv, 30, !dbg !1889
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !1889

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([63 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2156, i8* getelementptr inbounds ([52 x i8]* @__PRETTY_FUNCTION__.http_errno_description, i32 0, i
  unreachable, !dbg !1889

cond.end:                                         ; preds = %entry
  %1 = load i32* %err.addr, align 4, !dbg !1891
  %idxprom = zext i32 %1 to i64, !dbg !1891
  %arrayidx = getelementptr inbounds [30 x %struct.anon]* @http_strerror_tab, i32 0, i64 %idxprom, !dbg !1891
  %description = getelementptr inbounds %struct.anon* %arrayidx, i32 0, i32 1, !dbg !1891
  %2 = load i8** %description, align 8, !dbg !1891
  ret i8* %2, !dbg !1891
}

define i32 @http_parser_parse_url(i8* %buf, i64 %buflen, i32 %is_connect, %struct.http_parser_url* %u) nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %is_connect.addr = alloca i32, align 4
  %u.addr = alloca %struct.http_parser_url*, align 8
  %s = alloca i32, align 4
  %p = alloca i8*, align 8
  %uf = alloca i32, align 4
  %old_uf = alloca i32, align 4
  %found_at = alloca i32, align 4
  %v = alloca i64, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 %is_connect, i32* %is_connect.addr, align 4
  store %struct.http_parser_url* %u, %struct.http_parser_url** %u.addr, align 8
  store i32 0, i32* %found_at, align 4, !dbg !1892
  %0 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1894
  %field_set = getelementptr inbounds %struct.http_parser_url* %0, i32 0, i32 0, !dbg !1894
  store i16 0, i16* %field_set, align 2, !dbg !1894
  %1 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1894
  %port = getelementptr inbounds %struct.http_parser_url* %1, i32 0, i32 1, !dbg !1894
  store i16 0, i16* %port, align 2, !dbg !1894
  %2 = load i32* %is_connect.addr, align 4, !dbg !1895
  %tobool = icmp ne i32 %2, 0, !dbg !1895
  %cond = select i1 %tobool, i32 24, i32 20, !dbg !1895
  store i32 %cond, i32* %s, align 4, !dbg !1895
  store i32 7, i32* %old_uf, align 4, !dbg !1896
  %3 = load i8** %buf.addr, align 8, !dbg !1897
  store i8* %3, i8** %p, align 8, !dbg !1897
  br label %for.cond, !dbg !1897

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i8** %p, align 8, !dbg !1897
  %5 = load i8** %buf.addr, align 8, !dbg !1897
  %6 = load i64* %buflen.addr, align 8, !dbg !1897
  %add.ptr = getelementptr inbounds i8* %5, i64 %6, !dbg !1897
  %cmp = icmp ult i8* %4, %add.ptr, !dbg !1897
  br i1 %cmp, label %for.body, label %for.end, !dbg !1897

for.body:                                         ; preds = %for.cond
  %7 = load i32* %s, align 4, !dbg !1899
  %8 = load i8** %p, align 8, !dbg !1899
  %9 = load i8* %8, align 1, !dbg !1899
  %call = call i32 @parse_url_char(i32 %7, i8 signext %9), !dbg !1899
  store i32 %call, i32* %s, align 4, !dbg !1899
  %10 = load i32* %s, align 4, !dbg !1901
  switch i32 %10, label %sw.default [
    i32 1, label %sw.bb
    i32 22, label %for.inc
    i32 23, label %for.inc
    i32 24, label %for.inc
    i32 28, label %for.inc
    i32 30, label %for.inc
    i32 21, label %sw.bb2
    i32 26, label %sw.bb3
    i32 25, label %sw.bb4
    i32 27, label %sw.bb5
    i32 29, label %sw.bb6
    i32 31, label %sw.bb7
  ], !dbg !1901

sw.bb:                                            ; preds = %for.body
  store i32 1, i32* %retval, !dbg !1902
  br label %return, !dbg !1902

sw.bb2:                                           ; preds = %for.body
  store i32 0, i32* %uf, align 4, !dbg !1904
  br label %sw.epilog, !dbg !1905

sw.bb3:                                           ; preds = %for.body
  store i32 1, i32* %found_at, align 4, !dbg !1906
  br label %sw.bb4, !dbg !1906

sw.bb4:                                           ; preds = %sw.bb3, %for.body
  store i32 1, i32* %uf, align 4, !dbg !1907
  br label %sw.epilog, !dbg !1908

sw.bb5:                                           ; preds = %for.body
  store i32 3, i32* %uf, align 4, !dbg !1909
  br label %sw.epilog, !dbg !1910

sw.bb6:                                           ; preds = %for.body
  store i32 4, i32* %uf, align 4, !dbg !1911
  br label %sw.epilog, !dbg !1912

sw.bb7:                                           ; preds = %for.body
  store i32 5, i32* %uf, align 4, !dbg !1913
  br label %sw.epilog, !dbg !1914

sw.default:                                       ; preds = %for.body
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2352, i8* getelementptr inbounds ([79 x i8]* @__PRETTY_FUNCTION__.http_parser_parse_url, i32 0, i3
  unreachable, !dbg !1915

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb2
  %11 = load i32* %uf, align 4, !dbg !1916
  %12 = load i32* %old_uf, align 4, !dbg !1916
  %cmp8 = icmp eq i32 %11, %12, !dbg !1916
  br i1 %cmp8, label %if.then, label %if.end, !dbg !1916

if.then:                                          ; preds = %sw.epilog
  %13 = load i32* %uf, align 4, !dbg !1917
  %idxprom = zext i32 %13 to i64, !dbg !1917
  %14 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1917
  %field_data = getelementptr inbounds %struct.http_parser_url* %14, i32 0, i32 2, !dbg !1917
  %arrayidx = getelementptr inbounds [7 x %struct.anon.0]* %field_data, i32 0, i64 %idxprom, !dbg !1917
  %len = getelementptr inbounds %struct.anon.0* %arrayidx, i32 0, i32 1, !dbg !1917
  %15 = load i16* %len, align 2, !dbg !1917
  %inc = add i16 %15, 1, !dbg !1917
  store i16 %inc, i16* %len, align 2, !dbg !1917
  br label %for.inc, !dbg !1919

if.end:                                           ; preds = %sw.epilog
  %16 = load i8** %p, align 8, !dbg !1920
  %17 = load i8** %buf.addr, align 8, !dbg !1920
  %sub.ptr.lhs.cast = ptrtoint i8* %16 to i64, !dbg !1920
  %sub.ptr.rhs.cast = ptrtoint i8* %17 to i64, !dbg !1920
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1920
  %conv = trunc i64 %sub.ptr.sub to i16, !dbg !1920
  %18 = load i32* %uf, align 4, !dbg !1920
  %idxprom9 = zext i32 %18 to i64, !dbg !1920
  %19 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1920
  %field_data10 = getelementptr inbounds %struct.http_parser_url* %19, i32 0, i32 2, !dbg !1920
  %arrayidx11 = getelementptr inbounds [7 x %struct.anon.0]* %field_data10, i32 0, i64 %idxprom9, !dbg !1920
  %off = getelementptr inbounds %struct.anon.0* %arrayidx11, i32 0, i32 0, !dbg !1920
  store i16 %conv, i16* %off, align 2, !dbg !1920
  %20 = load i32* %uf, align 4, !dbg !1921
  %idxprom12 = zext i32 %20 to i64, !dbg !1921
  %21 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1921
  %field_data13 = getelementptr inbounds %struct.http_parser_url* %21, i32 0, i32 2, !dbg !1921
  %arrayidx14 = getelementptr inbounds [7 x %struct.anon.0]* %field_data13, i32 0, i64 %idxprom12, !dbg !1921
  %len15 = getelementptr inbounds %struct.anon.0* %arrayidx14, i32 0, i32 1, !dbg !1921
  store i16 1, i16* %len15, align 2, !dbg !1921
  %22 = load i32* %uf, align 4, !dbg !1922
  %int_cast_to_i64 = zext i32 %22 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1922
  %shl = shl i32 1, %22, !dbg !1922
  %23 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1922
  %field_set16 = getelementptr inbounds %struct.http_parser_url* %23, i32 0, i32 0, !dbg !1922
  %24 = load i16* %field_set16, align 2, !dbg !1922
  %conv17 = zext i16 %24 to i32, !dbg !1922
  %or = or i32 %conv17, %shl, !dbg !1922
  %conv18 = trunc i32 %or to i16, !dbg !1922
  store i16 %conv18, i16* %field_set16, align 2, !dbg !1922
  %25 = load i32* %uf, align 4, !dbg !1923
  store i32 %25, i32* %old_uf, align 4, !dbg !1923
  br label %for.inc, !dbg !1924

for.inc:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %if.end, %if.then
  %26 = load i8** %p, align 8, !dbg !1897
  %incdec.ptr = getelementptr inbounds i8* %26, i32 1, !dbg !1897
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !1897
  br label %for.cond, !dbg !1897

for.end:                                          ; preds = %for.cond
  %27 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1925
  %field_set19 = getelementptr inbounds %struct.http_parser_url* %27, i32 0, i32 0, !dbg !1925
  %28 = load i16* %field_set19, align 2, !dbg !1925
  %conv20 = zext i16 %28 to i32, !dbg !1925
  %and = and i32 %conv20, 3, !dbg !1925
  %cmp21 = icmp ne i32 %and, 0, !dbg !1925
  br i1 %cmp21, label %if.then23, label %if.end29, !dbg !1925

if.then23:                                        ; preds = %for.end
  %29 = load i8** %buf.addr, align 8, !dbg !1926
  %30 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1926
  %31 = load i32* %found_at, align 4, !dbg !1926
  %call24 = call i32 @http_parse_host(i8* %29, %struct.http_parser_url* %30, i32 %31), !dbg !1926
  %cmp25 = icmp ne i32 %call24, 0, !dbg !1926
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !1926

if.then27:                                        ; preds = %if.then23
  store i32 1, i32* %retval, !dbg !1928
  br label %return, !dbg !1928

if.end29:                                         ; preds = %if.then23, %for.end
  %32 = load i32* %is_connect.addr, align 4, !dbg !1930
  %tobool30 = icmp ne i32 %32, 0, !dbg !1930
  br i1 %tobool30, label %land.lhs.true, label %if.end36, !dbg !1930

land.lhs.true:                                    ; preds = %if.end29
  %33 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1930
  %field_set31 = getelementptr inbounds %struct.http_parser_url* %33, i32 0, i32 0, !dbg !1930
  %34 = load i16* %field_set31, align 2, !dbg !1930
  %conv32 = zext i16 %34 to i32, !dbg !1930
  %cmp33 = icmp ne i32 %conv32, 6, !dbg !1930
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !1930

if.then35:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval, !dbg !1931
  br label %return, !dbg !1931

if.end36:                                         ; preds = %land.lhs.true, %if.end29
  %35 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1933
  %field_set37 = getelementptr inbounds %struct.http_parser_url* %35, i32 0, i32 0, !dbg !1933
  %36 = load i16* %field_set37, align 2, !dbg !1933
  %conv38 = zext i16 %36 to i32, !dbg !1933
  %and39 = and i32 %conv38, 4, !dbg !1933
  %tobool40 = icmp ne i32 %and39, 0, !dbg !1933
  br i1 %tobool40, label %if.then41, label %if.end54, !dbg !1933

if.then41:                                        ; preds = %if.end36
  %37 = load i8** %buf.addr, align 8, !dbg !1934
  %38 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1934
  %field_data42 = getelementptr inbounds %struct.http_parser_url* %38, i32 0, i32 2, !dbg !1934
  %arrayidx43 = getelementptr inbounds [7 x %struct.anon.0]* %field_data42, i32 0, i64 2, !dbg !1934
  %off44 = getelementptr inbounds %struct.anon.0* %arrayidx43, i32 0, i32 0, !dbg !1934
  %39 = load i16* %off44, align 2, !dbg !1934
  %conv45 = zext i16 %39 to i32, !dbg !1934
  %idx.ext = sext i32 %conv45 to i64, !dbg !1934
  %add.ptr46 = getelementptr inbounds i8* %37, i64 %idx.ext, !dbg !1934
  %call47 = call i64 @strtoul(i8* %add.ptr46, i8** null, i32 10) nounwind, !dbg !1934
  store i64 %call47, i64* %v, align 8, !dbg !1934
  %40 = load i64* %v, align 8, !dbg !1936
  %cmp48 = icmp ugt i64 %40, 65535, !dbg !1936
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !1936

if.then50:                                        ; preds = %if.then41
  store i32 1, i32* %retval, !dbg !1937
  br label %return, !dbg !1937

if.end51:                                         ; preds = %if.then41
  %41 = load i64* %v, align 8, !dbg !1939
  %conv52 = trunc i64 %41 to i16, !dbg !1939
  %42 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1939
  %port53 = getelementptr inbounds %struct.http_parser_url* %42, i32 0, i32 1, !dbg !1939
  store i16 %conv52, i16* %port53, align 2, !dbg !1939
  br label %if.end54, !dbg !1940

if.end54:                                         ; preds = %if.end51, %if.end36
  store i32 0, i32* %retval, !dbg !1941
  br label %return, !dbg !1941

return:                                           ; preds = %if.end54, %if.then50, %if.then35, %if.then27, %sw.bb
  %43 = load i32* %retval, !dbg !1942
  ret i32 %43, !dbg !1942
}

define internal i32 @http_parse_host(i8* %buf, %struct.http_parser_url* %u, i32 %found_at) nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %u.addr = alloca %struct.http_parser_url*, align 8
  %found_at.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %p = alloca i8*, align 8
  %buflen = alloca i64, align 8
  %new_s = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store %struct.http_parser_url* %u, %struct.http_parser_url** %u.addr, align 8
  store i32 %found_at, i32* %found_at.addr, align 4
  %0 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1943
  %field_data = getelementptr inbounds %struct.http_parser_url* %0, i32 0, i32 2, !dbg !1943
  %arrayidx = getelementptr inbounds [7 x %struct.anon.0]* %field_data, i32 0, i64 1, !dbg !1943
  %off = getelementptr inbounds %struct.anon.0* %arrayidx, i32 0, i32 0, !dbg !1943
  %1 = load i16* %off, align 2, !dbg !1943
  %conv = zext i16 %1 to i32, !dbg !1943
  %2 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1943
  %field_data1 = getelementptr inbounds %struct.http_parser_url* %2, i32 0, i32 2, !dbg !1943
  %arrayidx2 = getelementptr inbounds [7 x %struct.anon.0]* %field_data1, i32 0, i64 1, !dbg !1943
  %len = getelementptr inbounds %struct.anon.0* %arrayidx2, i32 0, i32 1, !dbg !1943
  %3 = load i16* %len, align 2, !dbg !1943
  %conv3 = zext i16 %3 to i32, !dbg !1943
  %add = add nsw i32 %conv, %conv3, !dbg !1943
  %conv4 = sext i32 %add to i64, !dbg !1943
  store i64 %conv4, i64* %buflen, align 8, !dbg !1943
  %4 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1945
  %field_data5 = getelementptr inbounds %struct.http_parser_url* %4, i32 0, i32 2, !dbg !1945
  %arrayidx6 = getelementptr inbounds [7 x %struct.anon.0]* %field_data5, i32 0, i64 1, !dbg !1945
  %len7 = getelementptr inbounds %struct.anon.0* %arrayidx6, i32 0, i32 1, !dbg !1945
  store i16 0, i16* %len7, align 2, !dbg !1945
  %5 = load i32* %found_at.addr, align 4, !dbg !1946
  %tobool = icmp ne i32 %5, 0, !dbg !1946
  %cond = select i1 %tobool, i32 2, i32 4, !dbg !1946
  store i32 %cond, i32* %s, align 4, !dbg !1946
  %6 = load i8** %buf.addr, align 8, !dbg !1947
  %7 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1947
  %field_data8 = getelementptr inbounds %struct.http_parser_url* %7, i32 0, i32 2, !dbg !1947
  %arrayidx9 = getelementptr inbounds [7 x %struct.anon.0]* %field_data8, i32 0, i64 1, !dbg !1947
  %off10 = getelementptr inbounds %struct.anon.0* %arrayidx9, i32 0, i32 0, !dbg !1947
  %8 = load i16* %off10, align 2, !dbg !1947
  %conv11 = zext i16 %8 to i32, !dbg !1947
  %idx.ext = sext i32 %conv11 to i64, !dbg !1947
  %add.ptr = getelementptr inbounds i8* %6, i64 %idx.ext, !dbg !1947
  store i8* %add.ptr, i8** %p, align 8, !dbg !1947
  br label %for.cond, !dbg !1947

for.cond:                                         ; preds = %sw.epilog, %entry
  %9 = load i8** %p, align 8, !dbg !1947
  %10 = load i8** %buf.addr, align 8, !dbg !1947
  %11 = load i64* %buflen, align 8, !dbg !1947
  %add.ptr12 = getelementptr inbounds i8* %10, i64 %11, !dbg !1947
  %cmp = icmp ult i8* %9, %add.ptr12, !dbg !1947
  %12 = load i32* %s, align 4, !dbg !1949
  br i1 %cmp, label %for.body, label %for.end, !dbg !1947

for.body:                                         ; preds = %for.cond
  %13 = load i8** %p, align 8, !dbg !1949
  %14 = load i8* %13, align 1, !dbg !1949
  %call = call i32 @http_parse_host_char(i32 %12, i8 signext %14), !dbg !1949
  store i32 %call, i32* %new_s, align 4, !dbg !1949
  %15 = load i32* %new_s, align 4, !dbg !1951
  %cmp14 = icmp eq i32 %15, 1, !dbg !1951
  br i1 %cmp14, label %if.then, label %if.end, !dbg !1951

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval, !dbg !1952
  br label %return, !dbg !1952

if.end:                                           ; preds = %for.body
  %16 = load i32* %new_s, align 4, !dbg !1954
  switch i32 %16, label %sw.epilog [
    i32 6, label %sw.bb
    i32 7, label %sw.bb27
    i32 10, label %sw.bb43
    i32 3, label %sw.bb64
  ], !dbg !1954

sw.bb:                                            ; preds = %if.end
  %17 = load i32* %s, align 4, !dbg !1955
  %cmp16 = icmp ne i32 %17, 6, !dbg !1955
  br i1 %cmp16, label %if.then18, label %if.end23, !dbg !1955

if.then18:                                        ; preds = %sw.bb
  %18 = load i8** %p, align 8, !dbg !1957
  %19 = load i8** %buf.addr, align 8, !dbg !1957
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64, !dbg !1957
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64, !dbg !1957
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1957
  %conv19 = trunc i64 %sub.ptr.sub to i16, !dbg !1957
  %20 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1957
  %field_data20 = getelementptr inbounds %struct.http_parser_url* %20, i32 0, i32 2, !dbg !1957
  %arrayidx21 = getelementptr inbounds [7 x %struct.anon.0]* %field_data20, i32 0, i64 1, !dbg !1957
  %off22 = getelementptr inbounds %struct.anon.0* %arrayidx21, i32 0, i32 0, !dbg !1957
  store i16 %conv19, i16* %off22, align 2, !dbg !1957
  br label %if.end23, !dbg !1959

if.end23:                                         ; preds = %if.then18, %sw.bb
  %21 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1960
  %field_data24 = getelementptr inbounds %struct.http_parser_url* %21, i32 0, i32 2, !dbg !1960
  %arrayidx25 = getelementptr inbounds [7 x %struct.anon.0]* %field_data24, i32 0, i64 1, !dbg !1960
  %len26 = getelementptr inbounds %struct.anon.0* %arrayidx25, i32 0, i32 1, !dbg !1960
  %22 = load i16* %len26, align 2, !dbg !1960
  %inc = add i16 %22, 1, !dbg !1960
  store i16 %inc, i16* %len26, align 2, !dbg !1960
  br label %sw.epilog, !dbg !1961

sw.bb27:                                          ; preds = %if.end
  %23 = load i32* %s, align 4, !dbg !1962
  %cmp28 = icmp ne i32 %23, 7, !dbg !1962
  br i1 %cmp28, label %if.then30, label %if.end38, !dbg !1962

if.then30:                                        ; preds = %sw.bb27
  %24 = load i8** %p, align 8, !dbg !1963
  %25 = load i8** %buf.addr, align 8, !dbg !1963
  %sub.ptr.lhs.cast31 = ptrtoint i8* %24 to i64, !dbg !1963
  %sub.ptr.rhs.cast32 = ptrtoint i8* %25 to i64, !dbg !1963
  %sub.ptr.sub33 = sub i64 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32, !dbg !1963
  %conv34 = trunc i64 %sub.ptr.sub33 to i16, !dbg !1963
  %26 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1963
  %field_data35 = getelementptr inbounds %struct.http_parser_url* %26, i32 0, i32 2, !dbg !1963
  %arrayidx36 = getelementptr inbounds [7 x %struct.anon.0]* %field_data35, i32 0, i64 1, !dbg !1963
  %off37 = getelementptr inbounds %struct.anon.0* %arrayidx36, i32 0, i32 0, !dbg !1963
  store i16 %conv34, i16* %off37, align 2, !dbg !1963
  br label %if.end38, !dbg !1965

if.end38:                                         ; preds = %if.then30, %sw.bb27
  %27 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1966
  %field_data39 = getelementptr inbounds %struct.http_parser_url* %27, i32 0, i32 2, !dbg !1966
  %arrayidx40 = getelementptr inbounds [7 x %struct.anon.0]* %field_data39, i32 0, i64 1, !dbg !1966
  %len41 = getelementptr inbounds %struct.anon.0* %arrayidx40, i32 0, i32 1, !dbg !1966
  %28 = load i16* %len41, align 2, !dbg !1966
  %inc42 = add i16 %28, 1, !dbg !1966
  store i16 %inc42, i16* %len41, align 2, !dbg !1966
  br label %sw.epilog, !dbg !1967

sw.bb43:                                          ; preds = %if.end
  %29 = load i32* %s, align 4, !dbg !1968
  %cmp44 = icmp ne i32 %29, 10, !dbg !1968
  br i1 %cmp44, label %if.then46, label %if.end59, !dbg !1968

if.then46:                                        ; preds = %sw.bb43
  %30 = load i8** %p, align 8, !dbg !1969
  %31 = load i8** %buf.addr, align 8, !dbg !1969
  %sub.ptr.lhs.cast47 = ptrtoint i8* %30 to i64, !dbg !1969
  %sub.ptr.rhs.cast48 = ptrtoint i8* %31 to i64, !dbg !1969
  %sub.ptr.sub49 = sub i64 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast48, !dbg !1969
  %conv50 = trunc i64 %sub.ptr.sub49 to i16, !dbg !1969
  %32 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1969
  %field_data51 = getelementptr inbounds %struct.http_parser_url* %32, i32 0, i32 2, !dbg !1969
  %arrayidx52 = getelementptr inbounds [7 x %struct.anon.0]* %field_data51, i32 0, i64 2, !dbg !1969
  %off53 = getelementptr inbounds %struct.anon.0* %arrayidx52, i32 0, i32 0, !dbg !1969
  store i16 %conv50, i16* %off53, align 2, !dbg !1969
  %33 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1971
  %field_data54 = getelementptr inbounds %struct.http_parser_url* %33, i32 0, i32 2, !dbg !1971
  %arrayidx55 = getelementptr inbounds [7 x %struct.anon.0]* %field_data54, i32 0, i64 2, !dbg !1971
  %len56 = getelementptr inbounds %struct.anon.0* %arrayidx55, i32 0, i32 1, !dbg !1971
  store i16 0, i16* %len56, align 2, !dbg !1971
  %34 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1972
  %field_set = getelementptr inbounds %struct.http_parser_url* %34, i32 0, i32 0, !dbg !1972
  %35 = load i16* %field_set, align 2, !dbg !1972
  %conv57 = zext i16 %35 to i32, !dbg !1972
  %or = or i32 %conv57, 4, !dbg !1972
  %conv58 = trunc i32 %or to i16, !dbg !1972
  store i16 %conv58, i16* %field_set, align 2, !dbg !1972
  br label %if.end59, !dbg !1973

if.end59:                                         ; preds = %if.then46, %sw.bb43
  %36 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1974
  %field_data60 = getelementptr inbounds %struct.http_parser_url* %36, i32 0, i32 2, !dbg !1974
  %arrayidx61 = getelementptr inbounds [7 x %struct.anon.0]* %field_data60, i32 0, i64 2, !dbg !1974
  %len62 = getelementptr inbounds %struct.anon.0* %arrayidx61, i32 0, i32 1, !dbg !1974
  %37 = load i16* %len62, align 2, !dbg !1974
  %inc63 = add i16 %37, 1, !dbg !1974
  store i16 %inc63, i16* %len62, align 2, !dbg !1974
  br label %sw.epilog, !dbg !1975

sw.bb64:                                          ; preds = %if.end
  %38 = load i32* %s, align 4, !dbg !1976
  %cmp65 = icmp ne i32 %38, 3, !dbg !1976
  br i1 %cmp65, label %if.then67, label %if.end82, !dbg !1976

if.then67:                                        ; preds = %sw.bb64
  %39 = load i8** %p, align 8, !dbg !1977
  %40 = load i8** %buf.addr, align 8, !dbg !1977
  %sub.ptr.lhs.cast68 = ptrtoint i8* %39 to i64, !dbg !1977
  %sub.ptr.rhs.cast69 = ptrtoint i8* %40 to i64, !dbg !1977
  %sub.ptr.sub70 = sub i64 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69, !dbg !1977
  %conv71 = trunc i64 %sub.ptr.sub70 to i16, !dbg !1977
  %41 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1977
  %field_data72 = getelementptr inbounds %struct.http_parser_url* %41, i32 0, i32 2, !dbg !1977
  %arrayidx73 = getelementptr inbounds [7 x %struct.anon.0]* %field_data72, i32 0, i64 6, !dbg !1977
  %off74 = getelementptr inbounds %struct.anon.0* %arrayidx73, i32 0, i32 0, !dbg !1977
  store i16 %conv71, i16* %off74, align 2, !dbg !1977
  %42 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1979
  %field_data75 = getelementptr inbounds %struct.http_parser_url* %42, i32 0, i32 2, !dbg !1979
  %arrayidx76 = getelementptr inbounds [7 x %struct.anon.0]* %field_data75, i32 0, i64 6, !dbg !1979
  %len77 = getelementptr inbounds %struct.anon.0* %arrayidx76, i32 0, i32 1, !dbg !1979
  store i16 0, i16* %len77, align 2, !dbg !1979
  %43 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1980
  %field_set78 = getelementptr inbounds %struct.http_parser_url* %43, i32 0, i32 0, !dbg !1980
  %44 = load i16* %field_set78, align 2, !dbg !1980
  %conv79 = zext i16 %44 to i32, !dbg !1980
  %or80 = or i32 %conv79, 64, !dbg !1980
  %conv81 = trunc i32 %or80 to i16, !dbg !1980
  store i16 %conv81, i16* %field_set78, align 2, !dbg !1980
  br label %if.end82, !dbg !1981

if.end82:                                         ; preds = %if.then67, %sw.bb64
  %45 = load %struct.http_parser_url** %u.addr, align 8, !dbg !1982
  %field_data83 = getelementptr inbounds %struct.http_parser_url* %45, i32 0, i32 2, !dbg !1982
  %arrayidx84 = getelementptr inbounds [7 x %struct.anon.0]* %field_data83, i32 0, i64 6, !dbg !1982
  %len85 = getelementptr inbounds %struct.anon.0* %arrayidx84, i32 0, i32 1, !dbg !1982
  %46 = load i16* %len85, align 2, !dbg !1982
  %inc86 = add i16 %46, 1, !dbg !1982
  store i16 %inc86, i16* %len85, align 2, !dbg !1982
  br label %sw.epilog, !dbg !1983

sw.epilog:                                        ; preds = %if.end, %if.end82, %if.end59, %if.end38, %if.end23
  %47 = load i32* %new_s, align 4, !dbg !1984
  store i32 %47, i32* %s, align 4, !dbg !1984
  %48 = load i8** %p, align 8, !dbg !1947
  %incdec.ptr = getelementptr inbounds i8* %48, i32 1, !dbg !1947
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !1947
  br label %for.cond, !dbg !1947

for.end:                                          ; preds = %for.cond
  switch i32 %12, label %sw.epilog89 [
    i32 4, label %sw.bb87
    i32 5, label %sw.bb87
    i32 7, label %sw.bb87
    i32 9, label %sw.bb87
    i32 3, label %sw.bb87
    i32 2, label %sw.bb87
  ], !dbg !1985

sw.bb87:                                          ; preds = %for.end, %for.end, %for.end, %for.end, %for.end, %for.end
  store i32 1, i32* %retval, !dbg !1986
  br label %return, !dbg !1986

sw.epilog89:                                      ; preds = %for.end
  store i32 0, i32* %retval, !dbg !1988
  br label %return, !dbg !1988

return:                                           ; preds = %sw.epilog89, %sw.bb87, %if.then
  %49 = load i32* %retval, !dbg !1989
  ret i32 %49, !dbg !1989
}

declare i64 @strtoul(i8*, i8**, i32) nounwind

define void @http_parser_pause(%struct.http_parser* %parser, i32 %paused) nounwind uwtable {
entry:
  %parser.addr = alloca %struct.http_parser*, align 8
  %paused.addr = alloca i32, align 4
  store %struct.http_parser* %parser, %struct.http_parser** %parser.addr, align 8
  store i32 %paused, i32* %paused.addr, align 4
  %0 = load %struct.http_parser** %parser.addr, align 8, !dbg !1990
  %1 = bitcast %struct.http_parser* %0 to i8*, !dbg !1990
  %bf.field.offs = getelementptr i8* %1, i32 20, !dbg !1990
  %2 = bitcast i8* %bf.field.offs to i32*, !dbg !1990
  %3 = load i32* %2, align 4, !dbg !1990
  %int_cast_to_i64 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1990
  %4 = lshr i32 %3, 24, !dbg !1990
  %bf.clear = and i32 %4, 127, !dbg !1990
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !1990
  br i1 %cmp, label %do.body, label %lor.lhs.false, !dbg !1990

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.http_parser** %parser.addr, align 8, !dbg !1990
  %6 = bitcast %struct.http_parser* %5 to i8*, !dbg !1990
  %bf.field.offs1 = getelementptr i8* %6, i32 20, !dbg !1990
  %7 = bitcast i8* %bf.field.offs1 to i32*, !dbg !1990
  %8 = load i32* %7, align 4, !dbg !1990
  %int_cast_to_i641 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i641), !dbg !1990
  %9 = lshr i32 %8, 24, !dbg !1990
  %bf.clear2 = and i32 %9, 127, !dbg !1990
  %cmp3 = icmp eq i32 %bf.clear2, 28, !dbg !1990
  br i1 %cmp3, label %do.body, label %if.else, !dbg !1990

do.body:                                          ; preds = %entry, %lor.lhs.false
  %10 = load i32* %paused.addr, align 4, !dbg !1992
  %tobool = icmp ne i32 %10, 0, !dbg !1992
  %cond = select i1 %tobool, i32 28, i32 0, !dbg !1992
  %11 = load %struct.http_parser** %parser.addr, align 8, !dbg !1992
  %bf.value = and i32 %cond, 127, !dbg !1992
  %12 = bitcast %struct.http_parser* %11 to i8*, !dbg !1992
  %bf.field.offs4 = getelementptr i8* %12, i32 20, !dbg !1992
  %13 = bitcast i8* %bf.field.offs4 to i32*, !dbg !1992
  %14 = and i32 %bf.value, 127, !dbg !1992
  %int_cast_to_i642 = zext i32 24 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i642), !dbg !1992
  %15 = shl i32 %14, 24, !dbg !1992
  %16 = load i32* %13, align 4, !dbg !1992
  %17 = and i32 %16, -2130706433, !dbg !1992
  %18 = or i32 %17, %15, !dbg !1992
  store i32 %18, i32* %13, align 4, !dbg !1992
  ret void, !dbg !1995

if.else:                                          ; preds = %lor.lhs.false
  call void @__assert_fail(i8* getelementptr inbounds ([49 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2407, i8* getelementptr inbounds ([43 x i8]* @__PRETTY_FUNCTION__.http_parser_pause, i32 0, i32 0)
  unreachable, !dbg !1996
}

define i32 @http_body_is_final(%struct.http_parser* %parser) nounwind uwtable {
entry:
  %parser.addr = alloca %struct.http_parser*, align 8
  store %struct.http_parser* %parser, %struct.http_parser** %parser.addr, align 8
  %0 = load %struct.http_parser** %parser.addr, align 8, !dbg !1998
  %1 = bitcast %struct.http_parser* %0 to i32*, !dbg !1998
  %2 = load i32* %1, align 8, !dbg !1998
  %int_cast_to_i64 = zext i32 9 to i64
  call void @klee_overshift_check(i64 32, i64 %int_cast_to_i64), !dbg !1998
  %3 = lshr i32 %2, 9, !dbg !1998
  %bf.clear = and i32 %3, 127, !dbg !1998
  %cmp = icmp eq i32 %bf.clear, 62, !dbg !1998
  %conv = zext i1 %cmp to i32, !dbg !1998
  ret i32 %conv, !dbg !1998
}

define i64 @http_parser_version() nounwind uwtable {
entry:
  ret i64 132098, !dbg !2000
}

define i32 @main(i32 %argc, i8** %argv) nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %parser = alloca %struct.http_parser, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %start = alloca %struct.timeval, align 8
  %end = alloca %struct.timeval, align 8
  %rps = alloca float, align 4
  %parsed = alloca i64, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) nounwind, !dbg !2002
  store i32 %call, i32* %err, align 4, !dbg !2002
  %0 = load i32* %err, align 4, !dbg !2004
  %cmp = icmp eq i32 %0, 0, !dbg !2004
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !2004

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2469, i8* getelementptr inbounds ([23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) noreturn nou
  unreachable, !dbg !2004

cond.end:                                         ; preds = %entry
  call void @http_parser_init(%struct.http_parser* %parser, i32 0), !dbg !2005
  call void @klee_make_symbolic(i8* getelementptr inbounds ([521 x i8]* @data, i32 0, i32 0), i64 520, i8* getelementptr inbounds ([5 x i8]* @.str23, i32 0, i32 0)), !dbg !2006
  %call1 = call i64 @http_parser_execute(%struct.http_parser* %parser, %struct.http_parser_settings* @settings, i8* getelementptr inbounds ([521 x i8]* @data, i32 0, i32 0), i64 520), !dbg !2007
  store i64 %call1, i64* %parsed, align 8, !dbg !2007
  %1 = load i64* %parsed, align 8, !dbg !2008
  %cmp2 = icmp eq i64 %1, 520, !dbg !2008
  br i1 %cmp2, label %cond.end5, label %cond.false4, !dbg !2008

cond.false4:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2476, i8* getelementptr inbounds ([23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) noreturn no
  unreachable, !dbg !2008

cond.end5:                                        ; preds = %cond.end
  %call6 = call i32 @gettimeofday(%struct.timeval* %end, %struct.timezone* null) nounwind, !dbg !2009
  store i32 %call6, i32* %err, align 4, !dbg !2009
  %2 = load i32* %err, align 4, !dbg !2010
  %cmp7 = icmp eq i32 %2, 0, !dbg !2010
  br i1 %cmp7, label %cond.end10, label %cond.false9, !dbg !2010

cond.false9:                                      ; preds = %cond.end5
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0), i32 2479, i8* getelementptr inbounds ([23 x i8]* @__PRETTY_FUNCTION__.main, i32 0, i32 0)) noreturn nou
  unreachable, !dbg !2010

cond.end10:                                       ; preds = %cond.end5
  ret i32 0, !dbg !2011
}

declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) nounwind

declare void @klee_make_symbolic(i8*, i64, i8*)

define internal i32 @on_info(%struct.http_parser* %p) nounwind uwtable {
entry:
  %p.addr = alloca %struct.http_parser*, align 8
  store %struct.http_parser* %p, %struct.http_parser** %p.addr, align 8
  ret i32 0, !dbg !2012
}

define internal i32 @on_data(%struct.http_parser* %p, i8* %at, i64 %length) nounwind uwtable {
entry:
  %p.addr = alloca %struct.http_parser*, align 8
  %at.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  store %struct.http_parser* %p, %struct.http_parser** %p.addr, align 8
  store i8* %at, i8** %at.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  ret i32 0, !dbg !2014
}

define internal i32 @http_parse_host_char(i32 %s, i8 signext %ch) nounwind uwtable {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %ch.addr = alloca i8, align 1
  store i32 %s, i32* %s.addr, align 4
  store i8 %ch, i8* %ch.addr, align 1
  %0 = load i32* %s.addr, align 4, !dbg !2016
  switch i32 %0, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb90
    i32 6, label %sw.bb127
    i32 8, label %sw.bb159
    i32 7, label %sw.bb165
    i32 5, label %sw.bb171
    i32 10, label %sw.bb203
    i32 9, label %sw.bb203
  ], !dbg !2016

sw.bb:                                            ; preds = %entry, %entry
  %1 = load i8* %ch.addr, align 1, !dbg !2018
  %conv = sext i8 %1 to i32, !dbg !2018
  %cmp = icmp eq i32 %conv, 64, !dbg !2018
  br i1 %cmp, label %if.then, label %if.end, !dbg !2018

if.then:                                          ; preds = %sw.bb
  store i32 4, i32* %retval, !dbg !2020
  br label %return, !dbg !2020

if.end:                                           ; preds = %sw.bb
  %2 = load i8* %ch.addr, align 1, !dbg !2022
  %conv2 = sext i8 %2 to i32, !dbg !2022
  %or = or i32 %conv2, 32, !dbg !2022
  %conv3 = trunc i32 %or to i8, !dbg !2022
  %conv4 = zext i8 %conv3 to i32, !dbg !2022
  %cmp5 = icmp sge i32 %conv4, 97, !dbg !2022
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false, !dbg !2022

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8* %ch.addr, align 1, !dbg !2022
  %conv7 = sext i8 %3 to i32, !dbg !2022
  %or8 = or i32 %conv7, 32, !dbg !2022
  %conv9 = trunc i32 %or8 to i8, !dbg !2022
  %conv10 = zext i8 %conv9 to i32, !dbg !2022
  %cmp11 = icmp sle i32 %conv10, 122, !dbg !2022
  br i1 %cmp11, label %if.then88, label %lor.lhs.false, !dbg !2022

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %4 = load i8* %ch.addr, align 1, !dbg !2022
  %conv13 = sext i8 %4 to i32, !dbg !2022
  %cmp14 = icmp sge i32 %conv13, 48, !dbg !2022
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false20, !dbg !2022

land.lhs.true16:                                  ; preds = %lor.lhs.false
  %5 = load i8* %ch.addr, align 1, !dbg !2022
  %conv17 = sext i8 %5 to i32, !dbg !2022
  %cmp18 = icmp sle i32 %conv17, 57, !dbg !2022
  br i1 %cmp18, label %if.then88, label %lor.lhs.false20, !dbg !2022

lor.lhs.false20:                                  ; preds = %land.lhs.true16, %lor.lhs.false
  %6 = load i8* %ch.addr, align 1, !dbg !2022
  %conv21 = sext i8 %6 to i32, !dbg !2022
  %cmp22 = icmp eq i32 %conv21, 45, !dbg !2022
  br i1 %cmp22, label %if.then88, label %lor.lhs.false24, !dbg !2022

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %7 = load i8* %ch.addr, align 1, !dbg !2022
  %conv25 = sext i8 %7 to i32, !dbg !2022
  %cmp26 = icmp eq i32 %conv25, 95, !dbg !2022
  br i1 %cmp26, label %if.then88, label %lor.lhs.false28, !dbg !2022

lor.lhs.false28:                                  ; preds = %lor.lhs.false24
  %8 = load i8* %ch.addr, align 1, !dbg !2022
  %conv29 = sext i8 %8 to i32, !dbg !2022
  %cmp30 = icmp eq i32 %conv29, 46, !dbg !2022
  br i1 %cmp30, label %if.then88, label %lor.lhs.false32, !dbg !2022

lor.lhs.false32:                                  ; preds = %lor.lhs.false28
  %9 = load i8* %ch.addr, align 1, !dbg !2022
  %conv33 = sext i8 %9 to i32, !dbg !2022
  %cmp34 = icmp eq i32 %conv33, 33, !dbg !2022
  br i1 %cmp34, label %if.then88, label %lor.lhs.false36, !dbg !2022

lor.lhs.false36:                                  ; preds = %lor.lhs.false32
  %10 = load i8* %ch.addr, align 1, !dbg !2022
  %conv37 = sext i8 %10 to i32, !dbg !2022
  %cmp38 = icmp eq i32 %conv37, 126, !dbg !2022
  br i1 %cmp38, label %if.then88, label %lor.lhs.false40, !dbg !2022

lor.lhs.false40:                                  ; preds = %lor.lhs.false36
  %11 = load i8* %ch.addr, align 1, !dbg !2022
  %conv41 = sext i8 %11 to i32, !dbg !2022
  %cmp42 = icmp eq i32 %conv41, 42, !dbg !2022
  br i1 %cmp42, label %if.then88, label %lor.lhs.false44, !dbg !2022

lor.lhs.false44:                                  ; preds = %lor.lhs.false40
  %12 = load i8* %ch.addr, align 1, !dbg !2022
  %conv45 = sext i8 %12 to i32, !dbg !2022
  %cmp46 = icmp eq i32 %conv45, 39, !dbg !2022
  br i1 %cmp46, label %if.then88, label %lor.lhs.false48, !dbg !2022

lor.lhs.false48:                                  ; preds = %lor.lhs.false44
  %13 = load i8* %ch.addr, align 1, !dbg !2022
  %conv49 = sext i8 %13 to i32, !dbg !2022
  %cmp50 = icmp eq i32 %conv49, 40, !dbg !2022
  br i1 %cmp50, label %if.then88, label %lor.lhs.false52, !dbg !2022

lor.lhs.false52:                                  ; preds = %lor.lhs.false48
  %14 = load i8* %ch.addr, align 1, !dbg !2022
  %conv53 = sext i8 %14 to i32, !dbg !2022
  %cmp54 = icmp eq i32 %conv53, 41, !dbg !2022
  br i1 %cmp54, label %if.then88, label %lor.lhs.false56, !dbg !2022

lor.lhs.false56:                                  ; preds = %lor.lhs.false52
  %15 = load i8* %ch.addr, align 1, !dbg !2022
  %conv57 = sext i8 %15 to i32, !dbg !2022
  %cmp58 = icmp eq i32 %conv57, 37, !dbg !2022
  br i1 %cmp58, label %if.then88, label %lor.lhs.false60, !dbg !2022

lor.lhs.false60:                                  ; preds = %lor.lhs.false56
  %16 = load i8* %ch.addr, align 1, !dbg !2022
  %conv61 = sext i8 %16 to i32, !dbg !2022
  %cmp62 = icmp eq i32 %conv61, 59, !dbg !2022
  br i1 %cmp62, label %if.then88, label %lor.lhs.false64, !dbg !2022

lor.lhs.false64:                                  ; preds = %lor.lhs.false60
  %17 = load i8* %ch.addr, align 1, !dbg !2022
  %conv65 = sext i8 %17 to i32, !dbg !2022
  %cmp66 = icmp eq i32 %conv65, 58, !dbg !2022
  br i1 %cmp66, label %if.then88, label %lor.lhs.false68, !dbg !2022

lor.lhs.false68:                                  ; preds = %lor.lhs.false64
  %18 = load i8* %ch.addr, align 1, !dbg !2022
  %conv69 = sext i8 %18 to i32, !dbg !2022
  %cmp70 = icmp eq i32 %conv69, 38, !dbg !2022
  br i1 %cmp70, label %if.then88, label %lor.lhs.false72, !dbg !2022

lor.lhs.false72:                                  ; preds = %lor.lhs.false68
  %19 = load i8* %ch.addr, align 1, !dbg !2022
  %conv73 = sext i8 %19 to i32, !dbg !2022
  %cmp74 = icmp eq i32 %conv73, 61, !dbg !2022
  br i1 %cmp74, label %if.then88, label %lor.lhs.false76, !dbg !2022

lor.lhs.false76:                                  ; preds = %lor.lhs.false72
  %20 = load i8* %ch.addr, align 1, !dbg !2022
  %conv77 = sext i8 %20 to i32, !dbg !2022
  %cmp78 = icmp eq i32 %conv77, 43, !dbg !2022
  br i1 %cmp78, label %if.then88, label %lor.lhs.false80, !dbg !2022

lor.lhs.false80:                                  ; preds = %lor.lhs.false76
  %21 = load i8* %ch.addr, align 1, !dbg !2022
  %conv81 = sext i8 %21 to i32, !dbg !2022
  %cmp82 = icmp eq i32 %conv81, 36, !dbg !2022
  br i1 %cmp82, label %if.then88, label %lor.lhs.false84, !dbg !2022

lor.lhs.false84:                                  ; preds = %lor.lhs.false80
  %22 = load i8* %ch.addr, align 1, !dbg !2022
  %conv85 = sext i8 %22 to i32, !dbg !2022
  %cmp86 = icmp eq i32 %conv85, 44, !dbg !2022
  br i1 %cmp86, label %if.then88, label %sw.epilog, !dbg !2022

if.then88:                                        ; preds = %lor.lhs.false84, %lor.lhs.false80, %lor.lhs.false76, %lor.lhs.false72, %lor.lhs.false68, %lor.lhs.false64, %lor.lhs.false60, %lor.lhs.false56, %lor.lhs.false52, %lor.lhs.false48, %lor.lhs.false
  store i32 3, i32* %retval, !dbg !2023
  br label %return, !dbg !2023

sw.bb90:                                          ; preds = %entry
  %23 = load i8* %ch.addr, align 1, !dbg !2025
  %conv91 = sext i8 %23 to i32, !dbg !2025
  %cmp92 = icmp eq i32 %conv91, 91, !dbg !2025
  br i1 %cmp92, label %if.then94, label %if.end95, !dbg !2025

if.then94:                                        ; preds = %sw.bb90
  store i32 5, i32* %retval, !dbg !2026
  br label %return, !dbg !2026

if.end95:                                         ; preds = %sw.bb90
  %24 = load i8* %ch.addr, align 1, !dbg !2028
  %conv96 = sext i8 %24 to i32, !dbg !2028
  %or97 = or i32 %conv96, 32, !dbg !2028
  %conv98 = trunc i32 %or97 to i8, !dbg !2028
  %conv99 = zext i8 %conv98 to i32, !dbg !2028
  %cmp100 = icmp sge i32 %conv99, 97, !dbg !2028
  br i1 %cmp100, label %land.lhs.true102, label %lor.lhs.false109, !dbg !2028

land.lhs.true102:                                 ; preds = %if.end95
  %25 = load i8* %ch.addr, align 1, !dbg !2028
  %conv103 = sext i8 %25 to i32, !dbg !2028
  %or104 = or i32 %conv103, 32, !dbg !2028
  %conv105 = trunc i32 %or104 to i8, !dbg !2028
  %conv106 = zext i8 %conv105 to i32, !dbg !2028
  %cmp107 = icmp sle i32 %conv106, 122, !dbg !2028
  br i1 %cmp107, label %if.then125, label %lor.lhs.false109, !dbg !2028

lor.lhs.false109:                                 ; preds = %land.lhs.true102, %if.end95
  %26 = load i8* %ch.addr, align 1, !dbg !2028
  %conv110 = sext i8 %26 to i32, !dbg !2028
  %cmp111 = icmp sge i32 %conv110, 48, !dbg !2028
  br i1 %cmp111, label %land.lhs.true113, label %lor.lhs.false117, !dbg !2028

land.lhs.true113:                                 ; preds = %lor.lhs.false109
  %27 = load i8* %ch.addr, align 1, !dbg !2028
  %conv114 = sext i8 %27 to i32, !dbg !2028
  %cmp115 = icmp sle i32 %conv114, 57, !dbg !2028
  br i1 %cmp115, label %if.then125, label %lor.lhs.false117, !dbg !2028

lor.lhs.false117:                                 ; preds = %land.lhs.true113, %lor.lhs.false109
  %28 = load i8* %ch.addr, align 1, !dbg !2028
  %conv118 = sext i8 %28 to i32, !dbg !2028
  %cmp119 = icmp eq i32 %conv118, 46, !dbg !2028
  br i1 %cmp119, label %if.then125, label %lor.lhs.false121, !dbg !2028

lor.lhs.false121:                                 ; preds = %lor.lhs.false117
  %29 = load i8* %ch.addr, align 1, !dbg !2028
  %conv122 = sext i8 %29 to i32, !dbg !2028
  %cmp123 = icmp eq i32 %conv122, 45, !dbg !2028
  br i1 %cmp123, label %if.then125, label %sw.epilog, !dbg !2028

if.then125:                                       ; preds = %lor.lhs.false121, %lor.lhs.false117, %land.lhs.true113, %land.lhs.true102
  store i32 6, i32* %retval, !dbg !2029
  br label %return, !dbg !2029

sw.bb127:                                         ; preds = %entry
  %30 = load i8* %ch.addr, align 1, !dbg !2031
  %conv128 = sext i8 %30 to i32, !dbg !2031
  %or129 = or i32 %conv128, 32, !dbg !2031
  %conv130 = trunc i32 %or129 to i8, !dbg !2031
  %conv131 = zext i8 %conv130 to i32, !dbg !2031
  %cmp132 = icmp sge i32 %conv131, 97, !dbg !2031
  br i1 %cmp132, label %land.lhs.true134, label %lor.lhs.false141, !dbg !2031

land.lhs.true134:                                 ; preds = %sw.bb127
  %31 = load i8* %ch.addr, align 1, !dbg !2031
  %conv135 = sext i8 %31 to i32, !dbg !2031
  %or136 = or i32 %conv135, 32, !dbg !2031
  %conv137 = trunc i32 %or136 to i8, !dbg !2031
  %conv138 = zext i8 %conv137 to i32, !dbg !2031
  %cmp139 = icmp sle i32 %conv138, 122, !dbg !2031
  br i1 %cmp139, label %if.then157, label %lor.lhs.false141, !dbg !2031

lor.lhs.false141:                                 ; preds = %land.lhs.true134, %sw.bb127
  %32 = load i8* %ch.addr, align 1, !dbg !2031
  %conv142 = sext i8 %32 to i32, !dbg !2031
  %cmp143 = icmp sge i32 %conv142, 48, !dbg !2031
  br i1 %cmp143, label %land.lhs.true145, label %lor.lhs.false149, !dbg !2031

land.lhs.true145:                                 ; preds = %lor.lhs.false141
  %33 = load i8* %ch.addr, align 1, !dbg !2031
  %conv146 = sext i8 %33 to i32, !dbg !2031
  %cmp147 = icmp sle i32 %conv146, 57, !dbg !2031
  br i1 %cmp147, label %if.then157, label %lor.lhs.false149, !dbg !2031

lor.lhs.false149:                                 ; preds = %land.lhs.true145, %lor.lhs.false141
  %34 = load i8* %ch.addr, align 1, !dbg !2031
  %conv150 = sext i8 %34 to i32, !dbg !2031
  %cmp151 = icmp eq i32 %conv150, 46, !dbg !2031
  br i1 %cmp151, label %if.then157, label %lor.lhs.false153, !dbg !2031

lor.lhs.false153:                                 ; preds = %lor.lhs.false149
  %35 = load i8* %ch.addr, align 1, !dbg !2031
  %conv154 = sext i8 %35 to i32, !dbg !2031
  %cmp155 = icmp eq i32 %conv154, 45, !dbg !2031
  br i1 %cmp155, label %if.then157, label %sw.bb159, !dbg !2031

if.then157:                                       ; preds = %lor.lhs.false153, %lor.lhs.false149, %land.lhs.true145, %land.lhs.true134
  store i32 6, i32* %retval, !dbg !2032
  br label %return, !dbg !2032

sw.bb159:                                         ; preds = %lor.lhs.false153, %entry
  %36 = load i8* %ch.addr, align 1, !dbg !2034
  %conv160 = sext i8 %36 to i32, !dbg !2034
  %cmp161 = icmp eq i32 %conv160, 58, !dbg !2034
  br i1 %cmp161, label %if.then163, label %sw.epilog, !dbg !2034

if.then163:                                       ; preds = %sw.bb159
  store i32 9, i32* %retval, !dbg !2035
  br label %return, !dbg !2035

sw.bb165:                                         ; preds = %entry
  %37 = load i8* %ch.addr, align 1, !dbg !2037
  %conv166 = sext i8 %37 to i32, !dbg !2037
  %cmp167 = icmp eq i32 %conv166, 93, !dbg !2037
  br i1 %cmp167, label %if.then169, label %sw.bb171, !dbg !2037

if.then169:                                       ; preds = %sw.bb165
  store i32 8, i32* %retval, !dbg !2038
  br label %return, !dbg !2038

sw.bb171:                                         ; preds = %sw.bb165, %entry
  %38 = load i8* %ch.addr, align 1, !dbg !2040
  %conv172 = sext i8 %38 to i32, !dbg !2040
  %cmp173 = icmp sge i32 %conv172, 48, !dbg !2040
  br i1 %cmp173, label %land.lhs.true175, label %lor.lhs.false179, !dbg !2040

land.lhs.true175:                                 ; preds = %sw.bb171
  %39 = load i8* %ch.addr, align 1, !dbg !2040
  %conv176 = sext i8 %39 to i32, !dbg !2040
  %cmp177 = icmp sle i32 %conv176, 57, !dbg !2040
  br i1 %cmp177, label %if.then201, label %lor.lhs.false179, !dbg !2040

lor.lhs.false179:                                 ; preds = %land.lhs.true175, %sw.bb171
  %40 = load i8* %ch.addr, align 1, !dbg !2040
  %conv180 = sext i8 %40 to i32, !dbg !2040
  %or181 = or i32 %conv180, 32, !dbg !2040
  %conv182 = trunc i32 %or181 to i8, !dbg !2040
  %conv183 = zext i8 %conv182 to i32, !dbg !2040
  %cmp184 = icmp sge i32 %conv183, 97, !dbg !2040
  br i1 %cmp184, label %land.lhs.true186, label %lor.lhs.false193, !dbg !2040

land.lhs.true186:                                 ; preds = %lor.lhs.false179
  %41 = load i8* %ch.addr, align 1, !dbg !2040
  %conv187 = sext i8 %41 to i32, !dbg !2040
  %or188 = or i32 %conv187, 32, !dbg !2040
  %conv189 = trunc i32 %or188 to i8, !dbg !2040
  %conv190 = zext i8 %conv189 to i32, !dbg !2040
  %cmp191 = icmp sle i32 %conv190, 102, !dbg !2040
  br i1 %cmp191, label %if.then201, label %lor.lhs.false193, !dbg !2040

lor.lhs.false193:                                 ; preds = %land.lhs.true186, %lor.lhs.false179
  %42 = load i8* %ch.addr, align 1, !dbg !2040
  %conv194 = sext i8 %42 to i32, !dbg !2040
  %cmp195 = icmp eq i32 %conv194, 58, !dbg !2040
  br i1 %cmp195, label %if.then201, label %lor.lhs.false197, !dbg !2040

lor.lhs.false197:                                 ; preds = %lor.lhs.false193
  %43 = load i8* %ch.addr, align 1, !dbg !2040
  %conv198 = sext i8 %43 to i32, !dbg !2040
  %cmp199 = icmp eq i32 %conv198, 46, !dbg !2040
  br i1 %cmp199, label %if.then201, label %sw.epilog, !dbg !2040

if.then201:                                       ; preds = %lor.lhs.false197, %lor.lhs.false193, %land.lhs.true186, %land.lhs.true175
  store i32 7, i32* %retval, !dbg !2041
  br label %return, !dbg !2041

sw.bb203:                                         ; preds = %entry, %entry
  %44 = load i8* %ch.addr, align 1, !dbg !2043
  %conv204 = sext i8 %44 to i32, !dbg !2043
  %cmp205 = icmp sge i32 %conv204, 48, !dbg !2043
  br i1 %cmp205, label %land.lhs.true207, label %sw.epilog, !dbg !2043

land.lhs.true207:                                 ; preds = %sw.bb203
  %45 = load i8* %ch.addr, align 1, !dbg !2043
  %conv208 = sext i8 %45 to i32, !dbg !2043
  %cmp209 = icmp sle i32 %conv208, 57, !dbg !2043
  br i1 %cmp209, label %if.then211, label %sw.epilog, !dbg !2043

if.then211:                                       ; preds = %land.lhs.true207
  store i32 10, i32* %retval, !dbg !2044
  br label %return, !dbg !2044

sw.epilog:                                        ; preds = %entry, %sw.bb203, %land.lhs.true207, %lor.lhs.false197, %sw.bb159, %lor.lhs.false121, %lor.lhs.false84
  store i32 1, i32* %retval, !dbg !2046
  br label %return, !dbg !2046

return:                                           ; preds = %sw.epilog, %if.then211, %if.then201, %if.then169, %if.then163, %if.then157, %if.then125, %if.then94, %if.then88, %if.then
  %46 = load i32* %retval, !dbg !2047
  ret i32 %46, !dbg !2047
}

define void @klee_div_zero_check(i64 %z) nounwind uwtable {
entry:
  %cmp = icmp eq i64 %z, 0, !dbg !2048
  br i1 %cmp, label %if.then, label %if.end, !dbg !2048

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([22 x i8]* @.str112, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([15 x i8]* @.str1113, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2114, i64 0, i64 0)) noreturn nounwind
  unreachable, !dbg !2050

if.end:                                           ; preds = %entry
  ret void, !dbg !2051
}

declare void @klee_report_error(i8*, i32, i8*, i8*) noreturn

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @klee_int(i8* %name) nounwind uwtable {
entry:
  %x = alloca i32, align 4
  %0 = bitcast i32* %x to i8*, !dbg !2052
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) nounwind, !dbg !2052
  %1 = load i32* %x, align 4, !dbg !2053, !tbaa !2054
  ret i32 %1, !dbg !2053
}

define void @klee_overshift_check(i64 %bitWidth, i64 %shift) nounwind uwtable {
entry:
  %cmp = icmp ult i64 %shift, %bitWidth, !dbg !2057
  br i1 %cmp, label %if.end, label %if.then, !dbg !2057

if.then:                                          ; preds = %entry
  tail call void @klee_report_error(i8* getelementptr inbounds ([8 x i8]* @.str3115, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([16 x i8]* @.str14116, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25117, i64 0, i64 0)) noreturn nounwi
  unreachable, !dbg !2059

if.end:                                           ; preds = %entry
  ret void, !dbg !2061
}

define i32 @klee_range(i32 %start, i32 %end, i8* %name) nounwind uwtable {
entry:
  %x = alloca i32, align 4
  %cmp = icmp slt i32 %start, %end, !dbg !2062
  br i1 %cmp, label %if.end, label %if.then, !dbg !2062

if.then:                                          ; preds = %entry
  call void @klee_report_error(i8* getelementptr inbounds ([13 x i8]* @.str6118, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([14 x i8]* @.str17119, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str28120, i64 0, i64 0)) noreturn nounwind, 
  unreachable, !dbg !2063

if.end:                                           ; preds = %entry
  %add = add nsw i32 %start, 1, !dbg !2064
  %cmp1 = icmp eq i32 %add, %end, !dbg !2064
  br i1 %cmp1, label %return, label %if.else, !dbg !2064

if.else:                                          ; preds = %if.end
  %0 = bitcast i32* %x to i8*, !dbg !2065
  call void @klee_make_symbolic(i8* %0, i64 4, i8* %name) nounwind, !dbg !2065
  %cmp3 = icmp eq i32 %start, 0, !dbg !2067
  %1 = load i32* %x, align 4, !dbg !2068, !tbaa !2054
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !2067

if.then4:                                         ; preds = %if.else
  %cmp5 = icmp ult i32 %1, %end, !dbg !2068
  %conv6 = zext i1 %cmp5 to i64, !dbg !2068
  call void @klee_assume(i64 %conv6) nounwind, !dbg !2068
  br label %if.end14, !dbg !2070

if.else7:                                         ; preds = %if.else
  %cmp8 = icmp sge i32 %1, %start, !dbg !2071
  %conv10 = zext i1 %cmp8 to i64, !dbg !2071
  call void @klee_assume(i64 %conv10) nounwind, !dbg !2071
  %2 = load i32* %x, align 4, !dbg !2073, !tbaa !2054
  %cmp11 = icmp slt i32 %2, %end, !dbg !2073
  %conv13 = zext i1 %cmp11 to i64, !dbg !2073
  call void @klee_assume(i64 %conv13) nounwind, !dbg !2073
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %if.then4
  %3 = load i32* %x, align 4, !dbg !2074, !tbaa !2054
  br label %return, !dbg !2074

return:                                           ; preds = %if.end14, %if.end
  %retval.0 = phi i32 [ %3, %if.end14 ], [ %start, %if.end ]
  ret i32 %retval.0, !dbg !2075
}

declare void @klee_assume(i64)

define weak i8* @mempcpy(i8* %destaddr, i8* %srcaddr, i64 %len) nounwind uwtable {
entry:
  %cmp3 = icmp eq i64 %len, 0, !dbg !2076
  br i1 %cmp3, label %while.end, label %while.body, !dbg !2076

while.body:                                       ; preds = %while.body, %entry
  %src.06 = phi i8* [ %incdec.ptr, %while.body ], [ %srcaddr, %entry ]
  %dest.05 = phi i8* [ %incdec.ptr1, %while.body ], [ %destaddr, %entry ]
  %len.addr.04 = phi i64 [ %dec, %while.body ], [ %len, %entry ]
  %dec = add i64 %len.addr.04, -1, !dbg !2076
  %incdec.ptr = getelementptr inbounds i8* %src.06, i64 1, !dbg !2077
  %0 = load i8* %src.06, align 1, !dbg !2077, !tbaa !2055
  %incdec.ptr1 = getelementptr inbounds i8* %dest.05, i64 1, !dbg !2077
  store i8 %0, i8* %dest.05, align 1, !dbg !2077, !tbaa !2055
  %cmp = icmp eq i64 %dec, 0, !dbg !2076
  br i1 %cmp, label %while.cond.while.end_crit_edge, label %while.body, !dbg !2076

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %scevgep = getelementptr i8* %destaddr, i64 %len
  br label %while.end, !dbg !2076

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %dest.0.lcssa = phi i8* [ %scevgep, %while.cond.while.end_crit_edge ], [ %destaddr, %entry ]
  ret i8* %dest.0.lcssa, !dbg !2078
}

define weak i8* @memset(i8* %dst, i32 %s, i64 %count) nounwind uwtable {
entry:
  %cmp2 = icmp eq i64 %count, 0, !dbg !2079
  br i1 %cmp2, label %while.end, label %while.body.lr.ph, !dbg !2079

while.body.lr.ph:                                 ; preds = %entry
  %conv = trunc i32 %s to i8, !dbg !2080
  br label %while.body, !dbg !2079

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %a.04 = phi i8* [ %dst, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %count.addr.03 = phi i64 [ %count, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add i64 %count.addr.03, -1, !dbg !2079
  %incdec.ptr = getelementptr inbounds i8* %a.04, i64 1, !dbg !2080
  store volatile i8 %conv, i8* %a.04, align 1, !dbg !2080, !tbaa !2055
  %cmp = icmp eq i64 %dec, 0, !dbg !2079
  br i1 %cmp, label %while.end, label %while.body, !dbg !2079

while.end:                                        ; preds = %while.body, %entry
  ret i8* %dst, !dbg !2081
}

!llvm.dbg.cu = !{!0, !348, !359, !371, !383, !397, !415, !431, !447}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"http_parser_main.c", metadata !"/home/userfog/klee-auto/klee/examples/http-parser", metadata !"clang version 3.2 (tags/RELEASE_32/final)", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3, metadata !68, metadata !101, metadata !106, metadata !135, metadata !160, metadata !169, metadata !179}
!3 = metadata !{i32 786436, null, metadata !"state", metadata !4, i32 282, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [state] [line 282, size 32, align 32, offset 0] [from ]
!4 = metadata !{i32 786473, metadata !"http_parser_main.c", metadata !"/home/userfog/klee-auto/klee/examples/http-parser", null} ; [ DW_TAG_file_type ]
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, meta
!6 = metadata !{i32 786472, metadata !"s_dead", i64 1} ; [ DW_TAG_enumerator ] [s_dead :: 1]
!7 = metadata !{i32 786472, metadata !"s_start_req_or_res", i64 2} ; [ DW_TAG_enumerator ] [s_start_req_or_res :: 2]
!8 = metadata !{i32 786472, metadata !"s_res_or_resp_H", i64 3} ; [ DW_TAG_enumerator ] [s_res_or_resp_H :: 3]
!9 = metadata !{i32 786472, metadata !"s_start_res", i64 4} ; [ DW_TAG_enumerator ] [s_start_res :: 4]
!10 = metadata !{i32 786472, metadata !"s_res_H", i64 5} ; [ DW_TAG_enumerator ] [s_res_H :: 5]
!11 = metadata !{i32 786472, metadata !"s_res_HT", i64 6} ; [ DW_TAG_enumerator ] [s_res_HT :: 6]
!12 = metadata !{i32 786472, metadata !"s_res_HTT", i64 7} ; [ DW_TAG_enumerator ] [s_res_HTT :: 7]
!13 = metadata !{i32 786472, metadata !"s_res_HTTP", i64 8} ; [ DW_TAG_enumerator ] [s_res_HTTP :: 8]
!14 = metadata !{i32 786472, metadata !"s_res_first_http_major", i64 9} ; [ DW_TAG_enumerator ] [s_res_first_http_major :: 9]
!15 = metadata !{i32 786472, metadata !"s_res_http_major", i64 10} ; [ DW_TAG_enumerator ] [s_res_http_major :: 10]
!16 = metadata !{i32 786472, metadata !"s_res_first_http_minor", i64 11} ; [ DW_TAG_enumerator ] [s_res_first_http_minor :: 11]
!17 = metadata !{i32 786472, metadata !"s_res_http_minor", i64 12} ; [ DW_TAG_enumerator ] [s_res_http_minor :: 12]
!18 = metadata !{i32 786472, metadata !"s_res_first_status_code", i64 13} ; [ DW_TAG_enumerator ] [s_res_first_status_code :: 13]
!19 = metadata !{i32 786472, metadata !"s_res_status_code", i64 14} ; [ DW_TAG_enumerator ] [s_res_status_code :: 14]
!20 = metadata !{i32 786472, metadata !"s_res_status_start", i64 15} ; [ DW_TAG_enumerator ] [s_res_status_start :: 15]
!21 = metadata !{i32 786472, metadata !"s_res_status", i64 16} ; [ DW_TAG_enumerator ] [s_res_status :: 16]
!22 = metadata !{i32 786472, metadata !"s_res_line_almost_done", i64 17} ; [ DW_TAG_enumerator ] [s_res_line_almost_done :: 17]
!23 = metadata !{i32 786472, metadata !"s_start_req", i64 18} ; [ DW_TAG_enumerator ] [s_start_req :: 18]
!24 = metadata !{i32 786472, metadata !"s_req_method", i64 19} ; [ DW_TAG_enumerator ] [s_req_method :: 19]
!25 = metadata !{i32 786472, metadata !"s_req_spaces_before_url", i64 20} ; [ DW_TAG_enumerator ] [s_req_spaces_before_url :: 20]
!26 = metadata !{i32 786472, metadata !"s_req_schema", i64 21} ; [ DW_TAG_enumerator ] [s_req_schema :: 21]
!27 = metadata !{i32 786472, metadata !"s_req_schema_slash", i64 22} ; [ DW_TAG_enumerator ] [s_req_schema_slash :: 22]
!28 = metadata !{i32 786472, metadata !"s_req_schema_slash_slash", i64 23} ; [ DW_TAG_enumerator ] [s_req_schema_slash_slash :: 23]
!29 = metadata !{i32 786472, metadata !"s_req_server_start", i64 24} ; [ DW_TAG_enumerator ] [s_req_server_start :: 24]
!30 = metadata !{i32 786472, metadata !"s_req_server", i64 25} ; [ DW_TAG_enumerator ] [s_req_server :: 25]
!31 = metadata !{i32 786472, metadata !"s_req_server_with_at", i64 26} ; [ DW_TAG_enumerator ] [s_req_server_with_at :: 26]
!32 = metadata !{i32 786472, metadata !"s_req_path", i64 27} ; [ DW_TAG_enumerator ] [s_req_path :: 27]
!33 = metadata !{i32 786472, metadata !"s_req_query_string_start", i64 28} ; [ DW_TAG_enumerator ] [s_req_query_string_start :: 28]
!34 = metadata !{i32 786472, metadata !"s_req_query_string", i64 29} ; [ DW_TAG_enumerator ] [s_req_query_string :: 29]
!35 = metadata !{i32 786472, metadata !"s_req_fragment_start", i64 30} ; [ DW_TAG_enumerator ] [s_req_fragment_start :: 30]
!36 = metadata !{i32 786472, metadata !"s_req_fragment", i64 31} ; [ DW_TAG_enumerator ] [s_req_fragment :: 31]
!37 = metadata !{i32 786472, metadata !"s_req_http_start", i64 32} ; [ DW_TAG_enumerator ] [s_req_http_start :: 32]
!38 = metadata !{i32 786472, metadata !"s_req_http_H", i64 33} ; [ DW_TAG_enumerator ] [s_req_http_H :: 33]
!39 = metadata !{i32 786472, metadata !"s_req_http_HT", i64 34} ; [ DW_TAG_enumerator ] [s_req_http_HT :: 34]
!40 = metadata !{i32 786472, metadata !"s_req_http_HTT", i64 35} ; [ DW_TAG_enumerator ] [s_req_http_HTT :: 35]
!41 = metadata !{i32 786472, metadata !"s_req_http_HTTP", i64 36} ; [ DW_TAG_enumerator ] [s_req_http_HTTP :: 36]
!42 = metadata !{i32 786472, metadata !"s_req_first_http_major", i64 37} ; [ DW_TAG_enumerator ] [s_req_first_http_major :: 37]
!43 = metadata !{i32 786472, metadata !"s_req_http_major", i64 38} ; [ DW_TAG_enumerator ] [s_req_http_major :: 38]
!44 = metadata !{i32 786472, metadata !"s_req_first_http_minor", i64 39} ; [ DW_TAG_enumerator ] [s_req_first_http_minor :: 39]
!45 = metadata !{i32 786472, metadata !"s_req_http_minor", i64 40} ; [ DW_TAG_enumerator ] [s_req_http_minor :: 40]
!46 = metadata !{i32 786472, metadata !"s_req_line_almost_done", i64 41} ; [ DW_TAG_enumerator ] [s_req_line_almost_done :: 41]
!47 = metadata !{i32 786472, metadata !"s_header_field_start", i64 42} ; [ DW_TAG_enumerator ] [s_header_field_start :: 42]
!48 = metadata !{i32 786472, metadata !"s_header_field", i64 43} ; [ DW_TAG_enumerator ] [s_header_field :: 43]
!49 = metadata !{i32 786472, metadata !"s_header_value_discard_ws", i64 44} ; [ DW_TAG_enumerator ] [s_header_value_discard_ws :: 44]
!50 = metadata !{i32 786472, metadata !"s_header_value_discard_ws_almost_done", i64 45} ; [ DW_TAG_enumerator ] [s_header_value_discard_ws_almost_done :: 45]
!51 = metadata !{i32 786472, metadata !"s_header_value_discard_lws", i64 46} ; [ DW_TAG_enumerator ] [s_header_value_discard_lws :: 46]
!52 = metadata !{i32 786472, metadata !"s_header_value_start", i64 47} ; [ DW_TAG_enumerator ] [s_header_value_start :: 47]
!53 = metadata !{i32 786472, metadata !"s_header_value", i64 48} ; [ DW_TAG_enumerator ] [s_header_value :: 48]
!54 = metadata !{i32 786472, metadata !"s_header_value_lws", i64 49} ; [ DW_TAG_enumerator ] [s_header_value_lws :: 49]
!55 = metadata !{i32 786472, metadata !"s_header_almost_done", i64 50} ; [ DW_TAG_enumerator ] [s_header_almost_done :: 50]
!56 = metadata !{i32 786472, metadata !"s_chunk_size_start", i64 51} ; [ DW_TAG_enumerator ] [s_chunk_size_start :: 51]
!57 = metadata !{i32 786472, metadata !"s_chunk_size", i64 52} ; [ DW_TAG_enumerator ] [s_chunk_size :: 52]
!58 = metadata !{i32 786472, metadata !"s_chunk_parameters", i64 53} ; [ DW_TAG_enumerator ] [s_chunk_parameters :: 53]
!59 = metadata !{i32 786472, metadata !"s_chunk_size_almost_done", i64 54} ; [ DW_TAG_enumerator ] [s_chunk_size_almost_done :: 54]
!60 = metadata !{i32 786472, metadata !"s_headers_almost_done", i64 55} ; [ DW_TAG_enumerator ] [s_headers_almost_done :: 55]
!61 = metadata !{i32 786472, metadata !"s_headers_done", i64 56} ; [ DW_TAG_enumerator ] [s_headers_done :: 56]
!62 = metadata !{i32 786472, metadata !"s_chunk_data", i64 57} ; [ DW_TAG_enumerator ] [s_chunk_data :: 57]
!63 = metadata !{i32 786472, metadata !"s_chunk_data_almost_done", i64 58} ; [ DW_TAG_enumerator ] [s_chunk_data_almost_done :: 58]
!64 = metadata !{i32 786472, metadata !"s_chunk_data_done", i64 59} ; [ DW_TAG_enumerator ] [s_chunk_data_done :: 59]
!65 = metadata !{i32 786472, metadata !"s_body_identity", i64 60} ; [ DW_TAG_enumerator ] [s_body_identity :: 60]
!66 = metadata !{i32 786472, metadata !"s_body_identity_eof", i64 61} ; [ DW_TAG_enumerator ] [s_body_identity_eof :: 61]
!67 = metadata !{i32 786472, metadata !"s_message_done", i64 62} ; [ DW_TAG_enumerator ] [s_message_done :: 62]
!68 = metadata !{i32 786436, null, metadata !"http_errno", metadata !69, i32 194, i64 32, i64 32, i32 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [http_errno] [line 194, size 32, align 32, offset 0] [from ]
!69 = metadata !{i32 786473, metadata !"./http_parser.h", metadata !"/home/userfog/klee-auto/klee/examples/http-parser", null} ; [ DW_TAG_file_type ]
!70 = metadata !{metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87,
!71 = metadata !{i32 786472, metadata !"HPE_OK", i64 0} ; [ DW_TAG_enumerator ] [HPE_OK :: 0]
!72 = metadata !{i32 786472, metadata !"HPE_CB_message_begin", i64 1} ; [ DW_TAG_enumerator ] [HPE_CB_message_begin :: 1]
!73 = metadata !{i32 786472, metadata !"HPE_CB_url", i64 2} ; [ DW_TAG_enumerator ] [HPE_CB_url :: 2]
!74 = metadata !{i32 786472, metadata !"HPE_CB_header_field", i64 3} ; [ DW_TAG_enumerator ] [HPE_CB_header_field :: 3]
!75 = metadata !{i32 786472, metadata !"HPE_CB_header_value", i64 4} ; [ DW_TAG_enumerator ] [HPE_CB_header_value :: 4]
!76 = metadata !{i32 786472, metadata !"HPE_CB_headers_complete", i64 5} ; [ DW_TAG_enumerator ] [HPE_CB_headers_complete :: 5]
!77 = metadata !{i32 786472, metadata !"HPE_CB_body", i64 6} ; [ DW_TAG_enumerator ] [HPE_CB_body :: 6]
!78 = metadata !{i32 786472, metadata !"HPE_CB_message_complete", i64 7} ; [ DW_TAG_enumerator ] [HPE_CB_message_complete :: 7]
!79 = metadata !{i32 786472, metadata !"HPE_CB_status", i64 8} ; [ DW_TAG_enumerator ] [HPE_CB_status :: 8]
!80 = metadata !{i32 786472, metadata !"HPE_INVALID_EOF_STATE", i64 9} ; [ DW_TAG_enumerator ] [HPE_INVALID_EOF_STATE :: 9]
!81 = metadata !{i32 786472, metadata !"HPE_HEADER_OVERFLOW", i64 10} ; [ DW_TAG_enumerator ] [HPE_HEADER_OVERFLOW :: 10]
!82 = metadata !{i32 786472, metadata !"HPE_CLOSED_CONNECTION", i64 11} ; [ DW_TAG_enumerator ] [HPE_CLOSED_CONNECTION :: 11]
!83 = metadata !{i32 786472, metadata !"HPE_INVALID_VERSION", i64 12} ; [ DW_TAG_enumerator ] [HPE_INVALID_VERSION :: 12]
!84 = metadata !{i32 786472, metadata !"HPE_INVALID_STATUS", i64 13} ; [ DW_TAG_enumerator ] [HPE_INVALID_STATUS :: 13]
!85 = metadata !{i32 786472, metadata !"HPE_INVALID_METHOD", i64 14} ; [ DW_TAG_enumerator ] [HPE_INVALID_METHOD :: 14]
!86 = metadata !{i32 786472, metadata !"HPE_INVALID_URL", i64 15} ; [ DW_TAG_enumerator ] [HPE_INVALID_URL :: 15]
!87 = metadata !{i32 786472, metadata !"HPE_INVALID_HOST", i64 16} ; [ DW_TAG_enumerator ] [HPE_INVALID_HOST :: 16]
!88 = metadata !{i32 786472, metadata !"HPE_INVALID_PORT", i64 17} ; [ DW_TAG_enumerator ] [HPE_INVALID_PORT :: 17]
!89 = metadata !{i32 786472, metadata !"HPE_INVALID_PATH", i64 18} ; [ DW_TAG_enumerator ] [HPE_INVALID_PATH :: 18]
!90 = metadata !{i32 786472, metadata !"HPE_INVALID_QUERY_STRING", i64 19} ; [ DW_TAG_enumerator ] [HPE_INVALID_QUERY_STRING :: 19]
!91 = metadata !{i32 786472, metadata !"HPE_INVALID_FRAGMENT", i64 20} ; [ DW_TAG_enumerator ] [HPE_INVALID_FRAGMENT :: 20]
!92 = metadata !{i32 786472, metadata !"HPE_LF_EXPECTED", i64 21} ; [ DW_TAG_enumerator ] [HPE_LF_EXPECTED :: 21]
!93 = metadata !{i32 786472, metadata !"HPE_INVALID_HEADER_TOKEN", i64 22} ; [ DW_TAG_enumerator ] [HPE_INVALID_HEADER_TOKEN :: 22]
!94 = metadata !{i32 786472, metadata !"HPE_INVALID_CONTENT_LENGTH", i64 23} ; [ DW_TAG_enumerator ] [HPE_INVALID_CONTENT_LENGTH :: 23]
!95 = metadata !{i32 786472, metadata !"HPE_INVALID_CHUNK_SIZE", i64 24} ; [ DW_TAG_enumerator ] [HPE_INVALID_CHUNK_SIZE :: 24]
!96 = metadata !{i32 786472, metadata !"HPE_INVALID_CONSTANT", i64 25} ; [ DW_TAG_enumerator ] [HPE_INVALID_CONSTANT :: 25]
!97 = metadata !{i32 786472, metadata !"HPE_INVALID_INTERNAL_STATE", i64 26} ; [ DW_TAG_enumerator ] [HPE_INVALID_INTERNAL_STATE :: 26]
!98 = metadata !{i32 786472, metadata !"HPE_STRICT", i64 27} ; [ DW_TAG_enumerator ] [HPE_STRICT :: 27]
!99 = metadata !{i32 786472, metadata !"HPE_PAUSED", i64 28} ; [ DW_TAG_enumerator ] [HPE_PAUSED :: 28]
!100 = metadata !{i32 786472, metadata !"HPE_UNKNOWN", i64 29} ; [ DW_TAG_enumerator ] [HPE_UNKNOWN :: 29]
!101 = metadata !{i32 786436, null, metadata !"http_parser_type", metadata !69, i32 131, i64 32, i64 32, i32 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [http_parser_type] [line 131, size 32, align 32, offset 0] [from ]
!102 = metadata !{metadata !103, metadata !104, metadata !105}
!103 = metadata !{i32 786472, metadata !"HTTP_REQUEST", i64 0} ; [ DW_TAG_enumerator ] [HTTP_REQUEST :: 0]
!104 = metadata !{i32 786472, metadata !"HTTP_RESPONSE", i64 1} ; [ DW_TAG_enumerator ] [HTTP_RESPONSE :: 1]
!105 = metadata !{i32 786472, metadata !"HTTP_BOTH", i64 2} ; [ DW_TAG_enumerator ] [HTTP_BOTH :: 2]
!106 = metadata !{i32 786436, null, metadata !"http_method", metadata !69, i32 123, i64 32, i64 32, i32 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [http_method] [line 123, size 32, align 32, offset 0] [from ]
!107 = metadata !{metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !1
!108 = metadata !{i32 786472, metadata !"HTTP_DELETE", i64 0} ; [ DW_TAG_enumerator ] [HTTP_DELETE :: 0]
!109 = metadata !{i32 786472, metadata !"HTTP_GET", i64 1} ; [ DW_TAG_enumerator ] [HTTP_GET :: 1]
!110 = metadata !{i32 786472, metadata !"HTTP_HEAD", i64 2} ; [ DW_TAG_enumerator ] [HTTP_HEAD :: 2]
!111 = metadata !{i32 786472, metadata !"HTTP_POST", i64 3} ; [ DW_TAG_enumerator ] [HTTP_POST :: 3]
!112 = metadata !{i32 786472, metadata !"HTTP_PUT", i64 4} ; [ DW_TAG_enumerator ] [HTTP_PUT :: 4]
!113 = metadata !{i32 786472, metadata !"HTTP_CONNECT", i64 5} ; [ DW_TAG_enumerator ] [HTTP_CONNECT :: 5]
!114 = metadata !{i32 786472, metadata !"HTTP_OPTIONS", i64 6} ; [ DW_TAG_enumerator ] [HTTP_OPTIONS :: 6]
!115 = metadata !{i32 786472, metadata !"HTTP_TRACE", i64 7} ; [ DW_TAG_enumerator ] [HTTP_TRACE :: 7]
!116 = metadata !{i32 786472, metadata !"HTTP_COPY", i64 8} ; [ DW_TAG_enumerator ] [HTTP_COPY :: 8]
!117 = metadata !{i32 786472, metadata !"HTTP_LOCK", i64 9} ; [ DW_TAG_enumerator ] [HTTP_LOCK :: 9]
!118 = metadata !{i32 786472, metadata !"HTTP_MKCOL", i64 10} ; [ DW_TAG_enumerator ] [HTTP_MKCOL :: 10]
!119 = metadata !{i32 786472, metadata !"HTTP_MOVE", i64 11} ; [ DW_TAG_enumerator ] [HTTP_MOVE :: 11]
!120 = metadata !{i32 786472, metadata !"HTTP_PROPFIND", i64 12} ; [ DW_TAG_enumerator ] [HTTP_PROPFIND :: 12]
!121 = metadata !{i32 786472, metadata !"HTTP_PROPPATCH", i64 13} ; [ DW_TAG_enumerator ] [HTTP_PROPPATCH :: 13]
!122 = metadata !{i32 786472, metadata !"HTTP_SEARCH", i64 14} ; [ DW_TAG_enumerator ] [HTTP_SEARCH :: 14]
!123 = metadata !{i32 786472, metadata !"HTTP_UNLOCK", i64 15} ; [ DW_TAG_enumerator ] [HTTP_UNLOCK :: 15]
!124 = metadata !{i32 786472, metadata !"HTTP_REPORT", i64 16} ; [ DW_TAG_enumerator ] [HTTP_REPORT :: 16]
!125 = metadata !{i32 786472, metadata !"HTTP_MKACTIVITY", i64 17} ; [ DW_TAG_enumerator ] [HTTP_MKACTIVITY :: 17]
!126 = metadata !{i32 786472, metadata !"HTTP_CHECKOUT", i64 18} ; [ DW_TAG_enumerator ] [HTTP_CHECKOUT :: 18]
!127 = metadata !{i32 786472, metadata !"HTTP_MERGE", i64 19} ; [ DW_TAG_enumerator ] [HTTP_MERGE :: 19]
!128 = metadata !{i32 786472, metadata !"HTTP_MSEARCH", i64 20} ; [ DW_TAG_enumerator ] [HTTP_MSEARCH :: 20]
!129 = metadata !{i32 786472, metadata !"HTTP_NOTIFY", i64 21} ; [ DW_TAG_enumerator ] [HTTP_NOTIFY :: 21]
!130 = metadata !{i32 786472, metadata !"HTTP_SUBSCRIBE", i64 22} ; [ DW_TAG_enumerator ] [HTTP_SUBSCRIBE :: 22]
!131 = metadata !{i32 786472, metadata !"HTTP_UNSUBSCRIBE", i64 23} ; [ DW_TAG_enumerator ] [HTTP_UNSUBSCRIBE :: 23]
!132 = metadata !{i32 786472, metadata !"HTTP_PATCH", i64 24} ; [ DW_TAG_enumerator ] [HTTP_PATCH :: 24]
!133 = metadata !{i32 786472, metadata !"HTTP_PURGE", i64 25} ; [ DW_TAG_enumerator ] [HTTP_PURGE :: 25]
!134 = metadata !{i32 786472, metadata !"HTTP_MKCALENDAR", i64 26} ; [ DW_TAG_enumerator ] [HTTP_MKCALENDAR :: 26]
!135 = metadata !{i32 786436, null, metadata !"header_states", metadata !4, i32 366, i64 32, i64 32, i32 0, i32 0, null, metadata !136, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [header_states] [line 366, size 32, align 32, offset 0] [from ]
!136 = metadata !{metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !1
!137 = metadata !{i32 786472, metadata !"h_general", i64 0} ; [ DW_TAG_enumerator ] [h_general :: 0]
!138 = metadata !{i32 786472, metadata !"h_C", i64 1} ; [ DW_TAG_enumerator ] [h_C :: 1]
!139 = metadata !{i32 786472, metadata !"h_CO", i64 2} ; [ DW_TAG_enumerator ] [h_CO :: 2]
!140 = metadata !{i32 786472, metadata !"h_CON", i64 3} ; [ DW_TAG_enumerator ] [h_CON :: 3]
!141 = metadata !{i32 786472, metadata !"h_matching_connection", i64 4} ; [ DW_TAG_enumerator ] [h_matching_connection :: 4]
!142 = metadata !{i32 786472, metadata !"h_matching_proxy_connection", i64 5} ; [ DW_TAG_enumerator ] [h_matching_proxy_connection :: 5]
!143 = metadata !{i32 786472, metadata !"h_matching_content_length", i64 6} ; [ DW_TAG_enumerator ] [h_matching_content_length :: 6]
!144 = metadata !{i32 786472, metadata !"h_matching_transfer_encoding", i64 7} ; [ DW_TAG_enumerator ] [h_matching_transfer_encoding :: 7]
!145 = metadata !{i32 786472, metadata !"h_matching_upgrade", i64 8} ; [ DW_TAG_enumerator ] [h_matching_upgrade :: 8]
!146 = metadata !{i32 786472, metadata !"h_connection", i64 9} ; [ DW_TAG_enumerator ] [h_connection :: 9]
!147 = metadata !{i32 786472, metadata !"h_content_length", i64 10} ; [ DW_TAG_enumerator ] [h_content_length :: 10]
!148 = metadata !{i32 786472, metadata !"h_transfer_encoding", i64 11} ; [ DW_TAG_enumerator ] [h_transfer_encoding :: 11]
!149 = metadata !{i32 786472, metadata !"h_upgrade", i64 12} ; [ DW_TAG_enumerator ] [h_upgrade :: 12]
!150 = metadata !{i32 786472, metadata !"h_matching_transfer_encoding_chunked", i64 13} ; [ DW_TAG_enumerator ] [h_matching_transfer_encoding_chunked :: 13]
!151 = metadata !{i32 786472, metadata !"h_matching_connection_token_start", i64 14} ; [ DW_TAG_enumerator ] [h_matching_connection_token_start :: 14]
!152 = metadata !{i32 786472, metadata !"h_matching_connection_keep_alive", i64 15} ; [ DW_TAG_enumerator ] [h_matching_connection_keep_alive :: 15]
!153 = metadata !{i32 786472, metadata !"h_matching_connection_close", i64 16} ; [ DW_TAG_enumerator ] [h_matching_connection_close :: 16]
!154 = metadata !{i32 786472, metadata !"h_matching_connection_upgrade", i64 17} ; [ DW_TAG_enumerator ] [h_matching_connection_upgrade :: 17]
!155 = metadata !{i32 786472, metadata !"h_matching_connection_token", i64 18} ; [ DW_TAG_enumerator ] [h_matching_connection_token :: 18]
!156 = metadata !{i32 786472, metadata !"h_transfer_encoding_chunked", i64 19} ; [ DW_TAG_enumerator ] [h_transfer_encoding_chunked :: 19]
!157 = metadata !{i32 786472, metadata !"h_connection_keep_alive", i64 20} ; [ DW_TAG_enumerator ] [h_connection_keep_alive :: 20]
!158 = metadata !{i32 786472, metadata !"h_connection_close", i64 21} ; [ DW_TAG_enumerator ] [h_connection_close :: 21]
!159 = metadata !{i32 786472, metadata !"h_connection_upgrade", i64 22} ; [ DW_TAG_enumerator ] [h_connection_upgrade :: 22]
!160 = metadata !{i32 786436, null, metadata !"flags", metadata !69, i32 135, i64 32, i64 32, i32 0, i32 0, null, metadata !161, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [flags] [line 135, size 32, align 32, offset 0] [from ]
!161 = metadata !{metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168}
!162 = metadata !{i32 786472, metadata !"F_CHUNKED", i64 1} ; [ DW_TAG_enumerator ] [F_CHUNKED :: 1]
!163 = metadata !{i32 786472, metadata !"F_CONNECTION_KEEP_ALIVE", i64 2} ; [ DW_TAG_enumerator ] [F_CONNECTION_KEEP_ALIVE :: 2]
!164 = metadata !{i32 786472, metadata !"F_CONNECTION_CLOSE", i64 4} ; [ DW_TAG_enumerator ] [F_CONNECTION_CLOSE :: 4]
!165 = metadata !{i32 786472, metadata !"F_CONNECTION_UPGRADE", i64 8} ; [ DW_TAG_enumerator ] [F_CONNECTION_UPGRADE :: 8]
!166 = metadata !{i32 786472, metadata !"F_TRAILING", i64 16} ; [ DW_TAG_enumerator ] [F_TRAILING :: 16]
!167 = metadata !{i32 786472, metadata !"F_UPGRADE", i64 32} ; [ DW_TAG_enumerator ] [F_UPGRADE :: 32]
!168 = metadata !{i32 786472, metadata !"F_SKIPBODY", i64 64} ; [ DW_TAG_enumerator ] [F_SKIPBODY :: 64]
!169 = metadata !{i32 786436, null, metadata !"http_parser_url_fields", metadata !69, i32 246, i64 32, i64 32, i32 0, i32 0, null, metadata !170, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [http_parser_url_fields] [line 246, size 32, align 32, offset 0]
!170 = metadata !{metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178}
!171 = metadata !{i32 786472, metadata !"UF_SCHEMA", i64 0} ; [ DW_TAG_enumerator ] [UF_SCHEMA :: 0]
!172 = metadata !{i32 786472, metadata !"UF_HOST", i64 1} ; [ DW_TAG_enumerator ] [UF_HOST :: 1]
!173 = metadata !{i32 786472, metadata !"UF_PORT", i64 2} ; [ DW_TAG_enumerator ] [UF_PORT :: 2]
!174 = metadata !{i32 786472, metadata !"UF_PATH", i64 3} ; [ DW_TAG_enumerator ] [UF_PATH :: 3]
!175 = metadata !{i32 786472, metadata !"UF_QUERY", i64 4} ; [ DW_TAG_enumerator ] [UF_QUERY :: 4]
!176 = metadata !{i32 786472, metadata !"UF_FRAGMENT", i64 5} ; [ DW_TAG_enumerator ] [UF_FRAGMENT :: 5]
!177 = metadata !{i32 786472, metadata !"UF_USERINFO", i64 6} ; [ DW_TAG_enumerator ] [UF_USERINFO :: 6]
!178 = metadata !{i32 786472, metadata !"UF_MAX", i64 7} ; [ DW_TAG_enumerator ] [UF_MAX :: 7]
!179 = metadata !{i32 786436, null, metadata !"http_host_state", metadata !4, i32 396, i64 32, i64 32, i32 0, i32 0, null, metadata !180, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [http_host_state] [line 396, size 32, align 32, offset 0] [from ]
!180 = metadata !{metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190}
!181 = metadata !{i32 786472, metadata !"s_http_host_dead", i64 1} ; [ DW_TAG_enumerator ] [s_http_host_dead :: 1]
!182 = metadata !{i32 786472, metadata !"s_http_userinfo_start", i64 2} ; [ DW_TAG_enumerator ] [s_http_userinfo_start :: 2]
!183 = metadata !{i32 786472, metadata !"s_http_userinfo", i64 3} ; [ DW_TAG_enumerator ] [s_http_userinfo :: 3]
!184 = metadata !{i32 786472, metadata !"s_http_host_start", i64 4} ; [ DW_TAG_enumerator ] [s_http_host_start :: 4]
!185 = metadata !{i32 786472, metadata !"s_http_host_v6_start", i64 5} ; [ DW_TAG_enumerator ] [s_http_host_v6_start :: 5]
!186 = metadata !{i32 786472, metadata !"s_http_host", i64 6} ; [ DW_TAG_enumerator ] [s_http_host :: 6]
!187 = metadata !{i32 786472, metadata !"s_http_host_v6", i64 7} ; [ DW_TAG_enumerator ] [s_http_host_v6 :: 7]
!188 = metadata !{i32 786472, metadata !"s_http_host_v6_end", i64 8} ; [ DW_TAG_enumerator ] [s_http_host_v6_end :: 8]
!189 = metadata !{i32 786472, metadata !"s_http_host_port_start", i64 9} ; [ DW_TAG_enumerator ] [s_http_host_port_start :: 9]
!190 = metadata !{i32 786472, metadata !"s_http_host_port", i64 10} ; [ DW_TAG_enumerator ] [s_http_host_port :: 10]
!191 = metadata !{metadata !192}
!192 = metadata !{i32 0}
!193 = metadata !{metadata !194}
!194 = metadata !{metadata !195, metadata !248, metadata !253, metadata !254, metadata !257, metadata !260, metadata !264, metadata !267, metadata !268, metadata !285, metadata !288, metadata !292, metadata !295, metadata !300, metadata !301, metadata !3
!195 = metadata !{i32 786478, i32 0, metadata !4, metadata !"http_parser_execute", metadata !"http_parser_execute", metadata !"", metadata !4, i32 629, metadata !196, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.http_parser*, %s
!196 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !197, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!197 = metadata !{metadata !198, metadata !200, metadata !223, metadata !239, metadata !198}
!198 = metadata !{i32 786454, null, metadata !"size_t", metadata !4, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [size_t] [line 35, size 0, align 0, offset 0] [from long unsigned int]
!199 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!200 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !201} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from http_parser]
!201 = metadata !{i32 786454, null, metadata !"http_parser", metadata !4, i32 66, i64 0, i64 0, i64 0, i32 0, metadata !202} ; [ DW_TAG_typedef ] [http_parser] [line 66, size 0, align 0, offset 0] [from http_parser]
!202 = metadata !{i32 786451, null, metadata !"http_parser", metadata !69, i32 204, i64 256, i64 64, i32 0, i32 0, null, metadata !203, i32 0, i32 0, i32 0} ; [ DW_TAG_structure_type ] [http_parser] [line 204, size 256, align 64, offset 0] [from ]
!203 = metadata !{metadata !204, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !212, metadata !214, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221}
!204 = metadata !{i32 786445, metadata !202, metadata !"type", metadata !69, i32 206, i64 2, i64 32, i64 0, i32 0, metadata !205} ; [ DW_TAG_member ] [type] [line 206, size 2, align 32, offset 0] [from unsigned int]
!205 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!206 = metadata !{i32 786445, metadata !202, metadata !"flags", metadata !69, i32 207, i64 7, i64 32, i64 2, i32 0, metadata !205} ; [ DW_TAG_member ] [flags] [line 207, size 7, align 32, offset 2] [from unsigned int]
!207 = metadata !{i32 786445, metadata !202, metadata !"state", metadata !69, i32 208, i64 7, i64 32, i64 9, i32 0, metadata !205} ; [ DW_TAG_member ] [state] [line 208, size 7, align 32, offset 9] [from unsigned int]
!208 = metadata !{i32 786445, metadata !202, metadata !"header_state", metadata !69, i32 209, i64 8, i64 32, i64 16, i32 0, metadata !205} ; [ DW_TAG_member ] [header_state] [line 209, size 8, align 32, offset 16] [from unsigned int]
!209 = metadata !{i32 786445, metadata !202, metadata !"index", metadata !69, i32 210, i64 8, i64 32, i64 24, i32 0, metadata !205} ; [ DW_TAG_member ] [index] [line 210, size 8, align 32, offset 24] [from unsigned int]
!210 = metadata !{i32 786445, metadata !202, metadata !"nread", metadata !69, i32 212, i64 32, i64 32, i64 32, i32 0, metadata !211} ; [ DW_TAG_member ] [nread] [line 212, size 32, align 32, offset 32] [from uint32_t]
!211 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !69, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !205} ; [ DW_TAG_typedef ] [uint32_t] [line 51, size 0, align 0, offset 0] [from unsigned int]
!212 = metadata !{i32 786445, metadata !202, metadata !"content_length", metadata !69, i32 213, i64 64, i64 64, i64 64, i32 0, metadata !213} ; [ DW_TAG_member ] [content_length] [line 213, size 64, align 64, offset 64] [from uint64_t]
!213 = metadata !{i32 786454, null, metadata !"uint64_t", metadata !69, i32 55, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [uint64_t] [line 55, size 0, align 0, offset 0] [from long unsigned int]
!214 = metadata !{i32 786445, metadata !202, metadata !"http_major", metadata !69, i32 216, i64 16, i64 16, i64 128, i32 0, metadata !215} ; [ DW_TAG_member ] [http_major] [line 216, size 16, align 16, offset 128] [from unsigned short]
!215 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!216 = metadata !{i32 786445, metadata !202, metadata !"http_minor", metadata !69, i32 217, i64 16, i64 16, i64 144, i32 0, metadata !215} ; [ DW_TAG_member ] [http_minor] [line 217, size 16, align 16, offset 144] [from unsigned short]
!217 = metadata !{i32 786445, metadata !202, metadata !"status_code", metadata !69, i32 218, i64 16, i64 32, i64 160, i32 0, metadata !205} ; [ DW_TAG_member ] [status_code] [line 218, size 16, align 32, offset 160] [from unsigned int]
!218 = metadata !{i32 786445, metadata !202, metadata !"method", metadata !69, i32 219, i64 8, i64 32, i64 176, i32 0, metadata !205} ; [ DW_TAG_member ] [method] [line 219, size 8, align 32, offset 176] [from unsigned int]
!219 = metadata !{i32 786445, metadata !202, metadata !"http_errno", metadata !69, i32 220, i64 7, i64 32, i64 184, i32 0, metadata !205} ; [ DW_TAG_member ] [http_errno] [line 220, size 7, align 32, offset 184] [from unsigned int]
!220 = metadata !{i32 786445, metadata !202, metadata !"upgrade", metadata !69, i32 227, i64 1, i64 32, i64 191, i32 0, metadata !205} ; [ DW_TAG_member ] [upgrade] [line 227, size 1, align 32, offset 191] [from unsigned int]
!221 = metadata !{i32 786445, metadata !202, metadata !"data", metadata !69, i32 230, i64 64, i64 64, i64 192, i32 0, metadata !222} ; [ DW_TAG_member ] [data] [line 230, size 64, align 64, offset 192] [from ]
!222 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!223 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !224} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!224 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !225} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from http_parser_settings]
!225 = metadata !{i32 786454, null, metadata !"http_parser_settings", metadata !4, i32 67, i64 0, i64 0, i64 0, i32 0, metadata !226} ; [ DW_TAG_typedef ] [http_parser_settings] [line 67, size 0, align 0, offset 0] [from http_parser_settings]
!226 = metadata !{i32 786451, null, metadata !"http_parser_settings", metadata !69, i32 234, i64 512, i64 64, i32 0, i32 0, null, metadata !227, i32 0, i32 0, i32 0} ; [ DW_TAG_structure_type ] [http_parser_settings] [line 234, size 512, align 64, offset
!227 = metadata !{metadata !228, metadata !234, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247}
!228 = metadata !{i32 786445, metadata !226, metadata !"on_message_begin", metadata !69, i32 235, i64 64, i64 64, i64 0, i32 0, metadata !229} ; [ DW_TAG_member ] [on_message_begin] [line 235, size 64, align 64, offset 0] [from http_cb]
!229 = metadata !{i32 786454, null, metadata !"http_cb", metadata !69, i32 84, i64 0, i64 0, i64 0, i32 0, metadata !230} ; [ DW_TAG_typedef ] [http_cb] [line 84, size 0, align 0, offset 0] [from ]
!230 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !231} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!231 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!232 = metadata !{metadata !233, metadata !200}
!233 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!234 = metadata !{i32 786445, metadata !226, metadata !"on_url", metadata !69, i32 236, i64 64, i64 64, i64 64, i32 0, metadata !235} ; [ DW_TAG_member ] [on_url] [line 236, size 64, align 64, offset 64] [from http_data_cb]
!235 = metadata !{i32 786454, null, metadata !"http_data_cb", metadata !69, i32 83, i64 0, i64 0, i64 0, i32 0, metadata !236} ; [ DW_TAG_typedef ] [http_data_cb] [line 83, size 0, align 0, offset 0] [from ]
!236 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !237} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!237 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!238 = metadata !{metadata !233, metadata !200, metadata !239, metadata !198}
!239 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !240} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!240 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !241} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!241 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!242 = metadata !{i32 786445, metadata !226, metadata !"on_status", metadata !69, i32 237, i64 64, i64 64, i64 128, i32 0, metadata !235} ; [ DW_TAG_member ] [on_status] [line 237, size 64, align 64, offset 128] [from http_data_cb]
!243 = metadata !{i32 786445, metadata !226, metadata !"on_header_field", metadata !69, i32 238, i64 64, i64 64, i64 192, i32 0, metadata !235} ; [ DW_TAG_member ] [on_header_field] [line 238, size 64, align 64, offset 192] [from http_data_cb]
!244 = metadata !{i32 786445, metadata !226, metadata !"on_header_value", metadata !69, i32 239, i64 64, i64 64, i64 256, i32 0, metadata !235} ; [ DW_TAG_member ] [on_header_value] [line 239, size 64, align 64, offset 256] [from http_data_cb]
!245 = metadata !{i32 786445, metadata !226, metadata !"on_headers_complete", metadata !69, i32 240, i64 64, i64 64, i64 320, i32 0, metadata !229} ; [ DW_TAG_member ] [on_headers_complete] [line 240, size 64, align 64, offset 320] [from http_cb]
!246 = metadata !{i32 786445, metadata !226, metadata !"on_body", metadata !69, i32 241, i64 64, i64 64, i64 384, i32 0, metadata !235} ; [ DW_TAG_member ] [on_body] [line 241, size 64, align 64, offset 384] [from http_data_cb]
!247 = metadata !{i32 786445, metadata !226, metadata !"on_message_complete", metadata !69, i32 242, i64 64, i64 64, i64 448, i32 0, metadata !229} ; [ DW_TAG_member ] [on_message_complete] [line 242, size 64, align 64, offset 448] [from http_cb]
!248 = metadata !{i32 786478, i32 0, metadata !4, metadata !"http_message_needs_eof", metadata !"http_message_needs_eof", metadata !"", metadata !4, i32 2083, metadata !249, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.http_pars
!249 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !250, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!250 = metadata !{metadata !233, metadata !251}
!251 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !252} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!252 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !201} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from http_parser]
!253 = metadata !{i32 786478, i32 0, metadata !4, metadata !"http_should_keep_alive", metadata !"http_should_keep_alive", metadata !"", metadata !4, i32 2106, metadata !249, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.http_pars
!254 = metadata !{i32 786478, i32 0, metadata !4, metadata !"http_method_str", metadata !"http_method_str", metadata !"", metadata !4, i32 2125, metadata !255, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32)* @http_method_str, null, n
!255 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!256 = metadata !{metadata !239, metadata !106}
!257 = metadata !{i32 786478, i32 0, metadata !4, metadata !"http_parser_init", metadata !"http_parser_init", metadata !"", metadata !4, i32 2132, metadata !258, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.http_parser*, i32)* 
!258 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !259, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!259 = metadata !{null, metadata !200, metadata !101}
!260 = metadata !{i32 786478, i32 0, metadata !4, metadata !"http_parser_settings_init", metadata !"http_parser_settings_init", metadata !"", metadata !4, i32 2143, metadata !261, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.ht
!261 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !262, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!262 = metadata !{null, metadata !263}
!263 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !225} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from http_parser_settings]
!264 = metadata !{i32 786478, i32 0, metadata !4, metadata !"http_errno_name", metadata !"http_errno_name", metadata !"", metadata !4, i32 2149, metadata !265, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32)* @http_errno_name, null, n
!265 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !266, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!266 = metadata !{metadata !239, metadata !68}
!267 = metadata !{i32 786478, i32 0, metadata !4, metadata !"http_errno_description", metadata !"http_errno_description", metadata !"", metadata !4, i32 2155, metadata !265, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32)* @http_errno
!268 = metadata !{i32 786478, i32 0, metadata !4, metadata !"http_parser_parse_url", metadata !"http_parser_parse_url", metadata !"", metadata !4, i32 2299, metadata !269, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i64, i32, %str
!269 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !270, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!270 = metadata !{metadata !233, metadata !239, metadata !198, metadata !233, metadata !271}
!271 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !272} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from http_parser_url]
!272 = metadata !{i32 786451, null, metadata !"http_parser_url", metadata !69, i32 265, i64 256, i64 16, i32 0, i32 0, null, metadata !273, i32 0, i32 0, i32 0} ; [ DW_TAG_structure_type ] [http_parser_url] [line 265, size 256, align 16, offset 0] [from 
!273 = metadata !{metadata !274, metadata !276, metadata !277}
!274 = metadata !{i32 786445, metadata !272, metadata !"field_set", metadata !69, i32 266, i64 16, i64 16, i64 0, i32 0, metadata !275} ; [ DW_TAG_member ] [field_set] [line 266, size 16, align 16, offset 0] [from uint16_t]
!275 = metadata !{i32 786454, null, metadata !"uint16_t", metadata !69, i32 49, i64 0, i64 0, i64 0, i32 0, metadata !215} ; [ DW_TAG_typedef ] [uint16_t] [line 49, size 0, align 0, offset 0] [from unsigned short]
!276 = metadata !{i32 786445, metadata !272, metadata !"port", metadata !69, i32 267, i64 16, i64 16, i64 16, i32 0, metadata !275} ; [ DW_TAG_member ] [port] [line 267, size 16, align 16, offset 16] [from uint16_t]
!277 = metadata !{i32 786445, metadata !272, metadata !"field_data", metadata !69, i32 272, i64 224, i64 16, i64 32, i32 0, metadata !278} ; [ DW_TAG_member ] [field_data] [line 272, size 224, align 16, offset 32] [from ]
!278 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 224, i64 16, i32 0, i32 0, metadata !279, metadata !283, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 224, align 16, offset 0] [from ]
!279 = metadata !{i32 786451, metadata !272, metadata !"", metadata !69, i32 269, i64 32, i64 16, i32 0, i32 0, null, metadata !280, i32 0, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 269, size 32, align 16, offset 0] [from ]
!280 = metadata !{metadata !281, metadata !282}
!281 = metadata !{i32 786445, metadata !279, metadata !"off", metadata !69, i32 270, i64 16, i64 16, i64 0, i32 0, metadata !275} ; [ DW_TAG_member ] [off] [line 270, size 16, align 16, offset 0] [from uint16_t]
!282 = metadata !{i32 786445, metadata !279, metadata !"len", metadata !69, i32 271, i64 16, i64 16, i64 16, i32 0, metadata !275} ; [ DW_TAG_member ] [len] [line 271, size 16, align 16, offset 16] [from uint16_t]
!283 = metadata !{metadata !284}
!284 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 6]
!285 = metadata !{i32 786478, i32 0, metadata !4, metadata !"http_parser_pause", metadata !"http_parser_pause", metadata !"", metadata !4, i32 2398, metadata !286, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.http_parser*, i32)
!286 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!287 = metadata !{null, metadata !200, metadata !233}
!288 = metadata !{i32 786478, i32 0, metadata !4, metadata !"http_body_is_final", metadata !"http_body_is_final", metadata !"", metadata !4, i32 2412, metadata !289, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.http_parser*)* @h
!289 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !290, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!290 = metadata !{metadata !233, metadata !291}
!291 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !202} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from http_parser]
!292 = metadata !{i32 786478, i32 0, metadata !4, metadata !"http_parser_version", metadata !"http_parser_version", metadata !"", metadata !4, i32 2417, metadata !293, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 ()* @http_parser_version
!293 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !294, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!294 = metadata !{metadata !199}
!295 = metadata !{i32 786478, i32 0, metadata !4, metadata !"main", metadata !"main", metadata !"", metadata !4, i32 2460, metadata !296, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !191, i32 246
!296 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !297, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!297 = metadata !{metadata !233, metadata !233, metadata !298}
!298 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !299} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!299 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !241} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!300 = metadata !{i32 786478, i32 0, metadata !4, metadata !"on_data", metadata !"on_data", metadata !"", metadata !4, i32 2445, metadata !237, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.http_parser*, i8*, i64)* @on_data, null,
!301 = metadata !{i32 786478, i32 0, metadata !4, metadata !"on_info", metadata !"on_info", metadata !"", metadata !4, i32 2440, metadata !231, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.http_parser*)* @on_info, null, null, met
!302 = metadata !{i32 786478, i32 0, metadata !4, metadata !"http_parse_host", metadata !"http_parse_host", metadata !"", metadata !4, i32 2226, metadata !303, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, %struct.http_parser_url*, i
!303 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !304, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!304 = metadata !{metadata !233, metadata !239, metadata !271, metadata !233}
!305 = metadata !{i32 786478, i32 0, metadata !4, metadata !"http_parse_host_char", metadata !"http_parse_host_char", metadata !"", metadata !4, i32 2161, metadata !306, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8)* @http_parse_
!306 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !307, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!307 = metadata !{metadata !179, metadata !179, metadata !240}
!308 = metadata !{i32 786478, i32 0, metadata !4, metadata !"parse_url_char", metadata !"parse_url_char", metadata !"", metadata !4, i32 482, metadata !309, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8)* @parse_url_char, null, nu
!309 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !310, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!310 = metadata !{metadata !3, metadata !3, metadata !240}
!311 = metadata !{metadata !312}
!312 = metadata !{metadata !313, metadata !313, metadata !315, metadata !316, metadata !320, metadata !328, metadata !335, metadata !337, metadata !344}
!313 = metadata !{i32 786484, i32 0, metadata !4, metadata !"data_len", metadata !"data_len", metadata !"data_len", metadata !4, i32 2438, metadata !314, i32 1, i32 1, i64 520} ; [ DW_TAG_variable ] [data_len] [line 2438] [local] [def]
!314 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !198} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from size_t]
!315 = metadata !{i32 786484, i32 0, null, metadata !"settings", metadata !"settings", metadata !"", metadata !4, i32 2449, metadata !225, i32 1, i32 1, %struct.http_parser_settings* @settings} ; [ DW_TAG_variable ] [settings] [line 2449] [local] [def]
!316 = metadata !{i32 786484, i32 0, null, metadata !"data", metadata !"data", metadata !"", metadata !4, i32 2423, metadata !317, i32 1, i32 1, [521 x i8]* @data} ; [ DW_TAG_variable ] [data] [line 2423] [local] [def]
!317 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4168, i64 8, i32 0, i32 0, metadata !240, metadata !318, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4168, align 8, offset 0] [from ]
!318 = metadata !{metadata !319}
!319 = metadata !{i32 786465, i64 0, i64 520}     ; [ DW_TAG_subrange_type ] [0, 520]
!320 = metadata !{i32 786484, i32 0, null, metadata !"http_strerror_tab", metadata !"http_strerror_tab", metadata !"", metadata !4, i32 463, metadata !321, i32 1, i32 1, [30 x %struct.anon]* @http_strerror_tab} ; [ DW_TAG_variable ] [http_strerror_tab] [
!321 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 3840, i64 64, i32 0, i32 0, metadata !322, metadata !326, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 3840, align 64, offset 0] [from ]
!322 = metadata !{i32 786451, null, metadata !"", metadata !4, i32 460, i64 128, i64 64, i32 0, i32 0, null, metadata !323, i32 0, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 460, size 128, align 64, offset 0] [from ]
!323 = metadata !{metadata !324, metadata !325}
!324 = metadata !{i32 786445, metadata !322, metadata !"name", metadata !4, i32 461, i64 64, i64 64, i64 0, i32 0, metadata !239} ; [ DW_TAG_member ] [name] [line 461, size 64, align 64, offset 0] [from ]
!325 = metadata !{i32 786445, metadata !322, metadata !"description", metadata !4, i32 462, i64 64, i64 64, i64 64, i32 0, metadata !239} ; [ DW_TAG_member ] [description] [line 462, size 64, align 64, offset 64] [from ]
!326 = metadata !{metadata !327}
!327 = metadata !{i32 786465, i64 0, i64 29}      ; [ DW_TAG_subrange_type ] [0, 29]
!328 = metadata !{i32 786484, i32 0, null, metadata !"unhex", metadata !"unhex", metadata !"", metadata !4, i32 227, metadata !329, i32 1, i32 1, [256 x i8]* @unhex} ; [ DW_TAG_variable ] [unhex] [line 227] [local] [def]
!329 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !330, metadata !333, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from ]
!330 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !331} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int8_t]
!331 = metadata !{i32 786454, null, metadata !"int8_t", metadata !4, i32 194, i64 0, i64 0, i64 0, i32 0, metadata !332} ; [ DW_TAG_typedef ] [int8_t] [line 194, size 0, align 0, offset 0] [from signed char]
!332 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!333 = metadata !{metadata !334}
!334 = metadata !{i32 786465, i64 0, i64 255}     ; [ DW_TAG_subrange_type ] [0, 255]
!335 = metadata !{i32 786484, i32 0, null, metadata !"tokens", metadata !"tokens", metadata !"", metadata !4, i32 192, metadata !336, i32 1, i32 1, [256 x i8]* @tokens} ; [ DW_TAG_variable ] [tokens] [line 192] [local] [def]
!336 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !240, metadata !333, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from ]
!337 = metadata !{i32 786484, i32 0, null, metadata !"normal_url_char", metadata !"normal_url_char", metadata !"", metadata !4, i32 246, metadata !338, i32 1, i32 1, [32 x i8]* @normal_url_char} ; [ DW_TAG_variable ] [normal_url_char] [line 246] [local] 
!338 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !339, metadata !342, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from ]
!339 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !340} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from uint8_t]
!340 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !4, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !341} ; [ DW_TAG_typedef ] [uint8_t] [line 48, size 0, align 0, offset 0] [from unsigned char]
!341 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!342 = metadata !{metadata !343}
!343 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ] [0, 31]
!344 = metadata !{i32 786484, i32 0, null, metadata !"method_strings", metadata !"method_strings", metadata !"", metadata !4, i32 177, metadata !345, i32 1, i32 1, [27 x i8*]* @method_strings} ; [ DW_TAG_variable ] [method_strings] [line 177] [local] [de
!345 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1728, i64 64, i32 0, i32 0, metadata !239, metadata !346, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1728, align 64, offset 0] [from ]
!346 = metadata !{metadata !347}
!347 = metadata !{i32 786465, i64 0, i64 26}      ; [ DW_TAG_subrange_type ] [0, 26]
!348 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic/klee_div_zero_check.c", metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic", metadata !"clang version 3.2 (tags/RELEASE_32/final)", i1 true, i1 t
!349 = metadata !{metadata !350}
!350 = metadata !{metadata !351}
!351 = metadata !{i32 786478, i32 0, metadata !352, metadata !"klee_div_zero_check", metadata !"klee_div_zero_check", metadata !"", metadata !352, i32 12, metadata !353, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64)* @klee_div_zero_
!352 = metadata !{i32 786473, metadata !"klee_div_zero_check.c", metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic", null} ; [ DW_TAG_file_type ]
!353 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !354, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!354 = metadata !{null, metadata !355}
!355 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!356 = metadata !{metadata !357}
!357 = metadata !{metadata !358}
!358 = metadata !{i32 786689, metadata !351, metadata !"z", metadata !352, i32 16777228, metadata !355, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 12]
!359 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic/klee_int.c", metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic", metadata !"clang version 3.2 (tags/RELEASE_32/final)", i1 true, i1 true, metada
!360 = metadata !{metadata !361}
!361 = metadata !{metadata !362}
!362 = metadata !{i32 786478, i32 0, metadata !363, metadata !"klee_int", metadata !"klee_int", metadata !"", metadata !363, i32 13, metadata !364, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @klee_int, null, null, metadata !366, 
!363 = metadata !{i32 786473, metadata !"klee_int.c", metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic", null} ; [ DW_TAG_file_type ]
!364 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !365, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!365 = metadata !{metadata !233, metadata !239}
!366 = metadata !{metadata !367}
!367 = metadata !{metadata !368, metadata !369}
!368 = metadata !{i32 786689, metadata !362, metadata !"name", metadata !363, i32 16777229, metadata !239, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!369 = metadata !{i32 786688, metadata !370, metadata !"x", metadata !363, i32 14, metadata !233, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!370 = metadata !{i32 786443, metadata !362, i32 13, i32 0, metadata !363, i32 0} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/runtime/Intrinsic/klee_int.c]
!371 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic/klee_overshift_check.c", metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic", metadata !"clang version 3.2 (tags/RELEASE_32/final)", i1 true, i1 
!372 = metadata !{metadata !373}
!373 = metadata !{metadata !374}
!374 = metadata !{i32 786478, i32 0, metadata !375, metadata !"klee_overshift_check", metadata !"klee_overshift_check", metadata !"", metadata !375, i32 20, metadata !376, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64)* @klee_ov
!375 = metadata !{i32 786473, metadata !"klee_overshift_check.c", metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic", null} ; [ DW_TAG_file_type ]
!376 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !377, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!377 = metadata !{null, metadata !378, metadata !378}
!378 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!379 = metadata !{metadata !380}
!380 = metadata !{metadata !381, metadata !382}
!381 = metadata !{i32 786689, metadata !374, metadata !"bitWidth", metadata !375, i32 16777236, metadata !378, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitWidth] [line 20]
!382 = metadata !{i32 786689, metadata !374, metadata !"shift", metadata !375, i32 33554452, metadata !378, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shift] [line 20]
!383 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic/klee_range.c", metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic", metadata !"clang version 3.2 (tags/RELEASE_32/final)", i1 true, i1 true, meta
!384 = metadata !{metadata !385}
!385 = metadata !{metadata !386}
!386 = metadata !{i32 786478, i32 0, metadata !387, metadata !"klee_range", metadata !"klee_range", metadata !"", metadata !387, i32 13, metadata !388, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i8*)* @klee_range, null, null,
!387 = metadata !{i32 786473, metadata !"klee_range.c", metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic", null} ; [ DW_TAG_file_type ]
!388 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !389, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!389 = metadata !{metadata !233, metadata !233, metadata !233, metadata !239}
!390 = metadata !{metadata !391}
!391 = metadata !{metadata !392, metadata !393, metadata !394, metadata !395}
!392 = metadata !{i32 786689, metadata !386, metadata !"start", metadata !387, i32 16777229, metadata !233, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [start] [line 13]
!393 = metadata !{i32 786689, metadata !386, metadata !"end", metadata !387, i32 33554445, metadata !233, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [end] [line 13]
!394 = metadata !{i32 786689, metadata !386, metadata !"name", metadata !387, i32 50331661, metadata !239, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 13]
!395 = metadata !{i32 786688, metadata !396, metadata !"x", metadata !387, i32 14, metadata !233, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!396 = metadata !{i32 786443, metadata !386, i32 13, i32 0, metadata !387, i32 0} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/runtime/Intrinsic/klee_range.c]
!397 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic/memcpy.c", metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic", metadata !"clang version 3.2 (tags/RELEASE_32/final)", i1 true, i1 true, metadata
!398 = metadata !{metadata !399}
!399 = metadata !{metadata !400}
!400 = metadata !{i32 786478, i32 0, metadata !401, metadata !"memcpy", metadata !"memcpy", metadata !"", metadata !401, i32 12, metadata !402, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !407, i32 12} ; [ DW_TAG_s
!401 = metadata !{i32 786473, metadata !"memcpy.c", metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic", null} ; [ DW_TAG_file_type ]
!402 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !403, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!403 = metadata !{metadata !222, metadata !222, metadata !404, metadata !406}
!404 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !405} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!405 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!406 = metadata !{i32 786454, null, metadata !"size_t", metadata !401, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [size_t] [line 35, size 0, align 0, offset 0] [from long unsigned int]
!407 = metadata !{metadata !408}
!408 = metadata !{metadata !409, metadata !410, metadata !411, metadata !412, metadata !414}
!409 = metadata !{i32 786689, metadata !400, metadata !"destaddr", metadata !401, i32 16777228, metadata !222, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 12]
!410 = metadata !{i32 786689, metadata !400, metadata !"srcaddr", metadata !401, i32 33554444, metadata !404, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 12]
!411 = metadata !{i32 786689, metadata !400, metadata !"len", metadata !401, i32 50331660, metadata !406, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 12]
!412 = metadata !{i32 786688, metadata !413, metadata !"dest", metadata !401, i32 13, metadata !299, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 13]
!413 = metadata !{i32 786443, metadata !400, i32 12, i32 0, metadata !401, i32 0} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/runtime/Intrinsic/memcpy.c]
!414 = metadata !{i32 786688, metadata !413, metadata !"src", metadata !401, i32 14, metadata !239, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 14]
!415 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic/memmove.c", metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic", metadata !"clang version 3.2 (tags/RELEASE_32/final)", i1 true, i1 true, metadat
!416 = metadata !{metadata !417}
!417 = metadata !{metadata !418}
!418 = metadata !{i32 786478, i32 0, metadata !419, metadata !"memmove", metadata !"memmove", metadata !"", metadata !419, i32 12, metadata !420, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !423, i32 12} ; [ DW_TAG
!419 = metadata !{i32 786473, metadata !"memmove.c", metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic", null} ; [ DW_TAG_file_type ]
!420 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !421, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!421 = metadata !{metadata !222, metadata !222, metadata !404, metadata !422}
!422 = metadata !{i32 786454, null, metadata !"size_t", metadata !419, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [size_t] [line 35, size 0, align 0, offset 0] [from long unsigned int]
!423 = metadata !{metadata !424}
!424 = metadata !{metadata !425, metadata !426, metadata !427, metadata !428, metadata !430}
!425 = metadata !{i32 786689, metadata !418, metadata !"dst", metadata !419, i32 16777228, metadata !222, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 12]
!426 = metadata !{i32 786689, metadata !418, metadata !"src", metadata !419, i32 33554444, metadata !404, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 12]
!427 = metadata !{i32 786689, metadata !418, metadata !"count", metadata !419, i32 50331660, metadata !422, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 12]
!428 = metadata !{i32 786688, metadata !429, metadata !"a", metadata !419, i32 13, metadata !299, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!429 = metadata !{i32 786443, metadata !418, i32 12, i32 0, metadata !419, i32 0} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/runtime/Intrinsic/memmove.c]
!430 = metadata !{i32 786688, metadata !429, metadata !"b", metadata !419, i32 14, metadata !239, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 14]
!431 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic/mempcpy.c", metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic", metadata !"clang version 3.2 (tags/RELEASE_32/final)", i1 true, i1 true, metadat
!432 = metadata !{metadata !433}
!433 = metadata !{metadata !434}
!434 = metadata !{i32 786478, i32 0, metadata !435, metadata !"mempcpy", metadata !"mempcpy", metadata !"", metadata !435, i32 11, metadata !436, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*, i64)* @mempcpy, null, null, metadata
!435 = metadata !{i32 786473, metadata !"mempcpy.c", metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic", null} ; [ DW_TAG_file_type ]
!436 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !437, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!437 = metadata !{metadata !222, metadata !222, metadata !404, metadata !438}
!438 = metadata !{i32 786454, null, metadata !"size_t", metadata !435, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [size_t] [line 35, size 0, align 0, offset 0] [from long unsigned int]
!439 = metadata !{metadata !440}
!440 = metadata !{metadata !441, metadata !442, metadata !443, metadata !444, metadata !446}
!441 = metadata !{i32 786689, metadata !434, metadata !"destaddr", metadata !435, i32 16777227, metadata !222, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [destaddr] [line 11]
!442 = metadata !{i32 786689, metadata !434, metadata !"srcaddr", metadata !435, i32 33554443, metadata !404, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [srcaddr] [line 11]
!443 = metadata !{i32 786689, metadata !434, metadata !"len", metadata !435, i32 50331659, metadata !438, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 11]
!444 = metadata !{i32 786688, metadata !445, metadata !"dest", metadata !435, i32 12, metadata !299, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 12]
!445 = metadata !{i32 786443, metadata !434, i32 11, i32 0, metadata !435, i32 0} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/runtime/Intrinsic/mempcpy.c]
!446 = metadata !{i32 786688, metadata !445, metadata !"src", metadata !435, i32 13, metadata !239, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 13]
!447 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic/memset.c", metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic", metadata !"clang version 3.2 (tags/RELEASE_32/final)", i1 true, i1 true, metadata
!448 = metadata !{metadata !449}
!449 = metadata !{metadata !450}
!450 = metadata !{i32 786478, i32 0, metadata !451, metadata !"memset", metadata !"memset", metadata !"", metadata !451, i32 11, metadata !452, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i64)* @memset, null, null, metadata !4
!451 = metadata !{i32 786473, metadata !"memset.c", metadata !"/home/userfog/klee-auto/klee/runtime/Intrinsic", null} ; [ DW_TAG_file_type ]
!452 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !453, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!453 = metadata !{metadata !222, metadata !222, metadata !233, metadata !454}
!454 = metadata !{i32 786454, null, metadata !"size_t", metadata !451, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [size_t] [line 35, size 0, align 0, offset 0] [from long unsigned int]
!455 = metadata !{metadata !456}
!456 = metadata !{metadata !457, metadata !458, metadata !459, metadata !460}
!457 = metadata !{i32 786689, metadata !450, metadata !"dst", metadata !451, i32 16777227, metadata !222, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 11]
!458 = metadata !{i32 786689, metadata !450, metadata !"s", metadata !451, i32 33554443, metadata !233, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 11]
!459 = metadata !{i32 786689, metadata !450, metadata !"count", metadata !451, i32 50331659, metadata !454, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 11]
!460 = metadata !{i32 786688, metadata !461, metadata !"a", metadata !451, i32 12, metadata !462, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 12]
!461 = metadata !{i32 786443, metadata !450, i32 11, i32 0, metadata !451, i32 0} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/runtime/Intrinsic/memset.c]
!462 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !463} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!463 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !241} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from char]
!464 = metadata !{i32 636, i32 0, metadata !465, null}
!465 = metadata !{i32 786443, metadata !195, i32 633, i32 0, metadata !4, i32 0} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!466 = metadata !{i32 637, i32 0, metadata !465, null}
!467 = metadata !{i32 638, i32 0, metadata !465, null}
!468 = metadata !{i32 639, i32 0, metadata !465, null}
!469 = metadata !{i32 640, i32 0, metadata !465, null}
!470 = metadata !{i32 641, i32 0, metadata !465, null}
!471 = metadata !{i32 642, i32 0, metadata !465, null}
!472 = metadata !{i32 645, i32 0, metadata !465, null}
!473 = metadata !{i32 646, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !465, i32 645, i32 0, metadata !4, i32 1} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!475 = metadata !{i32 649, i32 0, metadata !465, null}
!476 = metadata !{i32 650, i32 0, metadata !477, null}
!477 = metadata !{i32 786443, metadata !465, i32 649, i32 0, metadata !4, i32 2} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!478 = metadata !{i32 655, i32 0, metadata !479, null}
!479 = metadata !{i32 786443, metadata !480, i32 655, i32 0, metadata !4, i32 4} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!480 = metadata !{i32 786443, metadata !477, i32 650, i32 0, metadata !4, i32 3} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!481 = metadata !{i32 655, i32 0, metadata !482, null}
!482 = metadata !{i32 786443, metadata !479, i32 655, i32 0, metadata !4, i32 5} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!483 = metadata !{i32 655, i32 0, metadata !484, null}
!484 = metadata !{i32 786443, metadata !485, i32 655, i32 0, metadata !4, i32 7} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!485 = metadata !{i32 786443, metadata !482, i32 655, i32 0, metadata !4, i32 6} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!486 = metadata !{i32 655, i32 0, metadata !487, null}
!487 = metadata !{i32 786443, metadata !482, i32 655, i32 0, metadata !4, i32 8} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!488 = metadata !{i32 656, i32 0, metadata !480, null}
!489 = metadata !{i32 662, i32 0, metadata !480, null}
!490 = metadata !{i32 665, i32 0, metadata !491, null}
!491 = metadata !{i32 786443, metadata !480, i32 665, i32 0, metadata !4, i32 9} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!492 = metadata !{i32 666, i32 0, metadata !480, null}
!493 = metadata !{i32 671, i32 0, metadata !465, null}
!494 = metadata !{i32 672, i32 0, metadata !465, null}
!495 = metadata !{i32 673, i32 0, metadata !465, null}
!496 = metadata !{i32 674, i32 0, metadata !465, null}
!497 = metadata !{i32 675, i32 0, metadata !465, null}
!498 = metadata !{i32 687, i32 0, metadata !499, null}
!499 = metadata !{i32 786443, metadata !465, i32 675, i32 0, metadata !4, i32 10} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!500 = metadata !{i32 688, i32 0, metadata !499, null}
!501 = metadata !{i32 690, i32 0, metadata !499, null}
!502 = metadata !{i32 691, i32 0, metadata !499, null}
!503 = metadata !{i32 696, i32 0, metadata !504, null}
!504 = metadata !{i32 786443, metadata !465, i32 696, i32 0, metadata !4, i32 11} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!505 = metadata !{i32 697, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !504, i32 696, i32 0, metadata !4, i32 12} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!507 = metadata !{i32 699, i32 0, metadata !506, null}
!508 = metadata !{i32 700, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !506, i32 700, i32 0, metadata !4, i32 13} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!510 = metadata !{i32 700, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !512, i32 700, i32 0, metadata !4, i32 15} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!512 = metadata !{i32 786443, metadata !509, i32 700, i32 0, metadata !4, i32 14} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!513 = metadata !{i32 703, i32 0, metadata !506, null}
!514 = metadata !{i32 709, i32 0, metadata !515, null}
!515 = metadata !{i32 786443, metadata !506, i32 703, i32 0, metadata !4, i32 16} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!516 = metadata !{i32 712, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !515, i32 712, i32 0, metadata !4, i32 17} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!518 = metadata !{i32 713, i32 0, metadata !515, null}
!519 = metadata !{i32 717, i32 0, metadata !520, null}
!520 = metadata !{i32 786443, metadata !515, i32 716, i32 0, metadata !4, i32 18} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!521 = metadata !{i32 719, i32 0, metadata !520, null}
!522 = metadata !{i32 720, i32 0, metadata !520, null}
!523 = metadata !{i32 722, i32 0, metadata !520, null}
!524 = metadata !{i32 723, i32 0, metadata !525, null}
!525 = metadata !{i32 786443, metadata !520, i32 722, i32 0, metadata !4, i32 19} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!526 = metadata !{i32 725, i32 0, metadata !527, null}
!527 = metadata !{i32 786443, metadata !525, i32 725, i32 0, metadata !4, i32 20} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!528 = metadata !{i32 725, i32 0, metadata !529, null}
!529 = metadata !{i32 786443, metadata !527, i32 725, i32 0, metadata !4, i32 21} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!530 = metadata !{i32 725, i32 0, metadata !531, null}
!531 = metadata !{i32 786443, metadata !532, i32 725, i32 0, metadata !4, i32 23} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!532 = metadata !{i32 786443, metadata !529, i32 725, i32 0, metadata !4, i32 22} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!533 = metadata !{i32 725, i32 0, metadata !534, null}
!534 = metadata !{i32 786443, metadata !529, i32 725, i32 0, metadata !4, i32 24} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!535 = metadata !{i32 727, i32 0, metadata !536, null}
!536 = metadata !{i32 786443, metadata !520, i32 726, i32 0, metadata !4, i32 25} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!537 = metadata !{i32 728, i32 0, metadata !536, null}
!538 = metadata !{i32 729, i32 0, metadata !536, null}
!539 = metadata !{i32 736, i32 0, metadata !515, null}
!540 = metadata !{i32 737, i32 0, metadata !541, null}
!541 = metadata !{i32 786443, metadata !515, i32 736, i32 0, metadata !4, i32 26} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!542 = metadata !{i32 738, i32 0, metadata !541, null}
!543 = metadata !{i32 739, i32 0, metadata !541, null}
!544 = metadata !{i32 740, i32 0, metadata !545, null}
!545 = metadata !{i32 786443, metadata !515, i32 739, i32 0, metadata !4, i32 27} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!546 = metadata !{i32 741, i32 0, metadata !547, null}
!547 = metadata !{i32 786443, metadata !548, i32 741, i32 0, metadata !4, i32 29} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!548 = metadata !{i32 786443, metadata !545, i32 740, i32 0, metadata !4, i32 28} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!549 = metadata !{i32 742, i32 0, metadata !548, null}
!550 = metadata !{i32 745, i32 0, metadata !545, null}
!551 = metadata !{i32 746, i32 0, metadata !545, null}
!552 = metadata !{i32 747, i32 0, metadata !545, null}
!553 = metadata !{i32 748, i32 0, metadata !545, null}
!554 = metadata !{i32 754, i32 0, metadata !555, null}
!555 = metadata !{i32 786443, metadata !515, i32 753, i32 0, metadata !4, i32 30} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!556 = metadata !{i32 755, i32 0, metadata !555, null}
!557 = metadata !{i32 757, i32 0, metadata !555, null}
!558 = metadata !{i32 759, i32 0, metadata !559, null}
!559 = metadata !{i32 786443, metadata !555, i32 757, i32 0, metadata !4, i32 31} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!560 = metadata !{i32 760, i32 0, metadata !559, null}
!561 = metadata !{i32 767, i32 0, metadata !562, null}
!562 = metadata !{i32 786443, metadata !559, i32 767, i32 0, metadata !4, i32 32} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!563 = metadata !{i32 768, i32 0, metadata !559, null}
!564 = metadata !{i32 771, i32 0, metadata !565, null}
!565 = metadata !{i32 786443, metadata !555, i32 771, i32 0, metadata !4, i32 33} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!566 = metadata !{i32 771, i32 0, metadata !567, null}
!567 = metadata !{i32 786443, metadata !565, i32 771, i32 0, metadata !4, i32 34} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!568 = metadata !{i32 771, i32 0, metadata !569, null}
!569 = metadata !{i32 786443, metadata !570, i32 771, i32 0, metadata !4, i32 36} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!570 = metadata !{i32 786443, metadata !567, i32 771, i32 0, metadata !4, i32 35} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!571 = metadata !{i32 771, i32 0, metadata !572, null}
!572 = metadata !{i32 786443, metadata !567, i32 771, i32 0, metadata !4, i32 37} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!573 = metadata !{i32 776, i32 0, metadata !574, null}
!574 = metadata !{i32 786443, metadata !515, i32 776, i32 0, metadata !4, i32 38} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!575 = metadata !{i32 776, i32 0, metadata !576, null}
!576 = metadata !{i32 786443, metadata !577, i32 776, i32 0, metadata !4, i32 40} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!577 = metadata !{i32 786443, metadata !574, i32 776, i32 0, metadata !4, i32 39} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!578 = metadata !{i32 777, i32 0, metadata !515, null}
!579 = metadata !{i32 778, i32 0, metadata !515, null}
!580 = metadata !{i32 781, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !515, i32 781, i32 0, metadata !4, i32 41} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!582 = metadata !{i32 781, i32 0, metadata !583, null}
!583 = metadata !{i32 786443, metadata !584, i32 781, i32 0, metadata !4, i32 43} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!584 = metadata !{i32 786443, metadata !581, i32 781, i32 0, metadata !4, i32 42} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!585 = metadata !{i32 782, i32 0, metadata !515, null}
!586 = metadata !{i32 783, i32 0, metadata !515, null}
!587 = metadata !{i32 786, i32 0, metadata !588, null}
!588 = metadata !{i32 786443, metadata !515, i32 786, i32 0, metadata !4, i32 44} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!589 = metadata !{i32 786, i32 0, metadata !590, null}
!590 = metadata !{i32 786443, metadata !591, i32 786, i32 0, metadata !4, i32 46} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!591 = metadata !{i32 786443, metadata !588, i32 786, i32 0, metadata !4, i32 45} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!592 = metadata !{i32 787, i32 0, metadata !515, null}
!593 = metadata !{i32 788, i32 0, metadata !515, null}
!594 = metadata !{i32 791, i32 0, metadata !595, null}
!595 = metadata !{i32 786443, metadata !515, i32 791, i32 0, metadata !4, i32 47} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!596 = metadata !{i32 791, i32 0, metadata !597, null}
!597 = metadata !{i32 786443, metadata !598, i32 791, i32 0, metadata !4, i32 49} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!598 = metadata !{i32 786443, metadata !595, i32 791, i32 0, metadata !4, i32 48} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!599 = metadata !{i32 792, i32 0, metadata !515, null}
!600 = metadata !{i32 793, i32 0, metadata !515, null}
!601 = metadata !{i32 796, i32 0, metadata !515, null}
!602 = metadata !{i32 797, i32 0, metadata !603, null}
!603 = metadata !{i32 786443, metadata !604, i32 797, i32 0, metadata !4, i32 51} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!604 = metadata !{i32 786443, metadata !515, i32 796, i32 0, metadata !4, i32 50} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!605 = metadata !{i32 798, i32 0, metadata !604, null}
!606 = metadata !{i32 801, i32 0, metadata !515, null}
!607 = metadata !{i32 802, i32 0, metadata !515, null}
!608 = metadata !{i32 803, i32 0, metadata !515, null}
!609 = metadata !{i32 808, i32 0, metadata !610, null}
!610 = metadata !{i32 786443, metadata !515, i32 807, i32 0, metadata !4, i32 52} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!611 = metadata !{i32 809, i32 0, metadata !612, null}
!612 = metadata !{i32 786443, metadata !610, i32 808, i32 0, metadata !4, i32 53} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!613 = metadata !{i32 810, i32 0, metadata !612, null}
!614 = metadata !{i32 813, i32 0, metadata !610, null}
!615 = metadata !{i32 814, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !617, i32 814, i32 0, metadata !4, i32 55} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!617 = metadata !{i32 786443, metadata !610, i32 813, i32 0, metadata !4, i32 54} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!618 = metadata !{i32 815, i32 0, metadata !617, null}
!619 = metadata !{i32 818, i32 0, metadata !610, null}
!620 = metadata !{i32 819, i32 0, metadata !610, null}
!621 = metadata !{i32 821, i32 0, metadata !610, null}
!622 = metadata !{i32 822, i32 0, metadata !623, null}
!623 = metadata !{i32 786443, metadata !624, i32 822, i32 0, metadata !4, i32 57} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!624 = metadata !{i32 786443, metadata !610, i32 821, i32 0, metadata !4, i32 56} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!625 = metadata !{i32 823, i32 0, metadata !624, null}
!626 = metadata !{i32 831, i32 0, metadata !515, null}
!627 = metadata !{i32 832, i32 0, metadata !628, null}
!628 = metadata !{i32 786443, metadata !629, i32 832, i32 0, metadata !4, i32 59} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!629 = metadata !{i32 786443, metadata !515, i32 831, i32 0, metadata !4, i32 58} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!630 = metadata !{i32 833, i32 0, metadata !629, null}
!631 = metadata !{i32 836, i32 0, metadata !515, null}
!632 = metadata !{i32 837, i32 0, metadata !515, null}
!633 = metadata !{i32 838, i32 0, metadata !515, null}
!634 = metadata !{i32 843, i32 0, metadata !635, null}
!635 = metadata !{i32 786443, metadata !515, i32 842, i32 0, metadata !4, i32 60} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!636 = metadata !{i32 844, i32 0, metadata !637, null}
!637 = metadata !{i32 786443, metadata !635, i32 843, i32 0, metadata !4, i32 61} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!638 = metadata !{i32 845, i32 0, metadata !637, null}
!639 = metadata !{i32 848, i32 0, metadata !635, null}
!640 = metadata !{i32 849, i32 0, metadata !641, null}
!641 = metadata !{i32 786443, metadata !642, i32 849, i32 0, metadata !4, i32 63} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!642 = metadata !{i32 786443, metadata !635, i32 848, i32 0, metadata !4, i32 62} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!643 = metadata !{i32 850, i32 0, metadata !642, null}
!644 = metadata !{i32 853, i32 0, metadata !635, null}
!645 = metadata !{i32 854, i32 0, metadata !635, null}
!646 = metadata !{i32 856, i32 0, metadata !635, null}
!647 = metadata !{i32 857, i32 0, metadata !648, null}
!648 = metadata !{i32 786443, metadata !649, i32 857, i32 0, metadata !4, i32 65} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!649 = metadata !{i32 786443, metadata !635, i32 856, i32 0, metadata !4, i32 64} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!650 = metadata !{i32 858, i32 0, metadata !649, null}
!651 = metadata !{i32 866, i32 0, metadata !652, null}
!652 = metadata !{i32 786443, metadata !515, i32 865, i32 0, metadata !4, i32 66} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!653 = metadata !{i32 867, i32 0, metadata !654, null}
!654 = metadata !{i32 786443, metadata !652, i32 866, i32 0, metadata !4, i32 67} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!655 = metadata !{i32 871, i32 0, metadata !656, null}
!656 = metadata !{i32 786443, metadata !654, i32 871, i32 0, metadata !4, i32 69} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!657 = metadata !{i32 872, i32 0, metadata !654, null}
!658 = metadata !{i32 874, i32 0, metadata !652, null}
!659 = metadata !{i32 875, i32 0, metadata !652, null}
!660 = metadata !{i32 876, i32 0, metadata !652, null}
!661 = metadata !{i32 881, i32 0, metadata !662, null}
!662 = metadata !{i32 786443, metadata !515, i32 880, i32 0, metadata !4, i32 70} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!663 = metadata !{i32 882, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !662, i32 881, i32 0, metadata !4, i32 71} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!665 = metadata !{i32 884, i32 0, metadata !666, null}
!666 = metadata !{i32 786443, metadata !664, i32 882, i32 0, metadata !4, i32 72} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!667 = metadata !{i32 885, i32 0, metadata !666, null}
!668 = metadata !{i32 887, i32 0, metadata !666, null}
!669 = metadata !{i32 888, i32 0, metadata !666, null}
!670 = metadata !{i32 890, i32 0, metadata !666, null}
!671 = metadata !{i32 891, i32 0, metadata !666, null}
!672 = metadata !{i32 893, i32 0, metadata !673, null}
!673 = metadata !{i32 786443, metadata !666, i32 893, i32 0, metadata !4, i32 73} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!674 = metadata !{i32 894, i32 0, metadata !666, null}
!675 = metadata !{i32 899, i32 0, metadata !662, null}
!676 = metadata !{i32 900, i32 0, metadata !662, null}
!677 = metadata !{i32 902, i32 0, metadata !662, null}
!678 = metadata !{i32 903, i32 0, metadata !679, null}
!679 = metadata !{i32 786443, metadata !680, i32 903, i32 0, metadata !4, i32 75} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!680 = metadata !{i32 786443, metadata !662, i32 902, i32 0, metadata !4, i32 74} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!681 = metadata !{i32 904, i32 0, metadata !680, null}
!682 = metadata !{i32 912, i32 0, metadata !683, null}
!683 = metadata !{i32 786443, metadata !515, i32 911, i32 0, metadata !4, i32 76} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!684 = metadata !{i32 913, i32 0, metadata !685, null}
!685 = metadata !{i32 786443, metadata !683, i32 912, i32 0, metadata !4, i32 77} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!686 = metadata !{i32 914, i32 0, metadata !685, null}
!687 = metadata !{i32 917, i32 0, metadata !683, null}
!688 = metadata !{i32 918, i32 0, metadata !689, null}
!689 = metadata !{i32 786443, metadata !683, i32 917, i32 0, metadata !4, i32 78} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!690 = metadata !{i32 919, i32 0, metadata !689, null}
!691 = metadata !{i32 922, i32 0, metadata !692, null}
!692 = metadata !{i32 786443, metadata !683, i32 922, i32 0, metadata !4, i32 79} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!693 = metadata !{i32 922, i32 0, metadata !694, null}
!694 = metadata !{i32 786443, metadata !692, i32 922, i32 0, metadata !4, i32 80} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!695 = metadata !{i32 923, i32 0, metadata !683, null}
!696 = metadata !{i32 924, i32 0, metadata !683, null}
!697 = metadata !{i32 925, i32 0, metadata !683, null}
!698 = metadata !{i32 929, i32 0, metadata !515, null}
!699 = metadata !{i32 930, i32 0, metadata !700, null}
!700 = metadata !{i32 786443, metadata !515, i32 929, i32 0, metadata !4, i32 81} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!701 = metadata !{i32 931, i32 0, metadata !702, null}
!702 = metadata !{i32 786443, metadata !700, i32 931, i32 0, metadata !4, i32 82} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!703 = metadata !{i32 931, i32 0, metadata !704, null}
!704 = metadata !{i32 786443, metadata !702, i32 931, i32 0, metadata !4, i32 83} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!705 = metadata !{i32 931, i32 0, metadata !706, null}
!706 = metadata !{i32 786443, metadata !704, i32 931, i32 0, metadata !4, i32 84} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!707 = metadata !{i32 931, i32 0, metadata !708, null}
!708 = metadata !{i32 786443, metadata !709, i32 931, i32 0, metadata !4, i32 86} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!709 = metadata !{i32 786443, metadata !706, i32 931, i32 0, metadata !4, i32 85} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!710 = metadata !{i32 931, i32 0, metadata !711, null}
!711 = metadata !{i32 786443, metadata !706, i32 931, i32 0, metadata !4, i32 87} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!712 = metadata !{i32 935, i32 0, metadata !515, null}
!713 = metadata !{i32 936, i32 0, metadata !714, null}
!714 = metadata !{i32 786443, metadata !515, i32 935, i32 0, metadata !4, i32 88} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!715 = metadata !{i32 937, i32 0, metadata !716, null}
!716 = metadata !{i32 786443, metadata !714, i32 937, i32 0, metadata !4, i32 89} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!717 = metadata !{i32 937, i32 0, metadata !718, null}
!718 = metadata !{i32 786443, metadata !716, i32 937, i32 0, metadata !4, i32 90} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!719 = metadata !{i32 937, i32 0, metadata !720, null}
!720 = metadata !{i32 786443, metadata !718, i32 937, i32 0, metadata !4, i32 91} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!721 = metadata !{i32 937, i32 0, metadata !722, null}
!722 = metadata !{i32 786443, metadata !723, i32 937, i32 0, metadata !4, i32 93} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!723 = metadata !{i32 786443, metadata !720, i32 937, i32 0, metadata !4, i32 92} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!724 = metadata !{i32 937, i32 0, metadata !725, null}
!725 = metadata !{i32 786443, metadata !720, i32 937, i32 0, metadata !4, i32 94} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!726 = metadata !{i32 944, i32 0, metadata !727, null}
!727 = metadata !{i32 786443, metadata !515, i32 944, i32 0, metadata !4, i32 95} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!728 = metadata !{i32 944, i32 0, metadata !729, null}
!729 = metadata !{i32 786443, metadata !730, i32 944, i32 0, metadata !4, i32 97} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!730 = metadata !{i32 786443, metadata !727, i32 944, i32 0, metadata !4, i32 96} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!731 = metadata !{i32 945, i32 0, metadata !515, null}
!732 = metadata !{i32 946, i32 0, metadata !515, null}
!733 = metadata !{i32 950, i32 0, metadata !734, null}
!734 = metadata !{i32 786443, metadata !515, i32 949, i32 0, metadata !4, i32 98} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!735 = metadata !{i32 952, i32 0, metadata !734, null}
!736 = metadata !{i32 953, i32 0, metadata !734, null}
!737 = metadata !{i32 955, i32 0, metadata !734, null}
!738 = metadata !{i32 956, i32 0, metadata !739, null}
!739 = metadata !{i32 786443, metadata !740, i32 956, i32 0, metadata !4, i32 100} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!740 = metadata !{i32 786443, metadata !734, i32 955, i32 0, metadata !4, i32 99} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!741 = metadata !{i32 957, i32 0, metadata !740, null}
!742 = metadata !{i32 960, i32 0, metadata !734, null}
!743 = metadata !{i32 961, i32 0, metadata !734, null}
!744 = metadata !{i32 962, i32 0, metadata !734, null}
!745 = metadata !{i32 963, i32 0, metadata !746, null}
!746 = metadata !{i32 786443, metadata !734, i32 962, i32 0, metadata !4, i32 101} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!747 = metadata !{i32 964, i32 0, metadata !746, null}
!748 = metadata !{i32 965, i32 0, metadata !746, null}
!749 = metadata !{i32 966, i32 0, metadata !746, null}
!750 = metadata !{i32 967, i32 0, metadata !746, null}
!751 = metadata !{i32 968, i32 0, metadata !746, null}
!752 = metadata !{i32 969, i32 0, metadata !746, null}
!753 = metadata !{i32 970, i32 0, metadata !746, null}
!754 = metadata !{i32 971, i32 0, metadata !746, null}
!755 = metadata !{i32 973, i32 0, metadata !746, null}
!756 = metadata !{i32 974, i32 0, metadata !746, null}
!757 = metadata !{i32 975, i32 0, metadata !746, null}
!758 = metadata !{i32 976, i32 0, metadata !746, null}
!759 = metadata !{i32 977, i32 0, metadata !746, null}
!760 = metadata !{i32 979, i32 0, metadata !761, null}
!761 = metadata !{i32 786443, metadata !746, i32 979, i32 0, metadata !4, i32 102} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!762 = metadata !{i32 980, i32 0, metadata !746, null}
!763 = metadata !{i32 982, i32 0, metadata !734, null}
!764 = metadata !{i32 984, i32 0, metadata !765, null}
!765 = metadata !{i32 786443, metadata !734, i32 984, i32 0, metadata !4, i32 103} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!766 = metadata !{i32 984, i32 0, metadata !767, null}
!767 = metadata !{i32 786443, metadata !765, i32 984, i32 0, metadata !4, i32 104} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!768 = metadata !{i32 984, i32 0, metadata !769, null}
!769 = metadata !{i32 786443, metadata !770, i32 984, i32 0, metadata !4, i32 106} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!770 = metadata !{i32 786443, metadata !767, i32 984, i32 0, metadata !4, i32 105} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!771 = metadata !{i32 984, i32 0, metadata !772, null}
!772 = metadata !{i32 786443, metadata !767, i32 984, i32 0, metadata !4, i32 107} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!773 = metadata !{i32 992, i32 0, metadata !774, null}
!774 = metadata !{i32 786443, metadata !515, i32 990, i32 0, metadata !4, i32 108} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!775 = metadata !{i32 993, i32 0, metadata !776, null}
!776 = metadata !{i32 786443, metadata !777, i32 993, i32 0, metadata !4, i32 110} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!777 = metadata !{i32 786443, metadata !774, i32 992, i32 0, metadata !4, i32 109} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!778 = metadata !{i32 994, i32 0, metadata !777, null}
!779 = metadata !{i32 997, i32 0, metadata !774, null}
!780 = metadata !{i32 998, i32 0, metadata !774, null}
!781 = metadata !{i32 999, i32 0, metadata !782, null}
!782 = metadata !{i32 786443, metadata !774, i32 998, i32 0, metadata !4, i32 111} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!783 = metadata !{i32 1000, i32 0, metadata !782, null}
!784 = metadata !{i32 1000, i32 0, metadata !774, null}
!785 = metadata !{i32 1002, i32 0, metadata !774, null}
!786 = metadata !{i32 1003, i32 0, metadata !787, null}
!787 = metadata !{i32 786443, metadata !774, i32 1002, i32 0, metadata !4, i32 113} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!788 = metadata !{i32 1004, i32 0, metadata !789, null}
!789 = metadata !{i32 786443, metadata !787, i32 1003, i32 0, metadata !4, i32 114} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!790 = metadata !{i32 1005, i32 0, metadata !789, null}
!791 = metadata !{i32 1005, i32 0, metadata !787, null}
!792 = metadata !{i32 1006, i32 0, metadata !793, null}
!793 = metadata !{i32 786443, metadata !787, i32 1005, i32 0, metadata !4, i32 115} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!794 = metadata !{i32 1008, i32 0, metadata !795, null}
!795 = metadata !{i32 786443, metadata !796, i32 1008, i32 0, metadata !4, i32 117} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!796 = metadata !{i32 786443, metadata !787, i32 1007, i32 0, metadata !4, i32 116} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!797 = metadata !{i32 1009, i32 0, metadata !796, null}
!798 = metadata !{i32 1011, i32 0, metadata !774, null}
!799 = metadata !{i32 1012, i32 0, metadata !800, null}
!800 = metadata !{i32 786443, metadata !774, i32 1011, i32 0, metadata !4, i32 118} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!801 = metadata !{i32 1013, i32 0, metadata !802, null}
!802 = metadata !{i32 786443, metadata !800, i32 1012, i32 0, metadata !4, i32 119} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!803 = metadata !{i32 1014, i32 0, metadata !802, null}
!804 = metadata !{i32 1014, i32 0, metadata !800, null}
!805 = metadata !{i32 1015, i32 0, metadata !806, null}
!806 = metadata !{i32 786443, metadata !800, i32 1014, i32 0, metadata !4, i32 120} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!807 = metadata !{i32 1016, i32 0, metadata !806, null}
!808 = metadata !{i32 1016, i32 0, metadata !800, null}
!809 = metadata !{i32 1017, i32 0, metadata !810, null}
!810 = metadata !{i32 786443, metadata !800, i32 1016, i32 0, metadata !4, i32 121} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!811 = metadata !{i32 1018, i32 0, metadata !810, null}
!812 = metadata !{i32 1018, i32 0, metadata !800, null}
!813 = metadata !{i32 1019, i32 0, metadata !814, null}
!814 = metadata !{i32 786443, metadata !800, i32 1018, i32 0, metadata !4, i32 122} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!815 = metadata !{i32 1020, i32 0, metadata !814, null}
!816 = metadata !{i32 1020, i32 0, metadata !800, null}
!817 = metadata !{i32 1021, i32 0, metadata !818, null}
!818 = metadata !{i32 786443, metadata !800, i32 1020, i32 0, metadata !4, i32 123} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!819 = metadata !{i32 1023, i32 0, metadata !820, null}
!820 = metadata !{i32 786443, metadata !821, i32 1023, i32 0, metadata !4, i32 125} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!821 = metadata !{i32 786443, metadata !800, i32 1022, i32 0, metadata !4, i32 124} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!822 = metadata !{i32 1024, i32 0, metadata !821, null}
!823 = metadata !{i32 1026, i32 0, metadata !774, null}
!824 = metadata !{i32 1027, i32 0, metadata !825, null}
!825 = metadata !{i32 786443, metadata !774, i32 1026, i32 0, metadata !4, i32 126} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!826 = metadata !{i32 1028, i32 0, metadata !827, null}
!827 = metadata !{i32 786443, metadata !825, i32 1027, i32 0, metadata !4, i32 127} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!828 = metadata !{i32 1033, i32 0, metadata !825, null}
!829 = metadata !{i32 1030, i32 0, metadata !830, null}
!830 = metadata !{i32 786443, metadata !831, i32 1030, i32 0, metadata !4, i32 129} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!831 = metadata !{i32 786443, metadata !825, i32 1029, i32 0, metadata !4, i32 128} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!832 = metadata !{i32 1031, i32 0, metadata !831, null}
!833 = metadata !{i32 1033, i32 0, metadata !774, null}
!834 = metadata !{i32 1034, i32 0, metadata !835, null}
!835 = metadata !{i32 786443, metadata !774, i32 1033, i32 0, metadata !4, i32 130} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!836 = metadata !{i32 1035, i32 0, metadata !837, null}
!837 = metadata !{i32 786443, metadata !835, i32 1034, i32 0, metadata !4, i32 131} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!838 = metadata !{i32 1036, i32 0, metadata !837, null}
!839 = metadata !{i32 1036, i32 0, metadata !835, null}
!840 = metadata !{i32 1037, i32 0, metadata !841, null}
!841 = metadata !{i32 786443, metadata !835, i32 1036, i32 0, metadata !4, i32 132} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!842 = metadata !{i32 1038, i32 0, metadata !841, null}
!843 = metadata !{i32 1038, i32 0, metadata !835, null}
!844 = metadata !{i32 1039, i32 0, metadata !845, null}
!845 = metadata !{i32 786443, metadata !835, i32 1038, i32 0, metadata !4, i32 133} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!846 = metadata !{i32 1041, i32 0, metadata !847, null}
!847 = metadata !{i32 786443, metadata !848, i32 1041, i32 0, metadata !4, i32 135} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!848 = metadata !{i32 786443, metadata !835, i32 1040, i32 0, metadata !4, i32 134} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!849 = metadata !{i32 1042, i32 0, metadata !848, null}
!850 = metadata !{i32 1044, i32 0, metadata !774, null}
!851 = metadata !{i32 1045, i32 0, metadata !852, null}
!852 = metadata !{i32 786443, metadata !774, i32 1044, i32 0, metadata !4, i32 136} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!853 = metadata !{i32 1046, i32 0, metadata !854, null}
!854 = metadata !{i32 786443, metadata !852, i32 1045, i32 0, metadata !4, i32 137} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!855 = metadata !{i32 1047, i32 0, metadata !856, null}
!856 = metadata !{i32 786443, metadata !854, i32 1046, i32 0, metadata !4, i32 138} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!857 = metadata !{i32 1052, i32 0, metadata !854, null}
!858 = metadata !{i32 1049, i32 0, metadata !859, null}
!859 = metadata !{i32 786443, metadata !860, i32 1049, i32 0, metadata !4, i32 140} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!860 = metadata !{i32 786443, metadata !854, i32 1048, i32 0, metadata !4, i32 139} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!861 = metadata !{i32 1050, i32 0, metadata !860, null}
!862 = metadata !{i32 1052, i32 0, metadata !852, null}
!863 = metadata !{i32 1053, i32 0, metadata !864, null}
!864 = metadata !{i32 786443, metadata !852, i32 1052, i32 0, metadata !4, i32 141} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!865 = metadata !{i32 1054, i32 0, metadata !866, null}
!866 = metadata !{i32 786443, metadata !864, i32 1053, i32 0, metadata !4, i32 142} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!867 = metadata !{i32 1056, i32 0, metadata !868, null}
!868 = metadata !{i32 786443, metadata !869, i32 1056, i32 0, metadata !4, i32 144} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!869 = metadata !{i32 786443, metadata !864, i32 1055, i32 0, metadata !4, i32 143} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!870 = metadata !{i32 1057, i32 0, metadata !869, null}
!871 = metadata !{i32 1060, i32 0, metadata !872, null}
!872 = metadata !{i32 786443, metadata !873, i32 1060, i32 0, metadata !4, i32 146} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!873 = metadata !{i32 786443, metadata !852, i32 1059, i32 0, metadata !4, i32 145} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!874 = metadata !{i32 1061, i32 0, metadata !873, null}
!875 = metadata !{i32 1063, i32 0, metadata !774, null}
!876 = metadata !{i32 1064, i32 0, metadata !877, null}
!877 = metadata !{i32 786443, metadata !774, i32 1063, i32 0, metadata !4, i32 147} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!878 = metadata !{i32 1066, i32 0, metadata !879, null}
!879 = metadata !{i32 786443, metadata !880, i32 1066, i32 0, metadata !4, i32 149} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!880 = metadata !{i32 786443, metadata !774, i32 1065, i32 0, metadata !4, i32 148} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!881 = metadata !{i32 1067, i32 0, metadata !880, null}
!882 = metadata !{i32 1070, i32 0, metadata !774, null}
!883 = metadata !{i32 1071, i32 0, metadata !774, null}
!884 = metadata !{i32 1076, i32 0, metadata !885, null}
!885 = metadata !{i32 786443, metadata !515, i32 1075, i32 0, metadata !4, i32 150} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!886 = metadata !{i32 1078, i32 0, metadata !887, null}
!887 = metadata !{i32 786443, metadata !885, i32 1078, i32 0, metadata !4, i32 151} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!888 = metadata !{i32 1078, i32 0, metadata !889, null}
!889 = metadata !{i32 786443, metadata !887, i32 1078, i32 0, metadata !4, i32 152} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!890 = metadata !{i32 1079, i32 0, metadata !885, null}
!891 = metadata !{i32 1080, i32 0, metadata !892, null}
!892 = metadata !{i32 786443, metadata !885, i32 1079, i32 0, metadata !4, i32 153} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!893 = metadata !{i32 1081, i32 0, metadata !892, null}
!894 = metadata !{i32 1083, i32 0, metadata !885, null}
!895 = metadata !{i32 1084, i32 0, metadata !885, null}
!896 = metadata !{i32 1085, i32 0, metadata !897, null}
!897 = metadata !{i32 786443, metadata !898, i32 1085, i32 0, metadata !4, i32 155} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!898 = metadata !{i32 786443, metadata !885, i32 1084, i32 0, metadata !4, i32 154} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!899 = metadata !{i32 1086, i32 0, metadata !898, null}
!900 = metadata !{i32 1097, i32 0, metadata !901, null}
!901 = metadata !{i32 786443, metadata !515, i32 1096, i32 0, metadata !4, i32 156} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!902 = metadata !{i32 1102, i32 0, metadata !903, null}
!903 = metadata !{i32 786443, metadata !904, i32 1102, i32 0, metadata !4, i32 158} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!904 = metadata !{i32 786443, metadata !901, i32 1097, i32 0, metadata !4, i32 157} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!905 = metadata !{i32 1103, i32 0, metadata !904, null}
!906 = metadata !{i32 1105, i32 0, metadata !904, null}
!907 = metadata !{i32 1106, i32 0, metadata !904, null}
!908 = metadata !{i32 1107, i32 0, metadata !909, null}
!909 = metadata !{i32 786443, metadata !910, i32 1107, i32 0, metadata !4, i32 160} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!910 = metadata !{i32 786443, metadata !904, i32 1106, i32 0, metadata !4, i32 159} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!911 = metadata !{i32 1108, i32 0, metadata !910, null}
!912 = metadata !{i32 1123, i32 0, metadata !913, null}
!913 = metadata !{i32 786443, metadata !515, i32 1122, i32 0, metadata !4, i32 161} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!914 = metadata !{i32 1125, i32 0, metadata !915, null}
!915 = metadata !{i32 786443, metadata !913, i32 1123, i32 0, metadata !4, i32 162} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!916 = metadata !{i32 1126, i32 0, metadata !917, null}
!917 = metadata !{i32 786443, metadata !915, i32 1126, i32 0, metadata !4, i32 163} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!918 = metadata !{i32 1126, i32 0, metadata !919, null}
!919 = metadata !{i32 786443, metadata !917, i32 1126, i32 0, metadata !4, i32 164} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!920 = metadata !{i32 1126, i32 0, metadata !921, null}
!921 = metadata !{i32 786443, metadata !919, i32 1126, i32 0, metadata !4, i32 165} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!922 = metadata !{i32 1126, i32 0, metadata !923, null}
!923 = metadata !{i32 786443, metadata !924, i32 1126, i32 0, metadata !4, i32 167} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!924 = metadata !{i32 786443, metadata !921, i32 1126, i32 0, metadata !4, i32 166} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!925 = metadata !{i32 1126, i32 0, metadata !926, null}
!926 = metadata !{i32 786443, metadata !921, i32 1126, i32 0, metadata !4, i32 168} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!927 = metadata !{i32 1130, i32 0, metadata !915, null}
!928 = metadata !{i32 1131, i32 0, metadata !915, null}
!929 = metadata !{i32 1132, i32 0, metadata !915, null}
!930 = metadata !{i32 1135, i32 0, metadata !931, null}
!931 = metadata !{i32 786443, metadata !915, i32 1135, i32 0, metadata !4, i32 169} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!932 = metadata !{i32 1135, i32 0, metadata !933, null}
!933 = metadata !{i32 786443, metadata !931, i32 1135, i32 0, metadata !4, i32 170} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!934 = metadata !{i32 1135, i32 0, metadata !935, null}
!935 = metadata !{i32 786443, metadata !933, i32 1135, i32 0, metadata !4, i32 171} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!936 = metadata !{i32 1135, i32 0, metadata !937, null}
!937 = metadata !{i32 786443, metadata !938, i32 1135, i32 0, metadata !4, i32 173} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!938 = metadata !{i32 786443, metadata !935, i32 1135, i32 0, metadata !4, i32 172} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!939 = metadata !{i32 1135, i32 0, metadata !940, null}
!940 = metadata !{i32 786443, metadata !935, i32 1135, i32 0, metadata !4, i32 174} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!941 = metadata !{i32 1138, i32 0, metadata !915, null}
!942 = metadata !{i32 1139, i32 0, metadata !915, null}
!943 = metadata !{i32 1140, i32 0, metadata !944, null}
!944 = metadata !{i32 786443, metadata !945, i32 1140, i32 0, metadata !4, i32 176} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!945 = metadata !{i32 786443, metadata !915, i32 1139, i32 0, metadata !4, i32 175} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!946 = metadata !{i32 1141, i32 0, metadata !945, null}
!947 = metadata !{i32 1148, i32 0, metadata !515, null}
!948 = metadata !{i32 1150, i32 0, metadata !949, null}
!949 = metadata !{i32 786443, metadata !515, i32 1148, i32 0, metadata !4, i32 177} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!950 = metadata !{i32 1151, i32 0, metadata !949, null}
!951 = metadata !{i32 1155, i32 0, metadata !952, null}
!952 = metadata !{i32 786443, metadata !949, i32 1155, i32 0, metadata !4, i32 178} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!953 = metadata !{i32 1156, i32 0, metadata !949, null}
!954 = metadata !{i32 1161, i32 0, metadata !955, null}
!955 = metadata !{i32 786443, metadata !515, i32 1161, i32 0, metadata !4, i32 179} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!956 = metadata !{i32 1161, i32 0, metadata !957, null}
!957 = metadata !{i32 786443, metadata !958, i32 1161, i32 0, metadata !4, i32 181} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!958 = metadata !{i32 786443, metadata !955, i32 1161, i32 0, metadata !4, i32 180} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!959 = metadata !{i32 1162, i32 0, metadata !515, null}
!960 = metadata !{i32 1163, i32 0, metadata !515, null}
!961 = metadata !{i32 1166, i32 0, metadata !962, null}
!962 = metadata !{i32 786443, metadata !515, i32 1166, i32 0, metadata !4, i32 182} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!963 = metadata !{i32 1166, i32 0, metadata !964, null}
!964 = metadata !{i32 786443, metadata !965, i32 1166, i32 0, metadata !4, i32 184} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!965 = metadata !{i32 786443, metadata !962, i32 1166, i32 0, metadata !4, i32 183} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!966 = metadata !{i32 1167, i32 0, metadata !515, null}
!967 = metadata !{i32 1168, i32 0, metadata !515, null}
!968 = metadata !{i32 1171, i32 0, metadata !969, null}
!969 = metadata !{i32 786443, metadata !515, i32 1171, i32 0, metadata !4, i32 185} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!970 = metadata !{i32 1171, i32 0, metadata !971, null}
!971 = metadata !{i32 786443, metadata !972, i32 1171, i32 0, metadata !4, i32 187} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!972 = metadata !{i32 786443, metadata !969, i32 1171, i32 0, metadata !4, i32 186} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!973 = metadata !{i32 1172, i32 0, metadata !515, null}
!974 = metadata !{i32 1173, i32 0, metadata !515, null}
!975 = metadata !{i32 1176, i32 0, metadata !976, null}
!976 = metadata !{i32 786443, metadata !515, i32 1176, i32 0, metadata !4, i32 188} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!977 = metadata !{i32 1176, i32 0, metadata !978, null}
!978 = metadata !{i32 786443, metadata !979, i32 1176, i32 0, metadata !4, i32 190} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!979 = metadata !{i32 786443, metadata !976, i32 1176, i32 0, metadata !4, i32 189} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!980 = metadata !{i32 1177, i32 0, metadata !515, null}
!981 = metadata !{i32 1178, i32 0, metadata !515, null}
!982 = metadata !{i32 1182, i32 0, metadata !515, null}
!983 = metadata !{i32 1183, i32 0, metadata !984, null}
!984 = metadata !{i32 786443, metadata !985, i32 1183, i32 0, metadata !4, i32 192} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!985 = metadata !{i32 786443, metadata !515, i32 1182, i32 0, metadata !4, i32 191} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!986 = metadata !{i32 1184, i32 0, metadata !985, null}
!987 = metadata !{i32 1187, i32 0, metadata !515, null}
!988 = metadata !{i32 1188, i32 0, metadata !515, null}
!989 = metadata !{i32 1189, i32 0, metadata !515, null}
!990 = metadata !{i32 1194, i32 0, metadata !991, null}
!991 = metadata !{i32 786443, metadata !515, i32 1193, i32 0, metadata !4, i32 193} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!992 = metadata !{i32 1195, i32 0, metadata !993, null}
!993 = metadata !{i32 786443, metadata !991, i32 1194, i32 0, metadata !4, i32 194} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!994 = metadata !{i32 1196, i32 0, metadata !993, null}
!995 = metadata !{i32 1199, i32 0, metadata !991, null}
!996 = metadata !{i32 1200, i32 0, metadata !997, null}
!997 = metadata !{i32 786443, metadata !998, i32 1200, i32 0, metadata !4, i32 196} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!998 = metadata !{i32 786443, metadata !991, i32 1199, i32 0, metadata !4, i32 195} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!999 = metadata !{i32 1201, i32 0, metadata !998, null}
!1000 = metadata !{i32 1204, i32 0, metadata !991, null}
!1001 = metadata !{i32 1205, i32 0, metadata !991, null}
!1002 = metadata !{i32 1207, i32 0, metadata !991, null}
!1003 = metadata !{i32 1208, i32 0, metadata !1004, null}
!1004 = metadata !{i32 786443, metadata !1005, i32 1208, i32 0, metadata !4, i32 198} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1005 = metadata !{i32 786443, metadata !991, i32 1207, i32 0, metadata !4, i32 197} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1006 = metadata !{i32 1209, i32 0, metadata !1005, null}
!1007 = metadata !{i32 1217, i32 0, metadata !515, null}
!1008 = metadata !{i32 1218, i32 0, metadata !1009, null}
!1009 = metadata !{i32 786443, metadata !1010, i32 1218, i32 0, metadata !4, i32 200} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1010 = metadata !{i32 786443, metadata !515, i32 1217, i32 0, metadata !4, i32 199} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1011 = metadata !{i32 1219, i32 0, metadata !1010, null}
!1012 = metadata !{i32 1222, i32 0, metadata !515, null}
!1013 = metadata !{i32 1223, i32 0, metadata !515, null}
!1014 = metadata !{i32 1224, i32 0, metadata !515, null}
!1015 = metadata !{i32 1229, i32 0, metadata !1016, null}
!1016 = metadata !{i32 786443, metadata !515, i32 1228, i32 0, metadata !4, i32 201} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1017 = metadata !{i32 1230, i32 0, metadata !1018, null}
!1018 = metadata !{i32 786443, metadata !1016, i32 1229, i32 0, metadata !4, i32 202} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1019 = metadata !{i32 1231, i32 0, metadata !1018, null}
!1020 = metadata !{i32 1234, i32 0, metadata !1016, null}
!1021 = metadata !{i32 1235, i32 0, metadata !1022, null}
!1022 = metadata !{i32 786443, metadata !1016, i32 1234, i32 0, metadata !4, i32 203} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1023 = metadata !{i32 1236, i32 0, metadata !1022, null}
!1024 = metadata !{i32 1241, i32 0, metadata !1016, null}
!1025 = metadata !{i32 1242, i32 0, metadata !1026, null}
!1026 = metadata !{i32 786443, metadata !1027, i32 1242, i32 0, metadata !4, i32 205} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1027 = metadata !{i32 786443, metadata !1016, i32 1241, i32 0, metadata !4, i32 204} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1028 = metadata !{i32 1243, i32 0, metadata !1027, null}
!1029 = metadata !{i32 1246, i32 0, metadata !1016, null}
!1030 = metadata !{i32 1247, i32 0, metadata !1016, null}
!1031 = metadata !{i32 1249, i32 0, metadata !1016, null}
!1032 = metadata !{i32 1250, i32 0, metadata !1033, null}
!1033 = metadata !{i32 786443, metadata !1034, i32 1250, i32 0, metadata !4, i32 207} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1034 = metadata !{i32 786443, metadata !1016, i32 1249, i32 0, metadata !4, i32 206} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1035 = metadata !{i32 1251, i32 0, metadata !1034, null}
!1036 = metadata !{i32 1260, i32 0, metadata !1037, null}
!1037 = metadata !{i32 786443, metadata !515, i32 1259, i32 0, metadata !4, i32 208} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1038 = metadata !{i32 1261, i32 0, metadata !1039, null}
!1039 = metadata !{i32 786443, metadata !1040, i32 1261, i32 0, metadata !4, i32 210} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1040 = metadata !{i32 786443, metadata !1037, i32 1260, i32 0, metadata !4, i32 209} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1041 = metadata !{i32 1262, i32 0, metadata !1040, null}
!1042 = metadata !{i32 1265, i32 0, metadata !1037, null}
!1043 = metadata !{i32 1266, i32 0, metadata !1037, null}
!1044 = metadata !{i32 1271, i32 0, metadata !1045, null}
!1045 = metadata !{i32 786443, metadata !515, i32 1270, i32 0, metadata !4, i32 211} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1046 = metadata !{i32 1272, i32 0, metadata !1047, null}
!1047 = metadata !{i32 786443, metadata !1045, i32 1271, i32 0, metadata !4, i32 212} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1048 = metadata !{i32 1273, i32 0, metadata !1047, null}
!1049 = metadata !{i32 1276, i32 0, metadata !1045, null}
!1050 = metadata !{i32 1279, i32 0, metadata !1051, null}
!1051 = metadata !{i32 786443, metadata !1045, i32 1276, i32 0, metadata !4, i32 213} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1052 = metadata !{i32 1280, i32 0, metadata !1051, null}
!1053 = metadata !{i32 1283, i32 0, metadata !1045, null}
!1054 = metadata !{i32 1285, i32 0, metadata !1045, null}
!1055 = metadata !{i32 1286, i32 0, metadata !1056, null}
!1056 = metadata !{i32 786443, metadata !1057, i32 1286, i32 0, metadata !4, i32 215} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1057 = metadata !{i32 786443, metadata !1045, i32 1285, i32 0, metadata !4, i32 214} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1058 = metadata !{i32 1287, i32 0, metadata !1057, null}
!1059 = metadata !{i32 1290, i32 0, metadata !1060, null}
!1060 = metadata !{i32 786443, metadata !1045, i32 1290, i32 0, metadata !4, i32 216} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1061 = metadata !{i32 1290, i32 0, metadata !1062, null}
!1062 = metadata !{i32 786443, metadata !1060, i32 1290, i32 0, metadata !4, i32 217} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1063 = metadata !{i32 1292, i32 0, metadata !1045, null}
!1064 = metadata !{i32 1293, i32 0, metadata !1045, null}
!1065 = metadata !{i32 1295, i32 0, metadata !1045, null}
!1066 = metadata !{i32 1297, i32 0, metadata !1067, null}
!1067 = metadata !{i32 786443, metadata !1045, i32 1295, i32 0, metadata !4, i32 218} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1068 = metadata !{i32 1298, i32 0, metadata !1067, null}
!1069 = metadata !{i32 1301, i32 0, metadata !1067, null}
!1070 = metadata !{i32 1302, i32 0, metadata !1067, null}
!1071 = metadata !{i32 1305, i32 0, metadata !1067, null}
!1072 = metadata !{i32 1306, i32 0, metadata !1067, null}
!1073 = metadata !{i32 1309, i32 0, metadata !1067, null}
!1074 = metadata !{i32 1310, i32 0, metadata !1067, null}
!1075 = metadata !{i32 1313, i32 0, metadata !1067, null}
!1076 = metadata !{i32 1314, i32 0, metadata !1067, null}
!1077 = metadata !{i32 1321, i32 0, metadata !1078, null}
!1078 = metadata !{i32 786443, metadata !515, i32 1320, i32 0, metadata !4, i32 219} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1079 = metadata !{i32 1322, i32 0, metadata !1080, null}
!1080 = metadata !{i32 786443, metadata !1078, i32 1322, i32 0, metadata !4, i32 220} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1081 = metadata !{i32 1323, i32 0, metadata !1082, null}
!1082 = metadata !{i32 786443, metadata !1080, i32 1322, i32 0, metadata !4, i32 221} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1083 = metadata !{i32 1324, i32 0, metadata !1082, null}
!1084 = metadata !{i32 1326, i32 0, metadata !1082, null}
!1085 = metadata !{i32 1329, i32 0, metadata !1082, null}
!1086 = metadata !{i32 1334, i32 0, metadata !1087, null}
!1087 = metadata !{i32 786443, metadata !1082, i32 1329, i32 0, metadata !4, i32 222} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1088 = metadata !{i32 1335, i32 0, metadata !1087, null}
!1089 = metadata !{i32 1336, i32 0, metadata !1087, null}
!1090 = metadata !{i32 1339, i32 0, metadata !1087, null}
!1091 = metadata !{i32 1340, i32 0, metadata !1087, null}
!1092 = metadata !{i32 1341, i32 0, metadata !1087, null}
!1093 = metadata !{i32 1344, i32 0, metadata !1087, null}
!1094 = metadata !{i32 1345, i32 0, metadata !1087, null}
!1095 = metadata !{i32 1347, i32 0, metadata !1096, null}
!1096 = metadata !{i32 786443, metadata !1087, i32 1345, i32 0, metadata !4, i32 223} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1097 = metadata !{i32 1348, i32 0, metadata !1096, null}
!1098 = metadata !{i32 1350, i32 0, metadata !1096, null}
!1099 = metadata !{i32 1351, i32 0, metadata !1096, null}
!1100 = metadata !{i32 1353, i32 0, metadata !1096, null}
!1101 = metadata !{i32 1354, i32 0, metadata !1096, null}
!1102 = metadata !{i32 1361, i32 0, metadata !1087, null}
!1103 = metadata !{i32 1362, i32 0, metadata !1087, null}
!1104 = metadata !{i32 1364, i32 0, metadata !1105, null}
!1105 = metadata !{i32 786443, metadata !1087, i32 1363, i32 0, metadata !4, i32 224} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1106 = metadata !{i32 1365, i32 0, metadata !1105, null}
!1107 = metadata !{i32 1365, i32 0, metadata !1087, null}
!1108 = metadata !{i32 1366, i32 0, metadata !1109, null}
!1109 = metadata !{i32 786443, metadata !1087, i32 1365, i32 0, metadata !4, i32 225} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1110 = metadata !{i32 1367, i32 0, metadata !1109, null}
!1111 = metadata !{i32 1373, i32 0, metadata !1087, null}
!1112 = metadata !{i32 1374, i32 0, metadata !1087, null}
!1113 = metadata !{i32 1376, i32 0, metadata !1114, null}
!1114 = metadata !{i32 786443, metadata !1087, i32 1375, i32 0, metadata !4, i32 226} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1115 = metadata !{i32 1377, i32 0, metadata !1114, null}
!1116 = metadata !{i32 1377, i32 0, metadata !1087, null}
!1117 = metadata !{i32 1378, i32 0, metadata !1118, null}
!1118 = metadata !{i32 786443, metadata !1087, i32 1377, i32 0, metadata !4, i32 227} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1119 = metadata !{i32 1379, i32 0, metadata !1118, null}
!1120 = metadata !{i32 1385, i32 0, metadata !1087, null}
!1121 = metadata !{i32 1386, i32 0, metadata !1087, null}
!1122 = metadata !{i32 1388, i32 0, metadata !1123, null}
!1123 = metadata !{i32 786443, metadata !1087, i32 1387, i32 0, metadata !4, i32 228} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1124 = metadata !{i32 1389, i32 0, metadata !1123, null}
!1125 = metadata !{i32 1389, i32 0, metadata !1087, null}
!1126 = metadata !{i32 1390, i32 0, metadata !1127, null}
!1127 = metadata !{i32 786443, metadata !1087, i32 1389, i32 0, metadata !4, i32 229} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1128 = metadata !{i32 1391, i32 0, metadata !1127, null}
!1129 = metadata !{i32 1397, i32 0, metadata !1087, null}
!1130 = metadata !{i32 1398, i32 0, metadata !1087, null}
!1131 = metadata !{i32 1400, i32 0, metadata !1132, null}
!1132 = metadata !{i32 786443, metadata !1087, i32 1399, i32 0, metadata !4, i32 230} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1133 = metadata !{i32 1401, i32 0, metadata !1132, null}
!1134 = metadata !{i32 1401, i32 0, metadata !1087, null}
!1135 = metadata !{i32 1402, i32 0, metadata !1136, null}
!1136 = metadata !{i32 786443, metadata !1087, i32 1401, i32 0, metadata !4, i32 231} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1137 = metadata !{i32 1403, i32 0, metadata !1136, null}
!1138 = metadata !{i32 1409, i32 0, metadata !1087, null}
!1139 = metadata !{i32 1410, i32 0, metadata !1087, null}
!1140 = metadata !{i32 1412, i32 0, metadata !1141, null}
!1141 = metadata !{i32 786443, metadata !1087, i32 1411, i32 0, metadata !4, i32 232} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1142 = metadata !{i32 1413, i32 0, metadata !1141, null}
!1143 = metadata !{i32 1413, i32 0, metadata !1087, null}
!1144 = metadata !{i32 1414, i32 0, metadata !1145, null}
!1145 = metadata !{i32 786443, metadata !1087, i32 1413, i32 0, metadata !4, i32 233} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1146 = metadata !{i32 1415, i32 0, metadata !1145, null}
!1147 = metadata !{i32 1422, i32 0, metadata !1087, null}
!1148 = metadata !{i32 1426, i32 0, metadata !1087, null}
!1149 = metadata !{i32 1431, i32 0, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !1078, i32 1431, i32 0, metadata !4, i32 234} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1151 = metadata !{i32 1431, i32 0, metadata !1152, null}
!1152 = metadata !{i32 786443, metadata !1153, i32 1431, i32 0, metadata !4, i32 236} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1153 = metadata !{i32 786443, metadata !1150, i32 1431, i32 0, metadata !4, i32 235} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1154 = metadata !{i32 1433, i32 0, metadata !1078, null}
!1155 = metadata !{i32 1434, i32 0, metadata !1156, null}
!1156 = metadata !{i32 786443, metadata !1078, i32 1433, i32 0, metadata !4, i32 237} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1157 = metadata !{i32 1435, i32 0, metadata !1156, null}
!1158 = metadata !{i32 1438, i32 0, metadata !1078, null}
!1159 = metadata !{i32 1439, i32 0, metadata !1160, null}
!1160 = metadata !{i32 786443, metadata !1078, i32 1438, i32 0, metadata !4, i32 238} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1161 = metadata !{i32 1440, i32 0, metadata !1162, null}
!1162 = metadata !{i32 786443, metadata !1160, i32 1440, i32 0, metadata !4, i32 239} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1163 = metadata !{i32 1440, i32 0, metadata !1164, null}
!1164 = metadata !{i32 786443, metadata !1162, i32 1440, i32 0, metadata !4, i32 240} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1165 = metadata !{i32 1440, i32 0, metadata !1166, null}
!1166 = metadata !{i32 786443, metadata !1164, i32 1440, i32 0, metadata !4, i32 241} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1167 = metadata !{i32 1440, i32 0, metadata !1168, null}
!1168 = metadata !{i32 786443, metadata !1169, i32 1440, i32 0, metadata !4, i32 243} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1169 = metadata !{i32 786443, metadata !1166, i32 1440, i32 0, metadata !4, i32 242} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1170 = metadata !{i32 1440, i32 0, metadata !1171, null}
!1171 = metadata !{i32 786443, metadata !1166, i32 1440, i32 0, metadata !4, i32 244} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1172 = metadata !{i32 1444, i32 0, metadata !1173, null}
!1173 = metadata !{i32 786443, metadata !1078, i32 1444, i32 0, metadata !4, i32 245} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1174 = metadata !{i32 1445, i32 0, metadata !1078, null}
!1175 = metadata !{i32 1449, i32 0, metadata !515, null}
!1176 = metadata !{i32 1451, i32 0, metadata !515, null}
!1177 = metadata !{i32 1452, i32 0, metadata !1178, null}
!1178 = metadata !{i32 786443, metadata !515, i32 1451, i32 0, metadata !4, i32 246} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1179 = metadata !{i32 1453, i32 0, metadata !1178, null}
!1180 = metadata !{i32 1456, i32 0, metadata !515, null}
!1181 = metadata !{i32 1457, i32 0, metadata !1182, null}
!1182 = metadata !{i32 786443, metadata !515, i32 1456, i32 0, metadata !4, i32 247} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1183 = metadata !{i32 1458, i32 0, metadata !1182, null}
!1184 = metadata !{i32 1465, i32 0, metadata !1185, null}
!1185 = metadata !{i32 786443, metadata !1186, i32 1465, i32 0, metadata !4, i32 249} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1186 = metadata !{i32 786443, metadata !515, i32 1464, i32 0, metadata !4, i32 248} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1187 = metadata !{i32 1465, i32 0, metadata !1188, null}
!1188 = metadata !{i32 786443, metadata !1185, i32 1465, i32 0, metadata !4, i32 250} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1189 = metadata !{i32 1467, i32 0, metadata !1186, null}
!1190 = metadata !{i32 1468, i32 0, metadata !1186, null}
!1191 = metadata !{i32 1470, i32 0, metadata !1186, null}
!1192 = metadata !{i32 1472, i32 0, metadata !1186, null}
!1193 = metadata !{i32 1474, i32 0, metadata !1194, null}
!1194 = metadata !{i32 786443, metadata !1186, i32 1472, i32 0, metadata !4, i32 251} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1195 = metadata !{i32 1475, i32 0, metadata !1194, null}
!1196 = metadata !{i32 1476, i32 0, metadata !1194, null}
!1197 = metadata !{i32 1480, i32 0, metadata !1194, null}
!1198 = metadata !{i32 1481, i32 0, metadata !1199, null}
!1199 = metadata !{i32 786443, metadata !1194, i32 1480, i32 0, metadata !4, i32 252} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1200 = metadata !{i32 1482, i32 0, metadata !1199, null}
!1201 = metadata !{i32 1483, i32 0, metadata !1202, null}
!1202 = metadata !{i32 786443, metadata !1194, i32 1482, i32 0, metadata !4, i32 253} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1203 = metadata !{i32 1488, i32 0, metadata !1194, null}
!1204 = metadata !{i32 1489, i32 0, metadata !1205, null}
!1205 = metadata !{i32 786443, metadata !1206, i32 1489, i32 0, metadata !4, i32 255} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1206 = metadata !{i32 786443, metadata !1194, i32 1488, i32 0, metadata !4, i32 254} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1207 = metadata !{i32 1490, i32 0, metadata !1206, null}
!1208 = metadata !{i32 1493, i32 0, metadata !1194, null}
!1209 = metadata !{i32 1494, i32 0, metadata !1194, null}
!1210 = metadata !{i32 1498, i32 0, metadata !1194, null}
!1211 = metadata !{i32 1499, i32 0, metadata !1212, null}
!1212 = metadata !{i32 786443, metadata !1194, i32 1498, i32 0, metadata !4, i32 256} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1213 = metadata !{i32 1501, i32 0, metadata !1212, null}
!1214 = metadata !{i32 1501, i32 0, metadata !1194, null}
!1215 = metadata !{i32 1502, i32 0, metadata !1216, null}
!1216 = metadata !{i32 786443, metadata !1194, i32 1501, i32 0, metadata !4, i32 257} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1217 = metadata !{i32 1503, i32 0, metadata !1216, null}
!1218 = metadata !{i32 1503, i32 0, metadata !1194, null}
!1219 = metadata !{i32 1504, i32 0, metadata !1220, null}
!1220 = metadata !{i32 786443, metadata !1194, i32 1503, i32 0, metadata !4, i32 258} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1221 = metadata !{i32 1505, i32 0, metadata !1220, null}
!1222 = metadata !{i32 1506, i32 0, metadata !1223, null}
!1223 = metadata !{i32 786443, metadata !1194, i32 1505, i32 0, metadata !4, i32 259} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1224 = metadata !{i32 1515, i32 0, metadata !1194, null}
!1225 = metadata !{i32 1516, i32 0, metadata !1194, null}
!1226 = metadata !{i32 1523, i32 0, metadata !1227, null}
!1227 = metadata !{i32 786443, metadata !515, i32 1522, i32 0, metadata !4, i32 260} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1228 = metadata !{i32 1524, i32 0, metadata !1227, null}
!1229 = metadata !{i32 1525, i32 0, metadata !1230, null}
!1230 = metadata !{i32 786443, metadata !1227, i32 1525, i32 0, metadata !4, i32 261} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1231 = metadata !{i32 1526, i32 0, metadata !1232, null}
!1232 = metadata !{i32 786443, metadata !1230, i32 1525, i32 0, metadata !4, i32 262} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1233 = metadata !{i32 1527, i32 0, metadata !1232, null}
!1234 = metadata !{i32 1528, i32 0, metadata !1235, null}
!1235 = metadata !{i32 786443, metadata !1232, i32 1527, i32 0, metadata !4, i32 263} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1236 = metadata !{i32 1529, i32 0, metadata !1235, null}
!1237 = metadata !{i32 1530, i32 0, metadata !1238, null}
!1238 = metadata !{i32 786443, metadata !1235, i32 1530, i32 0, metadata !4, i32 264} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1239 = metadata !{i32 1530, i32 0, metadata !1240, null}
!1240 = metadata !{i32 786443, metadata !1238, i32 1530, i32 0, metadata !4, i32 265} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1241 = metadata !{i32 1530, i32 0, metadata !1242, null}
!1242 = metadata !{i32 786443, metadata !1240, i32 1530, i32 0, metadata !4, i32 266} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1243 = metadata !{i32 1530, i32 0, metadata !1244, null}
!1244 = metadata !{i32 786443, metadata !1245, i32 1530, i32 0, metadata !4, i32 268} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1245 = metadata !{i32 786443, metadata !1242, i32 1530, i32 0, metadata !4, i32 267} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1246 = metadata !{i32 1530, i32 0, metadata !1247, null}
!1247 = metadata !{i32 786443, metadata !1242, i32 1530, i32 0, metadata !4, i32 269} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1248 = metadata !{i32 1534, i32 0, metadata !1232, null}
!1249 = metadata !{i32 1535, i32 0, metadata !1250, null}
!1250 = metadata !{i32 786443, metadata !1232, i32 1534, i32 0, metadata !4, i32 270} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1251 = metadata !{i32 1536, i32 0, metadata !1252, null}
!1252 = metadata !{i32 786443, metadata !1250, i32 1536, i32 0, metadata !4, i32 271} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1253 = metadata !{i32 1536, i32 0, metadata !1254, null}
!1254 = metadata !{i32 786443, metadata !1255, i32 1536, i32 0, metadata !4, i32 273} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1255 = metadata !{i32 786443, metadata !1252, i32 1536, i32 0, metadata !4, i32 272} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1256 = metadata !{i32 1537, i32 0, metadata !1250, null}
!1257 = metadata !{i32 1538, i32 0, metadata !1258, null}
!1258 = metadata !{i32 786443, metadata !1250, i32 1538, i32 0, metadata !4, i32 274} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1259 = metadata !{i32 1538, i32 0, metadata !1260, null}
!1260 = metadata !{i32 786443, metadata !1258, i32 1538, i32 0, metadata !4, i32 275} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1261 = metadata !{i32 1538, i32 0, metadata !1262, null}
!1262 = metadata !{i32 786443, metadata !1260, i32 1538, i32 0, metadata !4, i32 276} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1263 = metadata !{i32 1538, i32 0, metadata !1264, null}
!1264 = metadata !{i32 786443, metadata !1265, i32 1538, i32 0, metadata !4, i32 278} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1265 = metadata !{i32 786443, metadata !1262, i32 1538, i32 0, metadata !4, i32 277} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1266 = metadata !{i32 1538, i32 0, metadata !1267, null}
!1267 = metadata !{i32 786443, metadata !1262, i32 1538, i32 0, metadata !4, i32 279} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1268 = metadata !{i32 1542, i32 0, metadata !1232, null}
!1269 = metadata !{i32 1544, i32 0, metadata !1232, null}
!1270 = metadata !{i32 1549, i32 0, metadata !1271, null}
!1271 = metadata !{i32 786443, metadata !1272, i32 1546, i32 0, metadata !4, i32 281} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1272 = metadata !{i32 786443, metadata !1232, i32 1544, i32 0, metadata !4, i32 280} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1273 = metadata !{i32 1551, i32 0, metadata !1271, null}
!1274 = metadata !{i32 1553, i32 0, metadata !1271, null}
!1275 = metadata !{i32 1554, i32 0, metadata !1271, null}
!1276 = metadata !{i32 1555, i32 0, metadata !1271, null}
!1277 = metadata !{i32 1556, i32 0, metadata !1278, null}
!1278 = metadata !{i32 786443, metadata !1271, i32 1555, i32 0, metadata !4, i32 282} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1279 = metadata !{i32 1557, i32 0, metadata !1278, null}
!1280 = metadata !{i32 1559, i32 0, metadata !1278, null}
!1281 = metadata !{i32 1560, i32 0, metadata !1271, null}
!1282 = metadata !{i32 1561, i32 0, metadata !1283, null}
!1283 = metadata !{i32 786443, metadata !1271, i32 1560, i32 0, metadata !4, i32 283} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1284 = metadata !{i32 1562, i32 0, metadata !1283, null}
!1285 = metadata !{i32 1563, i32 0, metadata !1286, null}
!1286 = metadata !{i32 786443, metadata !1271, i32 1562, i32 0, metadata !4, i32 284} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1287 = metadata !{i32 1565, i32 0, metadata !1271, null}
!1288 = metadata !{i32 1567, i32 0, metadata !1271, null}
!1289 = metadata !{i32 1572, i32 0, metadata !1272, null}
!1290 = metadata !{i32 1579, i32 0, metadata !1291, null}
!1291 = metadata !{i32 786443, metadata !1272, i32 1576, i32 0, metadata !4, i32 285} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1292 = metadata !{i32 1581, i32 0, metadata !1291, null}
!1293 = metadata !{i32 1582, i32 0, metadata !1294, null}
!1294 = metadata !{i32 786443, metadata !1295, i32 1582, i32 0, metadata !4, i32 287} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1295 = metadata !{i32 786443, metadata !1291, i32 1581, i32 0, metadata !4, i32 286} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1296 = metadata !{i32 1583, i32 0, metadata !1295, null}
!1297 = metadata !{i32 1584, i32 0, metadata !1295, null}
!1298 = metadata !{i32 1587, i32 0, metadata !1291, null}
!1299 = metadata !{i32 1588, i32 0, metadata !1291, null}
!1300 = metadata !{i32 1589, i32 0, metadata !1291, null}
!1301 = metadata !{i32 1592, i32 0, metadata !1291, null}
!1302 = metadata !{i32 1593, i32 0, metadata !1303, null}
!1303 = metadata !{i32 786443, metadata !1304, i32 1593, i32 0, metadata !4, i32 289} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1304 = metadata !{i32 786443, metadata !1291, i32 1592, i32 0, metadata !4, i32 288} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1305 = metadata !{i32 1594, i32 0, metadata !1304, null}
!1306 = metadata !{i32 1595, i32 0, metadata !1304, null}
!1307 = metadata !{i32 1598, i32 0, metadata !1291, null}
!1308 = metadata !{i32 1599, i32 0, metadata !1291, null}
!1309 = metadata !{i32 1604, i32 0, metadata !1272, null}
!1310 = metadata !{i32 1605, i32 0, metadata !1272, null}
!1311 = metadata !{i32 1607, i32 0, metadata !1312, null}
!1312 = metadata !{i32 786443, metadata !1272, i32 1606, i32 0, metadata !4, i32 290} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1313 = metadata !{i32 1608, i32 0, metadata !1312, null}
!1314 = metadata !{i32 1608, i32 0, metadata !1272, null}
!1315 = metadata !{i32 1609, i32 0, metadata !1316, null}
!1316 = metadata !{i32 786443, metadata !1272, i32 1608, i32 0, metadata !4, i32 291} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1317 = metadata !{i32 1610, i32 0, metadata !1316, null}
!1318 = metadata !{i32 1615, i32 0, metadata !1272, null}
!1319 = metadata !{i32 1616, i32 0, metadata !1320, null}
!1320 = metadata !{i32 786443, metadata !1272, i32 1615, i32 0, metadata !4, i32 292} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1321 = metadata !{i32 1618, i32 0, metadata !1320, null}
!1322 = metadata !{i32 1618, i32 0, metadata !1272, null}
!1323 = metadata !{i32 1619, i32 0, metadata !1324, null}
!1324 = metadata !{i32 786443, metadata !1272, i32 1618, i32 0, metadata !4, i32 293} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1325 = metadata !{i32 1620, i32 0, metadata !1324, null}
!1326 = metadata !{i32 1620, i32 0, metadata !1272, null}
!1327 = metadata !{i32 1621, i32 0, metadata !1328, null}
!1328 = metadata !{i32 786443, metadata !1272, i32 1620, i32 0, metadata !4, i32 294} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1329 = metadata !{i32 1622, i32 0, metadata !1328, null}
!1330 = metadata !{i32 1622, i32 0, metadata !1272, null}
!1331 = metadata !{i32 1623, i32 0, metadata !1332, null}
!1332 = metadata !{i32 786443, metadata !1272, i32 1622, i32 0, metadata !4, i32 295} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1333 = metadata !{i32 1624, i32 0, metadata !1332, null}
!1334 = metadata !{i32 1624, i32 0, metadata !1272, null}
!1335 = metadata !{i32 1627, i32 0, metadata !1336, null}
!1336 = metadata !{i32 786443, metadata !1272, i32 1626, i32 0, metadata !4, i32 297} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1337 = metadata !{i32 1633, i32 0, metadata !1272, null}
!1338 = metadata !{i32 1634, i32 0, metadata !1272, null}
!1339 = metadata !{i32 1636, i32 0, metadata !1340, null}
!1340 = metadata !{i32 786443, metadata !1272, i32 1635, i32 0, metadata !4, i32 298} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1341 = metadata !{i32 1637, i32 0, metadata !1340, null}
!1342 = metadata !{i32 1637, i32 0, metadata !1272, null}
!1343 = metadata !{i32 1638, i32 0, metadata !1344, null}
!1344 = metadata !{i32 786443, metadata !1272, i32 1637, i32 0, metadata !4, i32 299} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1345 = metadata !{i32 1639, i32 0, metadata !1344, null}
!1346 = metadata !{i32 1644, i32 0, metadata !1272, null}
!1347 = metadata !{i32 1645, i32 0, metadata !1272, null}
!1348 = metadata !{i32 1646, i32 0, metadata !1349, null}
!1349 = metadata !{i32 786443, metadata !1272, i32 1645, i32 0, metadata !4, i32 300} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1350 = metadata !{i32 1647, i32 0, metadata !1349, null}
!1351 = metadata !{i32 1647, i32 0, metadata !1272, null}
!1352 = metadata !{i32 1648, i32 0, metadata !1353, null}
!1353 = metadata !{i32 786443, metadata !1272, i32 1647, i32 0, metadata !4, i32 301} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1354 = metadata !{i32 1649, i32 0, metadata !1353, null}
!1355 = metadata !{i32 1654, i32 0, metadata !1272, null}
!1356 = metadata !{i32 1655, i32 0, metadata !1272, null}
!1357 = metadata !{i32 1657, i32 0, metadata !1358, null}
!1358 = metadata !{i32 786443, metadata !1272, i32 1656, i32 0, metadata !4, i32 302} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1359 = metadata !{i32 1658, i32 0, metadata !1358, null}
!1360 = metadata !{i32 1658, i32 0, metadata !1272, null}
!1361 = metadata !{i32 1659, i32 0, metadata !1362, null}
!1362 = metadata !{i32 786443, metadata !1272, i32 1658, i32 0, metadata !4, i32 303} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1363 = metadata !{i32 1660, i32 0, metadata !1362, null}
!1364 = metadata !{i32 1664, i32 0, metadata !1272, null}
!1365 = metadata !{i32 1665, i32 0, metadata !1366, null}
!1366 = metadata !{i32 786443, metadata !1272, i32 1664, i32 0, metadata !4, i32 304} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1367 = metadata !{i32 1666, i32 0, metadata !1366, null}
!1368 = metadata !{i32 1667, i32 0, metadata !1366, null}
!1369 = metadata !{i32 1671, i32 0, metadata !1272, null}
!1370 = metadata !{i32 1677, i32 0, metadata !1272, null}
!1371 = metadata !{i32 1678, i32 0, metadata !1372, null}
!1372 = metadata !{i32 786443, metadata !1272, i32 1677, i32 0, metadata !4, i32 305} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1373 = metadata !{i32 1679, i32 0, metadata !1374, null}
!1374 = metadata !{i32 786443, metadata !1372, i32 1678, i32 0, metadata !4, i32 306} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1375 = metadata !{i32 1680, i32 0, metadata !1374, null}
!1376 = metadata !{i32 1680, i32 0, metadata !1372, null}
!1377 = metadata !{i32 1681, i32 0, metadata !1378, null}
!1378 = metadata !{i32 786443, metadata !1372, i32 1680, i32 0, metadata !4, i32 307} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1379 = metadata !{i32 1682, i32 0, metadata !1378, null}
!1380 = metadata !{i32 1682, i32 0, metadata !1372, null}
!1381 = metadata !{i32 1683, i32 0, metadata !1382, null}
!1382 = metadata !{i32 786443, metadata !1372, i32 1682, i32 0, metadata !4, i32 308} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1383 = metadata !{i32 1684, i32 0, metadata !1382, null}
!1384 = metadata !{i32 1685, i32 0, metadata !1372, null}
!1385 = metadata !{i32 1686, i32 0, metadata !1372, null}
!1386 = metadata !{i32 1687, i32 0, metadata !1372, null}
!1387 = metadata !{i32 1687, i32 0, metadata !1272, null}
!1388 = metadata !{i32 1688, i32 0, metadata !1389, null}
!1389 = metadata !{i32 786443, metadata !1272, i32 1687, i32 0, metadata !4, i32 309} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1390 = metadata !{i32 1689, i32 0, metadata !1389, null}
!1391 = metadata !{i32 1693, i32 0, metadata !1272, null}
!1392 = metadata !{i32 1694, i32 0, metadata !1272, null}
!1393 = metadata !{i32 1695, i32 0, metadata !1272, null}
!1394 = metadata !{i32 1698, i32 0, metadata !1227, null}
!1395 = metadata !{i32 1700, i32 0, metadata !1396, null}
!1396 = metadata !{i32 786443, metadata !1227, i32 1700, i32 0, metadata !4, i32 310} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1397 = metadata !{i32 1700, i32 0, metadata !1398, null}
!1398 = metadata !{i32 786443, metadata !1399, i32 1700, i32 0, metadata !4, i32 312} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1399 = metadata !{i32 786443, metadata !1396, i32 1700, i32 0, metadata !4, i32 311} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1400 = metadata !{i32 1702, i32 0, metadata !1227, null}
!1401 = metadata !{i32 1703, i32 0, metadata !1227, null}
!1402 = metadata !{i32 1709, i32 0, metadata !1403, null}
!1403 = metadata !{i32 786443, metadata !1404, i32 1709, i32 0, metadata !4, i32 314} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1404 = metadata !{i32 786443, metadata !515, i32 1708, i32 0, metadata !4, i32 313} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1405 = metadata !{i32 1709, i32 0, metadata !1406, null}
!1406 = metadata !{i32 786443, metadata !1407, i32 1709, i32 0, metadata !4, i32 316} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1407 = metadata !{i32 786443, metadata !1403, i32 1709, i32 0, metadata !4, i32 315} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1408 = metadata !{i32 1711, i32 0, metadata !1404, null}
!1409 = metadata !{i32 1712, i32 0, metadata !1404, null}
!1410 = metadata !{i32 1717, i32 0, metadata !1411, null}
!1411 = metadata !{i32 786443, metadata !515, i32 1716, i32 0, metadata !4, i32 317} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1412 = metadata !{i32 1718, i32 0, metadata !1413, null}
!1413 = metadata !{i32 786443, metadata !1411, i32 1717, i32 0, metadata !4, i32 318} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1414 = metadata !{i32 1719, i32 0, metadata !1413, null}
!1415 = metadata !{i32 1723, i32 0, metadata !1411, null}
!1416 = metadata !{i32 1725, i32 0, metadata !1417, null}
!1417 = metadata !{i32 786443, metadata !1411, i32 1723, i32 0, metadata !4, i32 319} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1418 = metadata !{i32 1726, i32 0, metadata !1417, null}
!1419 = metadata !{i32 1728, i32 0, metadata !1417, null}
!1420 = metadata !{i32 1729, i32 0, metadata !1417, null}
!1421 = metadata !{i32 1731, i32 0, metadata !1417, null}
!1422 = metadata !{i32 1732, i32 0, metadata !1417, null}
!1423 = metadata !{i32 1734, i32 0, metadata !1417, null}
!1424 = metadata !{i32 1735, i32 0, metadata !1417, null}
!1425 = metadata !{i32 1740, i32 0, metadata !1411, null}
!1426 = metadata !{i32 1741, i32 0, metadata !1411, null}
!1427 = metadata !{i32 1746, i32 0, metadata !1428, null}
!1428 = metadata !{i32 786443, metadata !1429, i32 1746, i32 0, metadata !4, i32 321} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1429 = metadata !{i32 786443, metadata !515, i32 1745, i32 0, metadata !4, i32 320} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1430 = metadata !{i32 1746, i32 0, metadata !1431, null}
!1431 = metadata !{i32 786443, metadata !1432, i32 1746, i32 0, metadata !4, i32 323} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1432 = metadata !{i32 786443, metadata !1428, i32 1746, i32 0, metadata !4, i32 322} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1433 = metadata !{i32 1747, i32 0, metadata !1429, null}
!1434 = metadata !{i32 1748, i32 0, metadata !1429, null}
!1435 = metadata !{i32 1753, i32 0, metadata !1436, null}
!1436 = metadata !{i32 786443, metadata !515, i32 1752, i32 0, metadata !4, i32 324} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1437 = metadata !{i32 1754, i32 0, metadata !1438, null}
!1438 = metadata !{i32 786443, metadata !1436, i32 1753, i32 0, metadata !4, i32 325} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1439 = metadata !{i32 1755, i32 0, metadata !1438, null}
!1440 = metadata !{i32 1757, i32 0, metadata !1441, null}
!1441 = metadata !{i32 786443, metadata !1436, i32 1756, i32 0, metadata !4, i32 326} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1442 = metadata !{i32 1759, i32 0, metadata !1443, null}
!1443 = metadata !{i32 786443, metadata !1441, i32 1757, i32 0, metadata !4, i32 327} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1444 = metadata !{i32 1760, i32 0, metadata !1443, null}
!1445 = metadata !{i32 1762, i32 0, metadata !1443, null}
!1446 = metadata !{i32 1763, i32 0, metadata !1443, null}
!1447 = metadata !{i32 1765, i32 0, metadata !1443, null}
!1448 = metadata !{i32 1766, i32 0, metadata !1443, null}
!1449 = metadata !{i32 1768, i32 0, metadata !1443, null}
!1450 = metadata !{i32 1769, i32 0, metadata !1443, null}
!1451 = metadata !{i32 1775, i32 0, metadata !1452, null}
!1452 = metadata !{i32 786443, metadata !1441, i32 1775, i32 0, metadata !4, i32 328} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1453 = metadata !{i32 1775, i32 0, metadata !1454, null}
!1454 = metadata !{i32 786443, metadata !1452, i32 1775, i32 0, metadata !4, i32 329} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1455 = metadata !{i32 1776, i32 0, metadata !1441, null}
!1456 = metadata !{i32 1777, i32 0, metadata !1457, null}
!1457 = metadata !{i32 786443, metadata !1441, i32 1777, i32 0, metadata !4, i32 330} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1458 = metadata !{i32 1777, i32 0, metadata !1459, null}
!1459 = metadata !{i32 786443, metadata !1457, i32 1777, i32 0, metadata !4, i32 331} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1460 = metadata !{i32 1777, i32 0, metadata !1461, null}
!1461 = metadata !{i32 786443, metadata !1459, i32 1777, i32 0, metadata !4, i32 332} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1462 = metadata !{i32 1777, i32 0, metadata !1463, null}
!1463 = metadata !{i32 786443, metadata !1464, i32 1777, i32 0, metadata !4, i32 334} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1464 = metadata !{i32 786443, metadata !1461, i32 1777, i32 0, metadata !4, i32 333} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1465 = metadata !{i32 1777, i32 0, metadata !1466, null}
!1466 = metadata !{i32 786443, metadata !1461, i32 1777, i32 0, metadata !4, i32 335} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1467 = metadata !{i32 1784, i32 0, metadata !1468, null}
!1468 = metadata !{i32 786443, metadata !1469, i32 1784, i32 0, metadata !4, i32 337} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1469 = metadata !{i32 786443, metadata !515, i32 1783, i32 0, metadata !4, i32 336} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1470 = metadata !{i32 1784, i32 0, metadata !1471, null}
!1471 = metadata !{i32 786443, metadata !1472, i32 1784, i32 0, metadata !4, i32 339} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1472 = metadata !{i32 786443, metadata !1468, i32 1784, i32 0, metadata !4, i32 338} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1473 = metadata !{i32 1786, i32 0, metadata !1469, null}
!1474 = metadata !{i32 1788, i32 0, metadata !1475, null}
!1475 = metadata !{i32 786443, metadata !1469, i32 1786, i32 0, metadata !4, i32 340} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1476 = metadata !{i32 1789, i32 0, metadata !1477, null}
!1477 = metadata !{i32 786443, metadata !1475, i32 1789, i32 0, metadata !4, i32 341} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1478 = metadata !{i32 1789, i32 0, metadata !1479, null}
!1479 = metadata !{i32 786443, metadata !1477, i32 1789, i32 0, metadata !4, i32 342} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1480 = metadata !{i32 1789, i32 0, metadata !1481, null}
!1481 = metadata !{i32 786443, metadata !1482, i32 1789, i32 0, metadata !4, i32 344} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1482 = metadata !{i32 786443, metadata !1479, i32 1789, i32 0, metadata !4, i32 343} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1483 = metadata !{i32 1789, i32 0, metadata !1484, null}
!1484 = metadata !{i32 786443, metadata !1479, i32 1789, i32 0, metadata !4, i32 345} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1485 = metadata !{i32 1793, i32 0, metadata !1469, null}
!1486 = metadata !{i32 1796, i32 0, metadata !1469, null}
!1487 = metadata !{i32 1810, i32 0, metadata !1469, null}
!1488 = metadata !{i32 1811, i32 0, metadata !1489, null}
!1489 = metadata !{i32 786443, metadata !1469, i32 1810, i32 0, metadata !4, i32 346} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1490 = metadata !{i32 1816, i32 0, metadata !1491, null}
!1491 = metadata !{i32 786443, metadata !1489, i32 1811, i32 0, metadata !4, i32 347} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1492 = metadata !{i32 1817, i32 0, metadata !1491, null}
!1493 = metadata !{i32 1820, i32 0, metadata !1494, null}
!1494 = metadata !{i32 786443, metadata !1491, i32 1820, i32 0, metadata !4, i32 348} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1495 = metadata !{i32 1821, i32 0, metadata !1496, null}
!1496 = metadata !{i32 786443, metadata !1491, i32 1821, i32 0, metadata !4, i32 349} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1497 = metadata !{i32 1825, i32 0, metadata !1469, null}
!1498 = metadata !{i32 1826, i32 0, metadata !1499, null}
!1499 = metadata !{i32 786443, metadata !1500, i32 1826, i32 0, metadata !4, i32 351} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1500 = metadata !{i32 786443, metadata !1469, i32 1825, i32 0, metadata !4, i32 350} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1501 = metadata !{i32 1834, i32 0, metadata !1502, null}
!1502 = metadata !{i32 786443, metadata !1503, i32 1834, i32 0, metadata !4, i32 353} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1503 = metadata !{i32 786443, metadata !515, i32 1833, i32 0, metadata !4, i32 352} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1504 = metadata !{i32 1834, i32 0, metadata !1505, null}
!1505 = metadata !{i32 786443, metadata !1506, i32 1834, i32 0, metadata !4, i32 355} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1506 = metadata !{i32 786443, metadata !1502, i32 1834, i32 0, metadata !4, i32 354} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1507 = metadata !{i32 1836, i32 0, metadata !1503, null}
!1508 = metadata !{i32 1839, i32 0, metadata !1503, null}
!1509 = metadata !{i32 1840, i32 0, metadata !1510, null}
!1510 = metadata !{i32 786443, metadata !1503, i32 1839, i32 0, metadata !4, i32 356} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1511 = metadata !{i32 1841, i32 0, metadata !1512, null}
!1512 = metadata !{i32 786443, metadata !1510, i32 1841, i32 0, metadata !4, i32 357} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1513 = metadata !{i32 1841, i32 0, metadata !1514, null}
!1514 = metadata !{i32 786443, metadata !1512, i32 1841, i32 0, metadata !4, i32 358} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1515 = metadata !{i32 1841, i32 0, metadata !1516, null}
!1516 = metadata !{i32 786443, metadata !1517, i32 1841, i32 0, metadata !4, i32 360} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1517 = metadata !{i32 786443, metadata !1514, i32 1841, i32 0, metadata !4, i32 359} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1518 = metadata !{i32 1841, i32 0, metadata !1519, null}
!1519 = metadata !{i32 786443, metadata !1514, i32 1841, i32 0, metadata !4, i32 361} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1520 = metadata !{i32 1842, i32 0, metadata !1521, null}
!1521 = metadata !{i32 786443, metadata !1510, i32 1842, i32 0, metadata !4, i32 362} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1522 = metadata !{i32 1845, i32 0, metadata !1503, null}
!1523 = metadata !{i32 1846, i32 0, metadata !1524, null}
!1524 = metadata !{i32 786443, metadata !1503, i32 1845, i32 0, metadata !4, i32 363} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1525 = metadata !{i32 1847, i32 0, metadata !1526, null}
!1526 = metadata !{i32 786443, metadata !1524, i32 1847, i32 0, metadata !4, i32 364} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1527 = metadata !{i32 1847, i32 0, metadata !1528, null}
!1528 = metadata !{i32 786443, metadata !1526, i32 1847, i32 0, metadata !4, i32 365} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1529 = metadata !{i32 1847, i32 0, metadata !1530, null}
!1530 = metadata !{i32 786443, metadata !1531, i32 1847, i32 0, metadata !4, i32 367} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1531 = metadata !{i32 786443, metadata !1528, i32 1847, i32 0, metadata !4, i32 366} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1532 = metadata !{i32 1847, i32 0, metadata !1533, null}
!1533 = metadata !{i32 786443, metadata !1528, i32 1847, i32 0, metadata !4, i32 368} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1534 = metadata !{i32 1848, i32 0, metadata !1503, null}
!1535 = metadata !{i32 1850, i32 0, metadata !1536, null}
!1536 = metadata !{i32 786443, metadata !1503, i32 1848, i32 0, metadata !4, i32 369} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1537 = metadata !{i32 1851, i32 0, metadata !1536, null}
!1538 = metadata !{i32 1852, i32 0, metadata !1539, null}
!1539 = metadata !{i32 786443, metadata !1503, i32 1851, i32 0, metadata !4, i32 370} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1540 = metadata !{i32 1854, i32 0, metadata !1541, null}
!1541 = metadata !{i32 786443, metadata !1539, i32 1852, i32 0, metadata !4, i32 371} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1542 = metadata !{i32 1855, i32 0, metadata !1543, null}
!1543 = metadata !{i32 786443, metadata !1541, i32 1855, i32 0, metadata !4, i32 372} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1544 = metadata !{i32 1855, i32 0, metadata !1545, null}
!1545 = metadata !{i32 786443, metadata !1543, i32 1855, i32 0, metadata !4, i32 373} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1546 = metadata !{i32 1855, i32 0, metadata !1547, null}
!1547 = metadata !{i32 786443, metadata !1548, i32 1855, i32 0, metadata !4, i32 375} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1548 = metadata !{i32 786443, metadata !1545, i32 1855, i32 0, metadata !4, i32 374} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1549 = metadata !{i32 1855, i32 0, metadata !1550, null}
!1550 = metadata !{i32 786443, metadata !1545, i32 1855, i32 0, metadata !4, i32 376} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1551 = metadata !{i32 1856, i32 0, metadata !1539, null}
!1552 = metadata !{i32 1858, i32 0, metadata !1553, null}
!1553 = metadata !{i32 786443, metadata !1539, i32 1856, i32 0, metadata !4, i32 377} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1554 = metadata !{i32 1859, i32 0, metadata !1553, null}
!1555 = metadata !{i32 1860, i32 0, metadata !1556, null}
!1556 = metadata !{i32 786443, metadata !1539, i32 1859, i32 0, metadata !4, i32 378} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1557 = metadata !{i32 1861, i32 0, metadata !1556, null}
!1558 = metadata !{i32 1863, i32 0, metadata !1559, null}
!1559 = metadata !{i32 786443, metadata !1556, i32 1861, i32 0, metadata !4, i32 379} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1560 = metadata !{i32 1864, i32 0, metadata !1561, null}
!1561 = metadata !{i32 786443, metadata !1559, i32 1864, i32 0, metadata !4, i32 380} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1562 = metadata !{i32 1864, i32 0, metadata !1563, null}
!1563 = metadata !{i32 786443, metadata !1561, i32 1864, i32 0, metadata !4, i32 381} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1564 = metadata !{i32 1864, i32 0, metadata !1565, null}
!1565 = metadata !{i32 786443, metadata !1566, i32 1864, i32 0, metadata !4, i32 383} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1566 = metadata !{i32 786443, metadata !1563, i32 1864, i32 0, metadata !4, i32 382} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1567 = metadata !{i32 1864, i32 0, metadata !1568, null}
!1568 = metadata !{i32 786443, metadata !1563, i32 1864, i32 0, metadata !4, i32 384} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1569 = metadata !{i32 1867, i32 0, metadata !1570, null}
!1570 = metadata !{i32 786443, metadata !1556, i32 1865, i32 0, metadata !4, i32 385} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1571 = metadata !{i32 1878, i32 0, metadata !1572, null}
!1572 = metadata !{i32 786443, metadata !515, i32 1876, i32 0, metadata !4, i32 386} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1573 = metadata !{i32 1880, i32 0, metadata !1572, null}
!1574 = metadata !{i32 1888, i32 0, metadata !1575, null}
!1575 = metadata !{i32 786443, metadata !1572, i32 1888, i32 0, metadata !4, i32 387} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1576 = metadata !{i32 1888, i32 0, metadata !1577, null}
!1577 = metadata !{i32 786443, metadata !1575, i32 1888, i32 0, metadata !4, i32 388} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1578 = metadata !{i32 1889, i32 0, metadata !1572, null}
!1579 = metadata !{i32 1890, i32 0, metadata !1572, null}
!1580 = metadata !{i32 1892, i32 0, metadata !1572, null}
!1581 = metadata !{i32 1893, i32 0, metadata !1582, null}
!1582 = metadata !{i32 786443, metadata !1572, i32 1892, i32 0, metadata !4, i32 389} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1583 = metadata !{i32 1904, i32 0, metadata !1584, null}
!1584 = metadata !{i32 786443, metadata !1582, i32 1904, i32 0, metadata !4, i32 390} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1585 = metadata !{i32 1904, i32 0, metadata !1586, null}
!1586 = metadata !{i32 786443, metadata !1584, i32 1904, i32 0, metadata !4, i32 391} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1587 = metadata !{i32 1904, i32 0, metadata !1588, null}
!1588 = metadata !{i32 786443, metadata !1586, i32 1904, i32 0, metadata !4, i32 392} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1589 = metadata !{i32 1904, i32 0, metadata !1590, null}
!1590 = metadata !{i32 786443, metadata !1591, i32 1904, i32 0, metadata !4, i32 394} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1591 = metadata !{i32 786443, metadata !1588, i32 1904, i32 0, metadata !4, i32 393} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1592 = metadata !{i32 1904, i32 0, metadata !1593, null}
!1593 = metadata !{i32 786443, metadata !1588, i32 1904, i32 0, metadata !4, i32 395} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1594 = metadata !{i32 1913, i32 0, metadata !1595, null}
!1595 = metadata !{i32 786443, metadata !515, i32 1913, i32 0, metadata !4, i32 396} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1596 = metadata !{i32 1913, i32 0, metadata !1597, null}
!1597 = metadata !{i32 786443, metadata !1595, i32 1913, i32 0, metadata !4, i32 397} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1598 = metadata !{i32 1914, i32 0, metadata !515, null}
!1599 = metadata !{i32 1916, i32 0, metadata !515, null}
!1600 = metadata !{i32 1919, i32 0, metadata !515, null}
!1601 = metadata !{i32 1920, i32 0, metadata !1602, null}
!1602 = metadata !{i32 786443, metadata !515, i32 1920, i32 0, metadata !4, i32 398} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1603 = metadata !{i32 1920, i32 0, metadata !1604, null}
!1604 = metadata !{i32 786443, metadata !1602, i32 1920, i32 0, metadata !4, i32 399} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1605 = metadata !{i32 1920, i32 0, metadata !1606, null}
!1606 = metadata !{i32 786443, metadata !1607, i32 1920, i32 0, metadata !4, i32 401} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1607 = metadata !{i32 786443, metadata !1604, i32 1920, i32 0, metadata !4, i32 400} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1608 = metadata !{i32 1920, i32 0, metadata !1609, null}
!1609 = metadata !{i32 786443, metadata !1604, i32 1920, i32 0, metadata !4, i32 402} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1610 = metadata !{i32 1925, i32 0, metadata !1611, null}
!1611 = metadata !{i32 786443, metadata !515, i32 1924, i32 0, metadata !4, i32 403} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1612 = metadata !{i32 1926, i32 0, metadata !1611, null}
!1613 = metadata !{i32 1928, i32 0, metadata !1611, null}
!1614 = metadata !{i32 1929, i32 0, metadata !1611, null}
!1615 = metadata !{i32 1930, i32 0, metadata !1616, null}
!1616 = metadata !{i32 786443, metadata !1617, i32 1930, i32 0, metadata !4, i32 405} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1617 = metadata !{i32 786443, metadata !1611, i32 1929, i32 0, metadata !4, i32 404} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1618 = metadata !{i32 1931, i32 0, metadata !1617, null}
!1619 = metadata !{i32 1934, i32 0, metadata !1611, null}
!1620 = metadata !{i32 1935, i32 0, metadata !1611, null}
!1621 = metadata !{i32 1936, i32 0, metadata !1611, null}
!1622 = metadata !{i32 1943, i32 0, metadata !1623, null}
!1623 = metadata !{i32 786443, metadata !515, i32 1940, i32 0, metadata !4, i32 406} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1624 = metadata !{i32 1945, i32 0, metadata !1623, null}
!1625 = metadata !{i32 1946, i32 0, metadata !1626, null}
!1626 = metadata !{i32 786443, metadata !1623, i32 1945, i32 0, metadata !4, i32 407} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1627 = metadata !{i32 1947, i32 0, metadata !1626, null}
!1628 = metadata !{i32 1950, i32 0, metadata !1623, null}
!1629 = metadata !{i32 1952, i32 0, metadata !1623, null}
!1630 = metadata !{i32 1953, i32 0, metadata !1631, null}
!1631 = metadata !{i32 786443, metadata !1623, i32 1952, i32 0, metadata !4, i32 408} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1632 = metadata !{i32 1954, i32 0, metadata !1633, null}
!1633 = metadata !{i32 786443, metadata !1631, i32 1953, i32 0, metadata !4, i32 409} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1634 = metadata !{i32 1955, i32 0, metadata !1633, null}
!1635 = metadata !{i32 1958, i32 0, metadata !1636, null}
!1636 = metadata !{i32 786443, metadata !1631, i32 1958, i32 0, metadata !4, i32 410} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1637 = metadata !{i32 1959, i32 0, metadata !1631, null}
!1638 = metadata !{i32 1962, i32 0, metadata !1623, null}
!1639 = metadata !{i32 1963, i32 0, metadata !1623, null}
!1640 = metadata !{i32 1964, i32 0, metadata !1623, null}
!1641 = metadata !{i32 1967, i32 0, metadata !1623, null}
!1642 = metadata !{i32 1968, i32 0, metadata !1643, null}
!1643 = metadata !{i32 786443, metadata !1644, i32 1968, i32 0, metadata !4, i32 412} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1644 = metadata !{i32 786443, metadata !1623, i32 1967, i32 0, metadata !4, i32 411} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1645 = metadata !{i32 1969, i32 0, metadata !1644, null}
!1646 = metadata !{i32 1972, i32 0, metadata !1623, null}
!1647 = metadata !{i32 1973, i32 0, metadata !1623, null}
!1648 = metadata !{i32 1978, i32 0, metadata !1649, null}
!1649 = metadata !{i32 786443, metadata !515, i32 1977, i32 0, metadata !4, i32 413} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1650 = metadata !{i32 1980, i32 0, metadata !1649, null}
!1651 = metadata !{i32 1981, i32 0, metadata !1652, null}
!1652 = metadata !{i32 786443, metadata !1649, i32 1980, i32 0, metadata !4, i32 414} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1653 = metadata !{i32 1982, i32 0, metadata !1652, null}
!1654 = metadata !{i32 1989, i32 0, metadata !1655, null}
!1655 = metadata !{i32 786443, metadata !515, i32 1988, i32 0, metadata !4, i32 415} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1656 = metadata !{i32 1990, i32 0, metadata !1657, null}
!1657 = metadata !{i32 786443, metadata !1655, i32 1990, i32 0, metadata !4, i32 416} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1658 = metadata !{i32 1990, i32 0, metadata !1659, null}
!1659 = metadata !{i32 786443, metadata !1660, i32 1990, i32 0, metadata !4, i32 418} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1660 = metadata !{i32 786443, metadata !1657, i32 1990, i32 0, metadata !4, i32 417} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1661 = metadata !{i32 1992, i32 0, metadata !1655, null}
!1662 = metadata !{i32 1994, i32 0, metadata !1655, null}
!1663 = metadata !{i32 1995, i32 0, metadata !1664, null}
!1664 = metadata !{i32 786443, metadata !1655, i32 1994, i32 0, metadata !4, i32 419} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1665 = metadata !{i32 1996, i32 0, metadata !1664, null}
!1666 = metadata !{i32 1997, i32 0, metadata !1664, null}
!1667 = metadata !{i32 1998, i32 0, metadata !1668, null}
!1668 = metadata !{i32 786443, metadata !1655, i32 1997, i32 0, metadata !4, i32 420} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1669 = metadata !{i32 2006, i32 0, metadata !1670, null}
!1670 = metadata !{i32 786443, metadata !515, i32 2004, i32 0, metadata !4, i32 421} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1671 = metadata !{i32 2008, i32 0, metadata !1670, null}
!1672 = metadata !{i32 2009, i32 0, metadata !1670, null}
!1673 = metadata !{i32 2015, i32 0, metadata !1674, null}
!1674 = metadata !{i32 786443, metadata !1670, i32 2015, i32 0, metadata !4, i32 422} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1675 = metadata !{i32 2015, i32 0, metadata !1676, null}
!1676 = metadata !{i32 786443, metadata !1674, i32 2015, i32 0, metadata !4, i32 423} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1677 = metadata !{i32 2016, i32 0, metadata !1670, null}
!1678 = metadata !{i32 2017, i32 0, metadata !1670, null}
!1679 = metadata !{i32 2019, i32 0, metadata !1670, null}
!1680 = metadata !{i32 2020, i32 0, metadata !1681, null}
!1681 = metadata !{i32 786443, metadata !1670, i32 2019, i32 0, metadata !4, i32 424} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1682 = metadata !{i32 2021, i32 0, metadata !1681, null}
!1683 = metadata !{i32 2027, i32 0, metadata !515, null}
!1684 = metadata !{i32 2028, i32 0, metadata !515, null}
!1685 = metadata !{i32 2029, i32 0, metadata !1686, null}
!1686 = metadata !{i32 786443, metadata !515, i32 2029, i32 0, metadata !4, i32 425} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1687 = metadata !{i32 2029, i32 0, metadata !1688, null}
!1688 = metadata !{i32 786443, metadata !1689, i32 2029, i32 0, metadata !4, i32 427} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1689 = metadata !{i32 786443, metadata !1686, i32 2029, i32 0, metadata !4, i32 426} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1690 = metadata !{i32 2030, i32 0, metadata !515, null}
!1691 = metadata !{i32 2031, i32 0, metadata !1692, null}
!1692 = metadata !{i32 786443, metadata !515, i32 2031, i32 0, metadata !4, i32 428} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1693 = metadata !{i32 2031, i32 0, metadata !1694, null}
!1694 = metadata !{i32 786443, metadata !1692, i32 2031, i32 0, metadata !4, i32 429} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1695 = metadata !{i32 2031, i32 0, metadata !1696, null}
!1696 = metadata !{i32 786443, metadata !1694, i32 2031, i32 0, metadata !4, i32 430} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1697 = metadata !{i32 2031, i32 0, metadata !1698, null}
!1698 = metadata !{i32 786443, metadata !1699, i32 2031, i32 0, metadata !4, i32 432} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1699 = metadata !{i32 786443, metadata !1696, i32 2031, i32 0, metadata !4, i32 431} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1700 = metadata !{i32 2031, i32 0, metadata !1701, null}
!1701 = metadata !{i32 786443, metadata !1696, i32 2031, i32 0, metadata !4, i32 433} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1702 = metadata !{i32 2035, i32 0, metadata !515, null}
!1703 = metadata !{i32 2036, i32 0, metadata !1704, null}
!1704 = metadata !{i32 786443, metadata !515, i32 2036, i32 0, metadata !4, i32 434} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1705 = metadata !{i32 2036, i32 0, metadata !1706, null}
!1706 = metadata !{i32 786443, metadata !1707, i32 2036, i32 0, metadata !4, i32 436} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1707 = metadata !{i32 786443, metadata !1704, i32 2036, i32 0, metadata !4, i32 435} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1708 = metadata !{i32 2037, i32 0, metadata !515, null}
!1709 = metadata !{i32 2038, i32 0, metadata !515, null}
!1710 = metadata !{i32 2039, i32 0, metadata !515, null}
!1711 = metadata !{i32 2042, i32 0, metadata !515, null}
!1712 = metadata !{i32 2058, i32 0, metadata !465, null}
!1713 = metadata !{i32 2064, i32 0, metadata !1714, null}
!1714 = metadata !{i32 786443, metadata !465, i32 2064, i32 0, metadata !4, i32 437} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1715 = metadata !{i32 2064, i32 0, metadata !1716, null}
!1716 = metadata !{i32 786443, metadata !1714, i32 2064, i32 0, metadata !4, i32 438} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1717 = metadata !{i32 2064, i32 0, metadata !1718, null}
!1718 = metadata !{i32 786443, metadata !1716, i32 2064, i32 0, metadata !4, i32 439} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1719 = metadata !{i32 2064, i32 0, metadata !1720, null}
!1720 = metadata !{i32 786443, metadata !1721, i32 2064, i32 0, metadata !4, i32 441} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1721 = metadata !{i32 786443, metadata !1718, i32 2064, i32 0, metadata !4, i32 440} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1722 = metadata !{i32 2064, i32 0, metadata !1723, null}
!1723 = metadata !{i32 786443, metadata !1718, i32 2064, i32 0, metadata !4, i32 442} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1724 = metadata !{i32 2065, i32 0, metadata !1725, null}
!1725 = metadata !{i32 786443, metadata !465, i32 2065, i32 0, metadata !4, i32 443} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1726 = metadata !{i32 2065, i32 0, metadata !1727, null}
!1727 = metadata !{i32 786443, metadata !1725, i32 2065, i32 0, metadata !4, i32 444} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1728 = metadata !{i32 2065, i32 0, metadata !1729, null}
!1729 = metadata !{i32 786443, metadata !1727, i32 2065, i32 0, metadata !4, i32 445} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1730 = metadata !{i32 2065, i32 0, metadata !1731, null}
!1731 = metadata !{i32 786443, metadata !1732, i32 2065, i32 0, metadata !4, i32 447} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1732 = metadata !{i32 786443, metadata !1729, i32 2065, i32 0, metadata !4, i32 446} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1733 = metadata !{i32 2065, i32 0, metadata !1734, null}
!1734 = metadata !{i32 786443, metadata !1729, i32 2065, i32 0, metadata !4, i32 448} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1735 = metadata !{i32 2066, i32 0, metadata !1736, null}
!1736 = metadata !{i32 786443, metadata !465, i32 2066, i32 0, metadata !4, i32 449} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1737 = metadata !{i32 2066, i32 0, metadata !1738, null}
!1738 = metadata !{i32 786443, metadata !1736, i32 2066, i32 0, metadata !4, i32 450} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1739 = metadata !{i32 2066, i32 0, metadata !1740, null}
!1740 = metadata !{i32 786443, metadata !1738, i32 2066, i32 0, metadata !4, i32 451} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1741 = metadata !{i32 2066, i32 0, metadata !1742, null}
!1742 = metadata !{i32 786443, metadata !1743, i32 2066, i32 0, metadata !4, i32 453} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1743 = metadata !{i32 786443, metadata !1740, i32 2066, i32 0, metadata !4, i32 452} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1744 = metadata !{i32 2066, i32 0, metadata !1745, null}
!1745 = metadata !{i32 786443, metadata !1740, i32 2066, i32 0, metadata !4, i32 454} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1746 = metadata !{i32 2067, i32 0, metadata !1747, null}
!1747 = metadata !{i32 786443, metadata !465, i32 2067, i32 0, metadata !4, i32 455} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1748 = metadata !{i32 2067, i32 0, metadata !1749, null}
!1749 = metadata !{i32 786443, metadata !1747, i32 2067, i32 0, metadata !4, i32 456} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1750 = metadata !{i32 2067, i32 0, metadata !1751, null}
!1751 = metadata !{i32 786443, metadata !1749, i32 2067, i32 0, metadata !4, i32 457} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1752 = metadata !{i32 2067, i32 0, metadata !1753, null}
!1753 = metadata !{i32 786443, metadata !1754, i32 2067, i32 0, metadata !4, i32 459} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1754 = metadata !{i32 786443, metadata !1751, i32 2067, i32 0, metadata !4, i32 458} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1755 = metadata !{i32 2067, i32 0, metadata !1756, null}
!1756 = metadata !{i32 786443, metadata !1751, i32 2067, i32 0, metadata !4, i32 460} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1757 = metadata !{i32 2068, i32 0, metadata !1758, null}
!1758 = metadata !{i32 786443, metadata !465, i32 2068, i32 0, metadata !4, i32 461} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1759 = metadata !{i32 2068, i32 0, metadata !1760, null}
!1760 = metadata !{i32 786443, metadata !1758, i32 2068, i32 0, metadata !4, i32 462} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1761 = metadata !{i32 2068, i32 0, metadata !1762, null}
!1762 = metadata !{i32 786443, metadata !1760, i32 2068, i32 0, metadata !4, i32 463} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1763 = metadata !{i32 2068, i32 0, metadata !1764, null}
!1764 = metadata !{i32 786443, metadata !1765, i32 2068, i32 0, metadata !4, i32 465} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1765 = metadata !{i32 786443, metadata !1762, i32 2068, i32 0, metadata !4, i32 464} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1766 = metadata !{i32 2068, i32 0, metadata !1767, null}
!1767 = metadata !{i32 786443, metadata !1762, i32 2068, i32 0, metadata !4, i32 466} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1768 = metadata !{i32 2070, i32 0, metadata !1769, null}
!1769 = metadata !{i32 786443, metadata !465, i32 2070, i32 0, metadata !4, i32 467} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1770 = metadata !{i32 2073, i32 0, metadata !465, null}
!1771 = metadata !{i32 2074, i32 0, metadata !1772, null}
!1772 = metadata !{i32 786443, metadata !1773, i32 2074, i32 0, metadata !4, i32 469} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1773 = metadata !{i32 786443, metadata !465, i32 2073, i32 0, metadata !4, i32 468} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1774 = metadata !{i32 2075, i32 0, metadata !1773, null}
!1775 = metadata !{i32 2077, i32 0, metadata !1776, null}
!1776 = metadata !{i32 786443, metadata !465, i32 2077, i32 0, metadata !4, i32 470} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1777 = metadata !{i32 2078, i32 0, metadata !465, null}
!1778 = metadata !{i32 484, i32 0, metadata !1779, null}
!1779 = metadata !{i32 786443, metadata !308, i32 483, i32 0, metadata !4, i32 525} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1780 = metadata !{i32 485, i32 0, metadata !1781, null}
!1781 = metadata !{i32 786443, metadata !1779, i32 484, i32 0, metadata !4, i32 526} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1782 = metadata !{i32 489, i32 0, metadata !1779, null}
!1783 = metadata !{i32 490, i32 0, metadata !1784, null}
!1784 = metadata !{i32 786443, metadata !1779, i32 489, i32 0, metadata !4, i32 527} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1785 = metadata !{i32 494, i32 0, metadata !1779, null}
!1786 = metadata !{i32 500, i32 0, metadata !1787, null}
!1787 = metadata !{i32 786443, metadata !1779, i32 494, i32 0, metadata !4, i32 528} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1788 = metadata !{i32 501, i32 0, metadata !1789, null}
!1789 = metadata !{i32 786443, metadata !1787, i32 500, i32 0, metadata !4, i32 529} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1790 = metadata !{i32 504, i32 0, metadata !1787, null}
!1791 = metadata !{i32 505, i32 0, metadata !1792, null}
!1792 = metadata !{i32 786443, metadata !1787, i32 504, i32 0, metadata !4, i32 530} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1793 = metadata !{i32 511, i32 0, metadata !1787, null}
!1794 = metadata !{i32 512, i32 0, metadata !1795, null}
!1795 = metadata !{i32 786443, metadata !1787, i32 511, i32 0, metadata !4, i32 531} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1796 = metadata !{i32 515, i32 0, metadata !1787, null}
!1797 = metadata !{i32 516, i32 0, metadata !1798, null}
!1798 = metadata !{i32 786443, metadata !1787, i32 515, i32 0, metadata !4, i32 532} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1799 = metadata !{i32 522, i32 0, metadata !1787, null}
!1800 = metadata !{i32 523, i32 0, metadata !1801, null}
!1801 = metadata !{i32 786443, metadata !1787, i32 522, i32 0, metadata !4, i32 533} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1802 = metadata !{i32 529, i32 0, metadata !1787, null}
!1803 = metadata !{i32 530, i32 0, metadata !1804, null}
!1804 = metadata !{i32 786443, metadata !1787, i32 529, i32 0, metadata !4, i32 534} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1805 = metadata !{i32 536, i32 0, metadata !1787, null}
!1806 = metadata !{i32 537, i32 0, metadata !1807, null}
!1807 = metadata !{i32 786443, metadata !1787, i32 536, i32 0, metadata !4, i32 535} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1808 = metadata !{i32 543, i32 0, metadata !1787, null}
!1809 = metadata !{i32 544, i32 0, metadata !1810, null}
!1810 = metadata !{i32 786443, metadata !1787, i32 543, i32 0, metadata !4, i32 536} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1811 = metadata !{i32 547, i32 0, metadata !1787, null}
!1812 = metadata !{i32 548, i32 0, metadata !1813, null}
!1813 = metadata !{i32 786443, metadata !1787, i32 547, i32 0, metadata !4, i32 537} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1814 = metadata !{i32 551, i32 0, metadata !1787, null}
!1815 = metadata !{i32 552, i32 0, metadata !1816, null}
!1816 = metadata !{i32 786443, metadata !1787, i32 551, i32 0, metadata !4, i32 538} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1817 = metadata !{i32 555, i32 0, metadata !1787, null}
!1818 = metadata !{i32 556, i32 0, metadata !1819, null}
!1819 = metadata !{i32 786443, metadata !1787, i32 555, i32 0, metadata !4, i32 539} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1820 = metadata !{i32 562, i32 0, metadata !1787, null}
!1821 = metadata !{i32 563, i32 0, metadata !1822, null}
!1822 = metadata !{i32 786443, metadata !1787, i32 562, i32 0, metadata !4, i32 540} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1823 = metadata !{i32 566, i32 0, metadata !1787, null}
!1824 = metadata !{i32 568, i32 0, metadata !1825, null}
!1825 = metadata !{i32 786443, metadata !1787, i32 566, i32 0, metadata !4, i32 541} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1826 = metadata !{i32 571, i32 0, metadata !1825, null}
!1827 = metadata !{i32 578, i32 0, metadata !1787, null}
!1828 = metadata !{i32 579, i32 0, metadata !1829, null}
!1829 = metadata !{i32 786443, metadata !1787, i32 578, i32 0, metadata !4, i32 542} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1830 = metadata !{i32 582, i32 0, metadata !1787, null}
!1831 = metadata !{i32 585, i32 0, metadata !1832, null}
!1832 = metadata !{i32 786443, metadata !1787, i32 582, i32 0, metadata !4, i32 543} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1833 = metadata !{i32 588, i32 0, metadata !1832, null}
!1834 = metadata !{i32 594, i32 0, metadata !1787, null}
!1835 = metadata !{i32 595, i32 0, metadata !1836, null}
!1836 = metadata !{i32 786443, metadata !1787, i32 594, i32 0, metadata !4, i32 544} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1837 = metadata !{i32 598, i32 0, metadata !1787, null}
!1838 = metadata !{i32 600, i32 0, metadata !1839, null}
!1839 = metadata !{i32 786443, metadata !1787, i32 598, i32 0, metadata !4, i32 545} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1840 = metadata !{i32 603, i32 0, metadata !1839, null}
!1841 = metadata !{i32 609, i32 0, metadata !1787, null}
!1842 = metadata !{i32 610, i32 0, metadata !1843, null}
!1843 = metadata !{i32 786443, metadata !1787, i32 609, i32 0, metadata !4, i32 546} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1844 = metadata !{i32 613, i32 0, metadata !1787, null}
!1845 = metadata !{i32 616, i32 0, metadata !1846, null}
!1846 = metadata !{i32 786443, metadata !1787, i32 613, i32 0, metadata !4, i32 547} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1847 = metadata !{i32 626, i32 0, metadata !1779, null}
!1848 = metadata !{i32 627, i32 0, metadata !1779, null}
!1849 = metadata !{i32 2108, i32 0, metadata !1850, null}
!1850 = metadata !{i32 786443, metadata !253, i32 2107, i32 0, metadata !4, i32 475} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1851 = metadata !{i32 2110, i32 0, metadata !1852, null}
!1852 = metadata !{i32 786443, metadata !1850, i32 2108, i32 0, metadata !4, i32 476} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1853 = metadata !{i32 2111, i32 0, metadata !1854, null}
!1854 = metadata !{i32 786443, metadata !1852, i32 2110, i32 0, metadata !4, i32 477} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1855 = metadata !{i32 2115, i32 0, metadata !1856, null}
!1856 = metadata !{i32 786443, metadata !1850, i32 2113, i32 0, metadata !4, i32 478} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1857 = metadata !{i32 2116, i32 0, metadata !1858, null}
!1858 = metadata !{i32 786443, metadata !1856, i32 2115, i32 0, metadata !4, i32 479} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1859 = metadata !{i32 2120, i32 0, metadata !1850, null}
!1860 = metadata !{i32 2121, i32 0, metadata !1850, null}
!1861 = metadata !{i32 2085, i32 0, metadata !1862, null}
!1862 = metadata !{i32 786443, metadata !248, i32 2084, i32 0, metadata !4, i32 471} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1863 = metadata !{i32 2086, i32 0, metadata !1864, null}
!1864 = metadata !{i32 786443, metadata !1862, i32 2085, i32 0, metadata !4, i32 472} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1865 = metadata !{i32 2090, i32 0, metadata !1862, null}
!1866 = metadata !{i32 2094, i32 0, metadata !1867, null}
!1867 = metadata !{i32 786443, metadata !1862, i32 2093, i32 0, metadata !4, i32 473} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1868 = metadata !{i32 2097, i32 0, metadata !1862, null}
!1869 = metadata !{i32 2098, i32 0, metadata !1870, null}
!1870 = metadata !{i32 786443, metadata !1862, i32 2097, i32 0, metadata !4, i32 474} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1871 = metadata !{i32 2101, i32 0, metadata !1862, null}
!1872 = metadata !{i32 2102, i32 0, metadata !1862, null}
!1873 = metadata !{i32 2127, i32 0, metadata !1874, null}
!1874 = metadata !{i32 786443, metadata !254, i32 2126, i32 0, metadata !4, i32 480} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1875 = metadata !{i32 2134, i32 0, metadata !1876, null}
!1876 = metadata !{i32 786443, metadata !257, i32 2133, i32 0, metadata !4, i32 481} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1877 = metadata !{i32 2135, i32 0, metadata !1876, null}
!1878 = metadata !{i32 2136, i32 0, metadata !1876, null}
!1879 = metadata !{i32 2137, i32 0, metadata !1876, null}
!1880 = metadata !{i32 2138, i32 0, metadata !1876, null}
!1881 = metadata !{i32 2139, i32 0, metadata !1876, null}
!1882 = metadata !{i32 2140, i32 0, metadata !1876, null}
!1883 = metadata !{i32 2145, i32 0, metadata !1884, null}
!1884 = metadata !{i32 786443, metadata !260, i32 2144, i32 0, metadata !4, i32 482} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1885 = metadata !{i32 2146, i32 0, metadata !1884, null}
!1886 = metadata !{i32 2150, i32 0, metadata !1887, null}
!1887 = metadata !{i32 786443, metadata !264, i32 2149, i32 0, metadata !4, i32 483} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1888 = metadata !{i32 2151, i32 0, metadata !1887, null}
!1889 = metadata !{i32 2156, i32 0, metadata !1890, null}
!1890 = metadata !{i32 786443, metadata !267, i32 2155, i32 0, metadata !4, i32 484} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1891 = metadata !{i32 2157, i32 0, metadata !1890, null}
!1892 = metadata !{i32 2305, i32 0, metadata !1893, null}
!1893 = metadata !{i32 786443, metadata !268, i32 2301, i32 0, metadata !4, i32 485} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1894 = metadata !{i32 2307, i32 0, metadata !1893, null}
!1895 = metadata !{i32 2308, i32 0, metadata !1893, null}
!1896 = metadata !{i32 2309, i32 0, metadata !1893, null}
!1897 = metadata !{i32 2311, i32 0, metadata !1898, null}
!1898 = metadata !{i32 786443, metadata !1893, i32 2311, i32 0, metadata !4, i32 486} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1899 = metadata !{i32 2312, i32 0, metadata !1900, null}
!1900 = metadata !{i32 786443, metadata !1898, i32 2311, i32 0, metadata !4, i32 487} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1901 = metadata !{i32 2315, i32 0, metadata !1900, null}
!1902 = metadata !{i32 2317, i32 0, metadata !1903, null}
!1903 = metadata !{i32 786443, metadata !1900, i32 2315, i32 0, metadata !4, i32 488} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1904 = metadata !{i32 2328, i32 0, metadata !1903, null}
!1905 = metadata !{i32 2329, i32 0, metadata !1903, null}
!1906 = metadata !{i32 2332, i32 0, metadata !1903, null}
!1907 = metadata !{i32 2336, i32 0, metadata !1903, null}
!1908 = metadata !{i32 2337, i32 0, metadata !1903, null}
!1909 = metadata !{i32 2340, i32 0, metadata !1903, null}
!1910 = metadata !{i32 2341, i32 0, metadata !1903, null}
!1911 = metadata !{i32 2344, i32 0, metadata !1903, null}
!1912 = metadata !{i32 2345, i32 0, metadata !1903, null}
!1913 = metadata !{i32 2348, i32 0, metadata !1903, null}
!1914 = metadata !{i32 2349, i32 0, metadata !1903, null}
!1915 = metadata !{i32 2352, i32 0, metadata !1903, null}
!1916 = metadata !{i32 2357, i32 0, metadata !1900, null}
!1917 = metadata !{i32 2358, i32 0, metadata !1918, null}
!1918 = metadata !{i32 786443, metadata !1900, i32 2357, i32 0, metadata !4, i32 489} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1919 = metadata !{i32 2359, i32 0, metadata !1918, null}
!1920 = metadata !{i32 2362, i32 0, metadata !1900, null}
!1921 = metadata !{i32 2363, i32 0, metadata !1900, null}
!1922 = metadata !{i32 2365, i32 0, metadata !1900, null}
!1923 = metadata !{i32 2366, i32 0, metadata !1900, null}
!1924 = metadata !{i32 2367, i32 0, metadata !1900, null}
!1925 = metadata !{i32 2371, i32 0, metadata !1893, null}
!1926 = metadata !{i32 2372, i32 0, metadata !1927, null}
!1927 = metadata !{i32 786443, metadata !1893, i32 2371, i32 0, metadata !4, i32 490} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1928 = metadata !{i32 2373, i32 0, metadata !1929, null}
!1929 = metadata !{i32 786443, metadata !1927, i32 2372, i32 0, metadata !4, i32 491} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1930 = metadata !{i32 2378, i32 0, metadata !1893, null}
!1931 = metadata !{i32 2379, i32 0, metadata !1932, null}
!1932 = metadata !{i32 786443, metadata !1893, i32 2378, i32 0, metadata !4, i32 492} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1933 = metadata !{i32 2382, i32 0, metadata !1893, null}
!1934 = metadata !{i32 2384, i32 0, metadata !1935, null}
!1935 = metadata !{i32 786443, metadata !1893, i32 2382, i32 0, metadata !4, i32 493} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1936 = metadata !{i32 2387, i32 0, metadata !1935, null}
!1937 = metadata !{i32 2388, i32 0, metadata !1938, null}
!1938 = metadata !{i32 786443, metadata !1935, i32 2387, i32 0, metadata !4, i32 494} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1939 = metadata !{i32 2391, i32 0, metadata !1935, null}
!1940 = metadata !{i32 2392, i32 0, metadata !1935, null}
!1941 = metadata !{i32 2394, i32 0, metadata !1893, null}
!1942 = metadata !{i32 2395, i32 0, metadata !1893, null}
!1943 = metadata !{i32 2230, i32 0, metadata !1944, null}
!1944 = metadata !{i32 786443, metadata !302, i32 2226, i32 0, metadata !4, i32 504} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1945 = metadata !{i32 2232, i32 0, metadata !1944, null}
!1946 = metadata !{i32 2234, i32 0, metadata !1944, null}
!1947 = metadata !{i32 2236, i32 0, metadata !1948, null}
!1948 = metadata !{i32 786443, metadata !1944, i32 2236, i32 0, metadata !4, i32 505} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1949 = metadata !{i32 2237, i32 0, metadata !1950, null}
!1950 = metadata !{i32 786443, metadata !1948, i32 2236, i32 0, metadata !4, i32 506} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1951 = metadata !{i32 2239, i32 0, metadata !1950, null}
!1952 = metadata !{i32 2240, i32 0, metadata !1953, null}
!1953 = metadata !{i32 786443, metadata !1950, i32 2239, i32 0, metadata !4, i32 507} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1954 = metadata !{i32 2243, i32 0, metadata !1950, null}
!1955 = metadata !{i32 2245, i32 0, metadata !1956, null}
!1956 = metadata !{i32 786443, metadata !1950, i32 2243, i32 0, metadata !4, i32 508} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1957 = metadata !{i32 2246, i32 0, metadata !1958, null}
!1958 = metadata !{i32 786443, metadata !1956, i32 2245, i32 0, metadata !4, i32 509} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1959 = metadata !{i32 2247, i32 0, metadata !1958, null}
!1960 = metadata !{i32 2248, i32 0, metadata !1956, null}
!1961 = metadata !{i32 2249, i32 0, metadata !1956, null}
!1962 = metadata !{i32 2252, i32 0, metadata !1956, null}
!1963 = metadata !{i32 2253, i32 0, metadata !1964, null}
!1964 = metadata !{i32 786443, metadata !1956, i32 2252, i32 0, metadata !4, i32 510} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1965 = metadata !{i32 2254, i32 0, metadata !1964, null}
!1966 = metadata !{i32 2255, i32 0, metadata !1956, null}
!1967 = metadata !{i32 2256, i32 0, metadata !1956, null}
!1968 = metadata !{i32 2259, i32 0, metadata !1956, null}
!1969 = metadata !{i32 2260, i32 0, metadata !1970, null}
!1970 = metadata !{i32 786443, metadata !1956, i32 2259, i32 0, metadata !4, i32 511} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1971 = metadata !{i32 2261, i32 0, metadata !1970, null}
!1972 = metadata !{i32 2262, i32 0, metadata !1970, null}
!1973 = metadata !{i32 2263, i32 0, metadata !1970, null}
!1974 = metadata !{i32 2264, i32 0, metadata !1956, null}
!1975 = metadata !{i32 2265, i32 0, metadata !1956, null}
!1976 = metadata !{i32 2268, i32 0, metadata !1956, null}
!1977 = metadata !{i32 2269, i32 0, metadata !1978, null}
!1978 = metadata !{i32 786443, metadata !1956, i32 2268, i32 0, metadata !4, i32 512} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1979 = metadata !{i32 2270, i32 0, metadata !1978, null}
!1980 = metadata !{i32 2271, i32 0, metadata !1978, null}
!1981 = metadata !{i32 2272, i32 0, metadata !1978, null}
!1982 = metadata !{i32 2273, i32 0, metadata !1956, null}
!1983 = metadata !{i32 2274, i32 0, metadata !1956, null}
!1984 = metadata !{i32 2279, i32 0, metadata !1950, null}
!1985 = metadata !{i32 2283, i32 0, metadata !1944, null}
!1986 = metadata !{i32 2290, i32 0, metadata !1987, null}
!1987 = metadata !{i32 786443, metadata !1944, i32 2283, i32 0, metadata !4, i32 513} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1988 = metadata !{i32 2295, i32 0, metadata !1944, null}
!1989 = metadata !{i32 2296, i32 0, metadata !1944, null}
!1990 = metadata !{i32 2403, i32 0, metadata !1991, null}
!1991 = metadata !{i32 786443, metadata !285, i32 2398, i32 0, metadata !4, i32 495} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1992 = metadata !{i32 2405, i32 0, metadata !1993, null}
!1993 = metadata !{i32 786443, metadata !1994, i32 2405, i32 0, metadata !4, i32 497} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1994 = metadata !{i32 786443, metadata !1991, i32 2404, i32 0, metadata !4, i32 496} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1995 = metadata !{i32 2409, i32 0, metadata !1991, null}
!1996 = metadata !{i32 2407, i32 0, metadata !1997, null}
!1997 = metadata !{i32 786443, metadata !1991, i32 2406, i32 0, metadata !4, i32 498} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!1998 = metadata !{i32 2413, i32 0, metadata !1999, null}
!1999 = metadata !{i32 786443, metadata !288, i32 2412, i32 0, metadata !4, i32 499} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!2000 = metadata !{i32 2418, i32 0, metadata !2001, null}
!2001 = metadata !{i32 786443, metadata !292, i32 2417, i32 0, metadata !4, i32 500} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!2002 = metadata !{i32 2468, i32 0, metadata !2003, null}
!2003 = metadata !{i32 786443, metadata !295, i32 2460, i32 0, metadata !4, i32 501} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!2004 = metadata !{i32 2469, i32 0, metadata !2003, null}
!2005 = metadata !{i32 2472, i32 0, metadata !2003, null}
!2006 = metadata !{i32 2474, i32 0, metadata !2003, null}
!2007 = metadata !{i32 2475, i32 0, metadata !2003, null}
!2008 = metadata !{i32 2476, i32 0, metadata !2003, null}
!2009 = metadata !{i32 2478, i32 0, metadata !2003, null}
!2010 = metadata !{i32 2479, i32 0, metadata !2003, null}
!2011 = metadata !{i32 2481, i32 0, metadata !2003, null}
!2012 = metadata !{i32 2441, i32 0, metadata !2013, null}
!2013 = metadata !{i32 786443, metadata !301, i32 2440, i32 0, metadata !4, i32 503} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!2014 = metadata !{i32 2446, i32 0, metadata !2015, null}
!2015 = metadata !{i32 786443, metadata !300, i32 2445, i32 0, metadata !4, i32 502} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!2016 = metadata !{i32 2162, i32 0, metadata !2017, null}
!2017 = metadata !{i32 786443, metadata !305, i32 2161, i32 0, metadata !4, i32 514} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!2018 = metadata !{i32 2165, i32 0, metadata !2019, null}
!2019 = metadata !{i32 786443, metadata !2017, i32 2162, i32 0, metadata !4, i32 515} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!2020 = metadata !{i32 2166, i32 0, metadata !2021, null}
!2021 = metadata !{i32 786443, metadata !2019, i32 2165, i32 0, metadata !4, i32 516} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!2022 = metadata !{i32 2169, i32 0, metadata !2019, null}
!2023 = metadata !{i32 2170, i32 0, metadata !2024, null}
!2024 = metadata !{i32 786443, metadata !2019, i32 2169, i32 0, metadata !4, i32 517} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!2025 = metadata !{i32 2175, i32 0, metadata !2019, null}
!2026 = metadata !{i32 2176, i32 0, metadata !2027, null}
!2027 = metadata !{i32 786443, metadata !2019, i32 2175, i32 0, metadata !4, i32 518} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!2028 = metadata !{i32 2179, i32 0, metadata !2019, null}
!2029 = metadata !{i32 2180, i32 0, metadata !2030, null}
!2030 = metadata !{i32 786443, metadata !2019, i32 2179, i32 0, metadata !4, i32 519} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!2031 = metadata !{i32 2186, i32 0, metadata !2019, null}
!2032 = metadata !{i32 2187, i32 0, metadata !2033, null}
!2033 = metadata !{i32 786443, metadata !2019, i32 2186, i32 0, metadata !4, i32 520} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!2034 = metadata !{i32 2192, i32 0, metadata !2019, null}
!2035 = metadata !{i32 2193, i32 0, metadata !2036, null}
!2036 = metadata !{i32 786443, metadata !2019, i32 2192, i32 0, metadata !4, i32 521} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!2037 = metadata !{i32 2199, i32 0, metadata !2019, null}
!2038 = metadata !{i32 2200, i32 0, metadata !2039, null}
!2039 = metadata !{i32 786443, metadata !2019, i32 2199, i32 0, metadata !4, i32 522} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!2040 = metadata !{i32 2205, i32 0, metadata !2019, null}
!2041 = metadata !{i32 2206, i32 0, metadata !2042, null}
!2042 = metadata !{i32 786443, metadata !2019, i32 2205, i32 0, metadata !4, i32 523} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!2043 = metadata !{i32 2213, i32 0, metadata !2019, null}
!2044 = metadata !{i32 2214, i32 0, metadata !2045, null}
!2045 = metadata !{i32 786443, metadata !2019, i32 2213, i32 0, metadata !4, i32 524} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/examples/http-parser/http_parser_main.c]
!2046 = metadata !{i32 2222, i32 0, metadata !2017, null}
!2047 = metadata !{i32 2223, i32 0, metadata !2017, null}
!2048 = metadata !{i32 13, i32 0, metadata !2049, null}
!2049 = metadata !{i32 786443, metadata !351, i32 12, i32 0, metadata !352, i32 0} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/runtime/Intrinsic/klee_div_zero_check.c]
!2050 = metadata !{i32 14, i32 0, metadata !2049, null}
!2051 = metadata !{i32 15, i32 0, metadata !2049, null}
!2052 = metadata !{i32 15, i32 0, metadata !370, null}
!2053 = metadata !{i32 16, i32 0, metadata !370, null}
!2054 = metadata !{metadata !"int", metadata !2055}
!2055 = metadata !{metadata !"omnipotent char", metadata !2056}
!2056 = metadata !{metadata !"Simple C/C++ TBAA"}
!2057 = metadata !{i32 21, i32 0, metadata !2058, null}
!2058 = metadata !{i32 786443, metadata !374, i32 20, i32 0, metadata !375, i32 0} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/runtime/Intrinsic/klee_overshift_check.c]
!2059 = metadata !{i32 27, i32 0, metadata !2060, null}
!2060 = metadata !{i32 786443, metadata !2058, i32 21, i32 0, metadata !375, i32 1} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/runtime/Intrinsic/klee_overshift_check.c]
!2061 = metadata !{i32 29, i32 0, metadata !2058, null}
!2062 = metadata !{i32 16, i32 0, metadata !396, null}
!2063 = metadata !{i32 17, i32 0, metadata !396, null}
!2064 = metadata !{i32 19, i32 0, metadata !396, null}
!2065 = metadata !{i32 22, i32 0, metadata !2066, null}
!2066 = metadata !{i32 786443, metadata !396, i32 21, i32 0, metadata !387, i32 2} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/runtime/Intrinsic/klee_range.c]
!2067 = metadata !{i32 25, i32 0, metadata !2066, null}
!2068 = metadata !{i32 26, i32 0, metadata !2069, null}
!2069 = metadata !{i32 786443, metadata !2066, i32 25, i32 0, metadata !387, i32 3} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/runtime/Intrinsic/klee_range.c]
!2070 = metadata !{i32 27, i32 0, metadata !2069, null}
!2071 = metadata !{i32 28, i32 0, metadata !2072, null}
!2072 = metadata !{i32 786443, metadata !2066, i32 27, i32 0, metadata !387, i32 4} ; [ DW_TAG_lexical_block ] [/home/userfog/klee-auto/klee/runtime/Intrinsic/klee_range.c]
!2073 = metadata !{i32 29, i32 0, metadata !2072, null}
!2074 = metadata !{i32 32, i32 0, metadata !2066, null}
!2075 = metadata !{i32 34, i32 0, metadata !396, null}
!2076 = metadata !{i32 15, i32 0, metadata !445, null}
!2077 = metadata !{i32 16, i32 0, metadata !445, null}
!2078 = metadata !{i32 17, i32 0, metadata !445, null}
!2079 = metadata !{i32 13, i32 0, metadata !461, null}
!2080 = metadata !{i32 14, i32 0, metadata !461, null}
!2081 = metadata !{i32 15, i32 0, metadata !461, null}
