require("./db/fixtures/choices/array")
Choice.seed(:id,
            # a_question1(3)
            { id: 2001, content: $a_choice1, answer: false, question_id: 2001 },
            { id: 2002, content: $a_choice2, answer: false, question_id: 2001 },
            { id: 2003, content: $a_choice3, answer: true, question_id: 2001 },
            { id: 2004, content: $a_choice4, answer: false, question_id: 2001 },
            # a_question2(4)
            { id: 2005, content: $a_choice5, answer: false, question_id: 2002 },
            { id: 2006, content: $a_choice6, answer: false, question_id: 2002 },
            { id: 2007, content: $a_choice7, answer: false, question_id: 2002 },
            { id: 2008, content: $a_choice8, answer: true, question_id: 2002 },
            # a_question3(3)
            { id: 2009, content: $a_choice9, answer: false, question_id: 2003 },
            { id: 2010, content: $a_choice10, answer: false, question_id: 2003 },
            { id: 2011, content: $a_choice11, answer: true, question_id: 2003 },
            { id: 2012, content: $a_choice12, answer: false, question_id: 2003 },
            # a_question4(2)
            { id: 2013, content: $a_choice13, answer: false, question_id: 2004 },
            { id: 2014, content: $a_choice14, answer: true, question_id: 2004 },
            { id: 2015, content: $a_choice15, answer: false, question_id: 2004 },
            { id: 2016, content: $a_choice16, answer: false, question_id: 2004 },
            # a_question5(2)
            { id: 2017, content: $a_choice17, answer: false, question_id: 2005 },
            { id: 2018, content: $a_choice18, answer: false, question_id: 2005 },
            { id: 2019, content: $a_choice19, answer: true, question_id: 2005 },
            { id: 2020, content: $a_choice20, answer: false, question_id: 2005 },
            # a_question6(3)
            { id: 2021, content: $a_choice21, answer: false, question_id: 2006 },
            { id: 2022, content: $a_choice22, answer: false, question_id: 2006 },
            { id: 2023, content: $a_choice23, answer: true, question_id: 2006 },
            { id: 2024, content: $a_choice24, answer: false, question_id: 2006 },
            # a_question7(2)
            { id: 2025, content: $a_choice25, answer: false, question_id: 2007 },
            { id: 2026, content: $a_choice26, answer: true, question_id: 2007 },
            { id: 2027, content: $a_choice27, answer: false, question_id: 2007 },
            { id: 2028, content: $a_choice28, answer: false, question_id: 2007 },
            # a_question8(4)
            { id: 2029, content: $a_choice29, answer: false, question_id: 2008 },
            { id: 2030, content: $a_choice30, answer: false, question_id: 2008 },
            { id: 2031, content: $a_choice31, answer: false, question_id: 2008 },
            { id: 2032, content: $a_choice32, answer: true, question_id: 2008 },
            # a_question9(3)
            { id: 2033, content: $a_choice33, answer: false, question_id: 2009 },
            { id: 2034, content: $a_choice34, answer: false, question_id: 2009 },
            { id: 2035, content: $a_choice35, answer: true, question_id: 2009 },
            { id: 2036, content: $a_choice36, answer: false, question_id: 2009 },
            # a_question10(1)
            { id: 2037, content: $a_choice37, answer: true, question_id: 2010 },
            { id: 2038, content: $a_choice38, answer: false, question_id: 2010 },
            { id: 2039, content: $a_choice39, answer: false, question_id: 2010 },
            { id: 2040, content: $a_choice40, answer: false, question_id: 2010 },
            # a_question11(1)
            { id: 2041, content: $a_choice41, answer: false, question_id: 2011 },
            { id: 2042, content: $a_choice42, answer: false, question_id: 2011 },
            { id: 2043, content: $a_choice43, answer: false, question_id: 2011 },
            { id: 2044, content: $a_choice44, answer: true, question_id: 2011 },
            # a_question12(2)
            { id: 2045, content: $a_choice45, answer: false, question_id: 2012 },
            { id: 2046, content: $a_choice46, answer: true, question_id: 2012 },
            { id: 2047, content: $a_choice47, answer: false, question_id: 2012 },
            { id: 2048, content: $a_choice48, answer: false, question_id: 2012 },
            # a_question13(3)
            { id: 2049, content: $a_choice49, answer: false, question_id: 2013 },
            { id: 2050, content: $a_choice50, answer: false, question_id: 2013 },
            { id: 2051, content: $a_choice51, answer: true, question_id: 2013 },
            { id: 2052, content: $a_choice52, answer: false, question_id: 2013 },
            # a_question14(3)
            { id: 2053, content: $a_choice53, answer: false, question_id: 2014 },
            { id: 2054, content: $a_choice54, answer: false, question_id: 2014 },
            { id: 2055, content: $a_choice55, answer: true, question_id: 2014 },
            { id: 2056, content: $a_choice56, answer: false, question_id: 2014 },
            # a_question15(2)
            { id: 2057, content: $a_choice57, answer: false, question_id: 2015 },
            { id: 2058, content: $a_choice58, answer: true, question_id: 2015 },
            { id: 2059, content: $a_choice59, answer: false, question_id: 2015 },
            { id: 2060, content: $a_choice60, answer: false, question_id: 2015 },
            # a_question16(1)
            { id: 2061, content: $a_choice61, answer: true, question_id: 2016 },
            { id: 2062, content: $a_choice62, answer: false, question_id: 2016 },
            { id: 2063, content: $a_choice63, answer: false, question_id: 2016 },
            { id: 2064, content: $a_choice64, answer: false, question_id: 2016 },
            # a_question17(2)
            { id: 2065, content: $a_choice65, answer: false, question_id: 2017 },
            { id: 2066, content: $a_choice66, answer: true, question_id: 2017 },
            { id: 2067, content: $a_choice67, answer: false, question_id: 2017 },
            { id: 2068, content: $a_choice68, answer: false, question_id: 2017 },
            # a_question18(4)
            { id: 2069, content: $a_choice69, answer: false, question_id: 2018 },
            { id: 2070, content: $a_choice70, answer: false, question_id: 2018 },
            { id: 2071, content: $a_choice71, answer: false, question_id: 2018 },
            { id: 2072, content: $a_choice72, answer: true, question_id: 2018 },
            # a_question19(4)
            { id: 2073, content: $a_choice73, answer: false, question_id: 2019 },
            { id: 2074, content: $a_choice74, answer: false, question_id: 2019 },
            { id: 2075, content: $a_choice75, answer: false, question_id: 2019 },
            { id: 2076, content: $a_choice76, answer: true, question_id: 2019 },
            # a_question20(1)
            { id: 2077, content: $a_choice77, answer: false, question_id: 2020 },
            { id: 2078, content: $a_choice78, answer: true, question_id: 2020 },
            { id: 2079, content: $a_choice79, answer: false, question_id: 2020 },
            { id: 2080, content: $a_choice80, answer: false, question_id: 2020 },
            # a_question21(3)
            { id: 2081, content: $a_choice81, answer: false, question_id: 2021 },
            { id: 2082, content: $a_choice82, answer: false, question_id: 2021 },
            { id: 2083, content: $a_choice83, answer: true, question_id: 2021 },
            { id: 2084, content: $a_choice84, answer: false, question_id: 2021 },
            # a_question22(3)
            { id: 2085, content: $a_choice85, answer: false, question_id: 2022 },
            { id: 2086, content: $a_choice86, answer: false, question_id: 2022 },
            { id: 2087, content: $a_choice87, answer: true, question_id: 2022 },
            { id: 2088, content: $a_choice88, answer: false, question_id: 2022 },
            # a_question23(4)
            { id: 2089, content: $a_choice89, answer: false, question_id: 2023 },
            { id: 2090, content: $a_choice90, answer: false, question_id: 2023 },
            { id: 2091, content: $a_choice91, answer: false, question_id: 2023 },
            { id: 2092, content: $a_choice92, answer: true, question_id: 2023 },
            # a_question24(1)
            { id: 2093, content: $a_choice93, answer: true, question_id: 2024 },
            { id: 2094, content: $a_choice94, answer: false, question_id: 2024 },
            { id: 2095, content: $a_choice95, answer: false, question_id: 2024 },
            { id: 2096, content: $a_choice96, answer: false, question_id: 2024 },
            # a_question25(1)
            { id: 2097, content: $a_choice97, answer: false, question_id: 2025 },
            { id: 2098, content: $a_choice98, answer: true, question_id: 2025 },
            { id: 2099, content: $a_choice99, answer: false, question_id: 2025 },
            { id: 2100, content: $a_choice100, answer: false, question_id: 2025 },
            # a_question26(2)
            { id: 2101, content: $a_choice101, answer: false, question_id: 2026 },
            { id: 2102, content: $a_choice102, answer: true, question_id: 2026 },
            { id: 2103, content: $a_choice103, answer: false, question_id: 2026 },
            { id: 2104, content: $a_choice104, answer: false, question_id: 2026 },
            # a_question27(1)
            { id: 2105, content: $a_choice105, answer: true, question_id: 2027 },
            { id: 2106, content: $a_choice106, answer: false, question_id: 2027 },
            { id: 2107, content: $a_choice107, answer: false, question_id: 2027 },
            { id: 2108, content: $a_choice108, answer: false, question_id: 2027 },
            # a_question28(2)
            { id: 2109, content: $a_choice109, answer: false, question_id: 2028 },
            { id: 2110, content: $a_choice110, answer: true, question_id: 2028 },
            { id: 2111, content: $a_choice111, answer: false, question_id: 2028 },
            { id: 2112, content: $a_choice112, answer: false, question_id: 2028 },
            # a_question29(3)
            { id: 2113, content: $a_choice113, answer: false, question_id: 2029 },
            { id: 2114, content: $a_choice114, answer: false, question_id: 2029 },
            { id: 2115, content: $a_choice115, answer: true, question_id: 2029 },
            { id: 2116, content: $a_choice116, answer: false, question_id: 2029 },
            # a_question30(3)
            { id: 2117, content: $a_choice117, answer: false, question_id: 2030 },
            { id: 2118, content: $a_choice118, answer: false, question_id: 2030 },
            { id: 2119, content: $a_choice119, answer: true, question_id: 2030 },
            { id: 2120, content: $a_choice120, answer: false, question_id: 2030 },
            # a_question31(1)
            { id: 2121, content: $a_choice121, answer: true, question_id: 2031 },
            { id: 2122, content: $a_choice122, answer: false, question_id: 2031 },
            { id: 2123, content: $a_choice123, answer: false, question_id: 2031 },
            { id: 2124, content: $a_choice124, answer: false, question_id: 2031 },
            # a_question32(2)
            { id: 2125, content: $a_choice125, answer: false, question_id: 2032 },
            { id: 2126, content: $a_choice126, answer: true, question_id: 2032 },
            { id: 2127, content: $a_choice127, answer: false, question_id: 2032 },
            { id: 2128, content: $a_choice128, answer: false, question_id: 2032 },
            # a_question33(3)
            { id: 2129, content: $a_choice129, answer: false, question_id: 2033 },
            { id: 2130, content: $a_choice130, answer: false, question_id: 2033 },
            { id: 2131, content: $a_choice131, answer: true, question_id: 2033 },
            { id: 2132, content: $a_choice132, answer: false, question_id: 2033 },
            # a_question34(2)
            { id: 2133, content: $a_choice133, answer: false, question_id: 2034 },
            { id: 2134, content: $a_choice134, answer: true, question_id: 2034 },
            { id: 2135, content: $a_choice135, answer: false, question_id: 2034 },
            { id: 2136, content: $a_choice136, answer: false, question_id: 2034 },
            # a_question35(3)
            { id: 2137, content: $a_choice137, answer: false, question_id: 2035 },
            { id: 2138, content: $a_choice138, answer: false, question_id: 2035 },
            { id: 2139, content: $a_choice139, answer: true, question_id: 2035 },
            { id: 2140, content: $a_choice140, answer: false, question_id: 2035 },
            # a_question36(1)
            { id: 2141, content: $a_choice141, answer: true, question_id: 2036 },
            { id: 2142, content: $a_choice142, answer: false, question_id: 2036 },
            { id: 2143, content: $a_choice143, answer: false, question_id: 2036 },
            { id: 2144, content: $a_choice144, answer: false, question_id: 2036 },
            # a_question37(3)
            { id: 2145, content: $a_choice145, answer: false, question_id: 2037 },
            { id: 2146, content: $a_choice146, answer: false, question_id: 2037 },
            { id: 2147, content: $a_choice147, answer: true, question_id: 2037 },
            { id: 2148, content: $a_choice148, answer: false, question_id: 2037 },
            # a_question38(4)
            { id: 2149, content: $a_choice149, answer: false, question_id: 2038 },
            { id: 2150, content: $a_choice150, answer: false, question_id: 2038 },
            { id: 2151, content: $a_choice151, answer: false, question_id: 2038 },
            { id: 2152, content: $a_choice152, answer: true, question_id: 2038 },
            # a_question39(2)
            { id: 2153, content: $a_choice153, answer: false, question_id: 2039 },
            { id: 2154, content: $a_choice154, answer: true, question_id: 2039 },
            { id: 2155, content: $a_choice155, answer: false, question_id: 2039 },
            { id: 2156, content: $a_choice156, answer: false, question_id: 2039 },
            # a_question40(3)
            { id: 2157, content: $a_choice157, answer: false, question_id: 2040 },
            { id: 2158, content: $a_choice158, answer: false, question_id: 2040 },
            { id: 2159, content: $a_choice159, answer: true, question_id: 2040 },
            { id: 2160, content: $a_choice160, answer: false, question_id: 2040 },
            # a_question41(1)
            { id: 2161, content: $a_choice161, answer: false, question_id: 2041 },
            { id: 2162, content: $a_choice162, answer: true, question_id: 2041 },
            { id: 2163, content: $a_choice163, answer: false, question_id: 2041 },
            { id: 2164, content: $a_choice164, answer: false, question_id: 2041 },
            # a_question42(1)
            { id: 2165, content: $a_choice165, answer: true, question_id: 2042 },
            { id: 2166, content: $a_choice166, answer: false, question_id: 2042 },
            { id: 2167, content: $a_choice167, answer: false, question_id: 2042 },
            { id: 2168, content: $a_choice168, answer: false, question_id: 2042 },
            # a_question43(3)
            { id: 2169, content: $a_choice169, answer: false, question_id: 2043 },
            { id: 2170, content: $a_choice170, answer: false, question_id: 2043 },
            { id: 2171, content: $a_choice171, answer: true, question_id: 2043 },
            { id: 2172, content: $a_choice172, answer: false, question_id: 2043 },
            # a_question44(2)
            { id: 2173, content: $a_choice173, answer: false, question_id: 2044 },
            { id: 2174, content: $a_choice174, answer: true, question_id: 2044 },
            { id: 2175, content: $a_choice175, answer: false, question_id: 2044 },
            { id: 2176, content: $a_choice176, answer: false, question_id: 2044 },
            # a_question45(4)
            { id: 2177, content: $a_choice177, answer: false, question_id: 2045 },
            { id: 2178, content: $a_choice178, answer: false, question_id: 2045 },
            { id: 2179, content: $a_choice179, answer: false, question_id: 2045 },
            { id: 2180, content: $a_choice180, answer: true, question_id: 2045 },
            # a_question46(1)
            { id: 2181, content: $a_choice181, answer: false, question_id: 2046 },
            { id: 2182, content: $a_choice182, answer: false, question_id: 2046 },
            { id: 2183, content: $a_choice183, answer: true, question_id: 2046 },
            { id: 2184, content: $a_choice184, answer: false, question_id: 2046 },
            # a_question47(1)
            { id: 2185, content: $a_choice185, answer: true, question_id: 2047 },
            { id: 2186, content: $a_choice186, answer: false, question_id: 2047 },
            { id: 2187, content: $a_choice187, answer: false, question_id: 2047 },
            { id: 2188, content: $a_choice188, answer: false, question_id: 2047 },
            # a_question48(2)
            { id: 2189, content: $a_choice189, answer: false, question_id: 2048 },
            { id: 2190, content: $a_choice190, answer: true, question_id: 2048 },
            { id: 2191, content: $a_choice191, answer: false, question_id: 2048 },
            { id: 2192, content: $a_choice192, answer: false, question_id: 2048 },
            # a_question49(4)
            { id: 2193, content: $a_choice193, answer: false, question_id: 2049 },
            { id: 2194, content: $a_choice194, answer: false, question_id: 2049 },
            { id: 2195, content: $a_choice195, answer: false, question_id: 2049 },
            { id: 2196, content: $a_choice196, answer: true, question_id: 2049 },
            # a_question50(3)
            { id: 2197, content: $a_choice197, answer: false, question_id: 2050 },
            { id: 2198, content: $a_choice198, answer: false, question_id: 2050 },
            { id: 2199, content: $a_choice199, answer: true, question_id: 2050 },
            { id: 2200, content: $a_choice200, answer: false, question_id: 2050 },
            # a_question51(2)
            { id: 2201, content: $a_choice201, answer: false, question_id: 2051 },
            { id: 2202, content: $a_choice202, answer: true, question_id: 2051 },
            { id: 2203, content: $a_choice203, answer: false, question_id: 2051 },
            { id: 2204, content: $a_choice204, answer: false, question_id: 2051 },
            # a_question52(3)
            { id: 2205, content: $a_choice205, answer: false, question_id: 2052 },
            { id: 2206, content: $a_choice206, answer: false, question_id: 2052 },
            { id: 2207, content: $a_choice207, answer: true, question_id: 2052 },
            { id: 2208, content: $a_choice208, answer: false, question_id: 2052 },
            # a_question53(1)
            { id: 2209, content: $a_choice209, answer: true, question_id: 2053 },
            { id: 2210, content: $a_choice210, answer: false, question_id: 2053 },
            { id: 2211, content: $a_choice211, answer: false, question_id: 2053 },
            { id: 2212, content: $a_choice212, answer: false, question_id: 2053 },
            # a_question54(3)
            { id: 2213, content: $a_choice213, answer: false, question_id: 2054 },
            { id: 2214, content: $a_choice214, answer: false, question_id: 2054 },
            { id: 2215, content: $a_choice215, answer: true, question_id: 2054 },
            { id: 2216, content: $a_choice216, answer: false, question_id: 2054 },
            # a_question55(1)
            { id: 2217, content: $a_choice217, answer: true, question_id: 2055 },
            { id: 2218, content: $a_choice218, answer: false, question_id: 2055 },
            { id: 2219, content: $a_choice219, answer: false, question_id: 2055 },
            { id: 2220, content: $a_choice220, answer: false, question_id: 2055 },
            # a_question56(3)
            { id: 2221, content: $a_choice221, answer: false, question_id: 2056 },
            { id: 2222, content: $a_choice222, answer: false, question_id: 2056 },
            { id: 2223, content: $a_choice223, answer: true, question_id: 2056 },
            { id: 2224, content: $a_choice224, answer: false, question_id: 2056 },
            # a_question57(1)
            { id: 2225, content: $a_choice225, answer: true, question_id: 2057 },
            { id: 2226, content: $a_choice226, answer: false, question_id: 2057 },
            { id: 2227, content: $a_choice227, answer: false, question_id: 2057 },
            { id: 2228, content: $a_choice228, answer: false, question_id: 2057 },
            # a_question58(2)
            { id: 2229, content: $a_choice229, answer: false, question_id: 2058 },
            { id: 2230, content: $a_choice230, answer: true, question_id: 2058 },
            { id: 2231, content: $a_choice231, answer: false, question_id: 2058 },
            { id: 2232, content: $a_choice232, answer: false, question_id: 2058 },
            # a_question59(4)
            { id: 2233, content: $a_choice233, answer: false, question_id: 2059 },
            { id: 2234, content: $a_choice234, answer: false, question_id: 2059 },
            { id: 2235, content: $a_choice235, answer: false, question_id: 2059 },
            { id: 2236, content: $a_choice236, answer: true, question_id: 2059 },
            # a_question60(2)
            { id: 2237, content: $a_choice237, answer: false, question_id: 2060 },
            { id: 2238, content: $a_choice238, answer: true, question_id: 2060 },
            { id: 2239, content: $a_choice239, answer: false, question_id: 2060 },
            { id: 2240, content: $a_choice240, answer: false, question_id: 2060 },
            # a_question61(1)
            { id: 2241, content: $a_choice241, answer: true, question_id: 2061 },
            { id: 2242, content: $a_choice242, answer: false, question_id: 2061 },
            { id: 2243, content: $a_choice243, answer: false, question_id: 2061 },
            { id: 2244, content: $a_choice244, answer: false, question_id: 2061 },
            # a_question62(3)
            { id: 2245, content: $a_choice245, answer: false, question_id: 2062 },
            { id: 2246, content: $a_choice246, answer: false, question_id: 2062 },
            { id: 2247, content: $a_choice247, answer: true, question_id: 2062 },
            { id: 2248, content: $a_choice248, answer: false, question_id: 2062 },
            # a_question63(1)
            { id: 2249, content: $a_choice249, answer: true, question_id: 2063 },
            { id: 2250, content: $a_choice250, answer: false, question_id: 2063 },
            { id: 2251, content: $a_choice251, answer: false, question_id: 2063 },
            { id: 2252, content: $a_choice252, answer: false, question_id: 2063 },
            # a_question64(1)
            { id: 2253, content: $a_choice253, answer: false, question_id: 2064 },
            { id: 2254, content: $a_choice254, answer: true, question_id: 2064 },
            { id: 2255, content: $a_choice255, answer: false, question_id: 2064 },
            { id: 2256, content: $a_choice256, answer: false, question_id: 2064 },
            # a_question65(2)
            { id: 2257, content: $a_choice257, answer: false, question_id: 2065 },
            { id: 2258, content: $a_choice258, answer: true, question_id: 2065 },
            { id: 2259, content: $a_choice259, answer: false, question_id: 2065 },
            { id: 2260, content: $a_choice260, answer: false, question_id: 2065 },
            # a_question66(1)
            { id: 2261, content: $a_choice261, answer: true, question_id: 2066 },
            { id: 2262, content: $a_choice262, answer: false, question_id: 2066 },
            { id: 2263, content: $a_choice263, answer: false, question_id: 2066 },
            { id: 2264, content: $a_choice264, answer: false, question_id: 2066 },
            # a_question67(3)
            { id: 2265, content: $a_choice265, answer: false, question_id: 2067 },
            { id: 2266, content: $a_choice266, answer: false, question_id: 2067 },
            { id: 2267, content: $a_choice267, answer: true, question_id: 2067 },
            { id: 2268, content: $a_choice268, answer: false, question_id: 2067 },
            # a_question68(2)
            { id: 2269, content: $a_choice269, answer: false, question_id: 2068 },
            { id: 2270, content: $a_choice270, answer: true, question_id: 2068 },
            { id: 2271, content: $a_choice271, answer: false, question_id: 2068 },
            { id: 2272, content: $a_choice272, answer: false, question_id: 2068 },
            # a_question69(3)
            { id: 2273, content: $a_choice273, answer: false, question_id: 2069 },
            { id: 2274, content: $a_choice274, answer: false, question_id: 2069 },
            { id: 2275, content: $a_choice275, answer: true, question_id: 2069 },
            { id: 2276, content: $a_choice276, answer: false, question_id: 2069 })
