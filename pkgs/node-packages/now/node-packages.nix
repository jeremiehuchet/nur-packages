# This file has been generated by node2nix 1.11.1. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "@sindresorhus/is-0.14.0" = {
      name = "_at_sindresorhus_slash_is";
      packageName = "@sindresorhus/is";
      version = "0.14.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@sindresorhus/is/-/is-0.14.0.tgz";
        sha512 = "9NET910DNaIPngYnLLPeg+Ogzqsi9uM4mSboU5y6p8S5DzMTVEsJZrawi+BoDNUVBa2DhJqQYUFvMDfgU062LQ==";
      };
    };
    "@szmarczak/http-timer-1.1.2" = {
      name = "_at_szmarczak_slash_http-timer";
      packageName = "@szmarczak/http-timer";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@szmarczak/http-timer/-/http-timer-1.1.2.tgz";
        sha512 = "XIB2XbzHTN6ieIjfIMV9hlVcfPU26s2vafYWQcZHWXHOxiaRZYEDKEwdl129Zyg50+foYV2jCgtrqSA6qNuNSA==";
      };
    };
    "@types/node-20.12.2" = {
      name = "_at_types_slash_node";
      packageName = "@types/node";
      version = "20.12.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/node/-/node-20.12.2.tgz";
        sha512 = "zQ0NYO87hyN6Xrclcqp7f8ZbXNbRfoGWNcMvHTPQp9UUrwI0mI7XBz+cu7/W6/VClYo2g63B0cjull/srU7LgQ==";
      };
    };
    "@vercel/build-utils-2.6.1-canary.0" = {
      name = "_at_vercel_slash_build-utils";
      packageName = "@vercel/build-utils";
      version = "2.6.1-canary.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/@vercel/build-utils/-/build-utils-2.6.1-canary.0.tgz";
        sha512 = "lwTNPC4xCTeqzdHSsfIzHD5h/SwwcIemA5MDRUVdFEuYyF9X38i5A01ad1l/WedCQDi7IP3Q1IGOJ9g7XKJXOg==";
      };
    };
    "@vercel/go-1.1.6" = {
      name = "_at_vercel_slash_go";
      packageName = "@vercel/go";
      version = "1.1.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/@vercel/go/-/go-1.1.6.tgz";
        sha512 = "swA2crS08fkPmw4UkR9yjmoL8FOCzuNHLFDqj8oM1V9ni610ibJ7Xk57jI8uyS7bTecQVh8VUxihb+SF0GT+aw==";
      };
    };
    "@vercel/node-1.8.5" = {
      name = "_at_vercel_slash_node";
      packageName = "@vercel/node";
      version = "1.8.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/@vercel/node/-/node-1.8.5.tgz";
        sha512 = "1iw7FSR8Oau6vZB1MWfBnA5q2a/IqRHiSZSbt8lz0dyTF599q8pc5GcSv/TvmrYaEGzh3+N0S4cbmuMCqVlwJg==";
      };
    };
    "@vercel/python-1.2.3" = {
      name = "_at_vercel_slash_python";
      packageName = "@vercel/python";
      version = "1.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/@vercel/python/-/python-1.2.3.tgz";
        sha512 = "DJRvL6bmt4m0xrkzSKUbP8mK57YSDdTBWoo0JYyXq/o2golQrv/wQTalbNchd4P8NhVL3mZuk/1JNYuv5u1rKQ==";
      };
    };
    "@vercel/ruby-1.2.4" = {
      name = "_at_vercel_slash_ruby";
      packageName = "@vercel/ruby";
      version = "1.2.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/@vercel/ruby/-/ruby-1.2.4.tgz";
        sha512 = "g19vrrmJ4MTJCRB/bvx8DahIsml1iPn7wsdHf5k3QVN6lT0dlDILSBwpERC4hqzndimaApsmWOfjYtY9/L6+tQ==";
      };
    };
    "ansi-align-3.0.1" = {
      name = "ansi-align";
      packageName = "ansi-align";
      version = "3.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ansi-align/-/ansi-align-3.0.1.tgz";
        sha512 = "IOfwwBF5iczOjp/WeY4YxyjqAFMQoZufdQWDd19SEExbVLNXqvpzSJ/M7Za4/sCPmQ0+GRquoA7bGcINcxew6w==";
      };
    };
    "ansi-regex-5.0.1" = {
      name = "ansi-regex";
      packageName = "ansi-regex";
      version = "5.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-5.0.1.tgz";
        sha512 = "quJQXlTSUGL2LH9SUXo8VwsY4soanhgo6LNSm84E1LBcE8s3O0wpdiRzyR9z/ZZJMlMWv37qOOb9pdJlMUEKFQ==";
      };
    };
    "ansi-styles-4.3.0" = {
      name = "ansi-styles";
      packageName = "ansi-styles";
      version = "4.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ansi-styles/-/ansi-styles-4.3.0.tgz";
        sha512 = "zbB9rCJAT1rbjiVDb2hqKFHNYLxgtk8NURxZ3IZwD3F6NtxbXZQCnnSi1Lkx+IDohdPlFp222wVALIheZJQSEg==";
      };
    };
    "arg-4.1.3" = {
      name = "arg";
      packageName = "arg";
      version = "4.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/arg/-/arg-4.1.3.tgz";
        sha512 = "58S9QDqG0Xx27YwPSt9fJxivjYl432YCwfDMfZ+71RAqUrZef7LrKQZ3LHLOwCS4FLNBplP533Zx895SeOCHvA==";
      };
    };
    "boxen-4.2.0" = {
      name = "boxen";
      packageName = "boxen";
      version = "4.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/boxen/-/boxen-4.2.0.tgz";
        sha512 = "eB4uT9RGzg2odpER62bBwSLvUeGC+WbRjjyyFhGsKnc8wp/m0+hQsMUvUe3H2V0D5vw0nBdO1hCJoZo5mKeuIQ==";
      };
    };
    "buffer-from-1.1.2" = {
      name = "buffer-from";
      packageName = "buffer-from";
      version = "1.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/buffer-from/-/buffer-from-1.1.2.tgz";
        sha512 = "E+XQCRwSbaaiChtv6k6Dwgc+bx+Bs6vuKJHHl5kox/BaKbhiXzqQOwK4cO22yElGp2OCmjwVhT3HmxgyPGnJfQ==";
      };
    };
    "cacheable-request-6.1.0" = {
      name = "cacheable-request";
      packageName = "cacheable-request";
      version = "6.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/cacheable-request/-/cacheable-request-6.1.0.tgz";
        sha512 = "Oj3cAGPCqOZX7Rz64Uny2GYAZNliQSqfbePrgAQ1wKAihYmCUnraBtJtKcGR4xz7wF+LoJC+ssFZvv5BgF9Igg==";
      };
    };
    "camelcase-5.3.1" = {
      name = "camelcase";
      packageName = "camelcase";
      version = "5.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/camelcase/-/camelcase-5.3.1.tgz";
        sha512 = "L28STB170nwWS63UjtlEOE3dldQApaJXZkOI1uMFfzf3rRuPegHaHesyee+YxQ+W6SvRDQV6UrdOdRiR153wJg==";
      };
    };
    "chalk-3.0.0" = {
      name = "chalk";
      packageName = "chalk";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/chalk/-/chalk-3.0.0.tgz";
        sha512 = "4D3B6Wf41KOYRFdszmDqMCGq5VV/uMAB273JILmO+3jAlh8X4qDtdtgCR3fxtbLEMzSx22QdhnDcJvu2u1fVwg==";
      };
    };
    "ci-info-2.0.0" = {
      name = "ci-info";
      packageName = "ci-info";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/ci-info/-/ci-info-2.0.0.tgz";
        sha512 = "5tK7EtrZ0N+OLFMthtqOj4fI2Jeb88C4CAZPu25LDVUgXJ0A3Js4PMGqrn0JU1W0Mh1/Z8wZzYPxqUrXeBboCQ==";
      };
    };
    "cli-boxes-2.2.1" = {
      name = "cli-boxes";
      packageName = "cli-boxes";
      version = "2.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/cli-boxes/-/cli-boxes-2.2.1.tgz";
        sha512 = "y4coMcylgSCdVinjiDBuR8PCC2bLjyGTwEmPb9NHR/QaNU6EUOXcTY/s6VjGMD6ENSEaeQYHCY0GNGS5jfMwPw==";
      };
    };
    "clone-response-1.0.3" = {
      name = "clone-response";
      packageName = "clone-response";
      version = "1.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/clone-response/-/clone-response-1.0.3.tgz";
        sha512 = "ROoL94jJH2dUVML2Y/5PEDNaSHgeOdSDicUyS7izcF63G6sTc/FTjLub4b8Il9S8S0beOfYt0TaA5qvFK+w0wA==";
      };
    };
    "color-convert-2.0.1" = {
      name = "color-convert";
      packageName = "color-convert";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/color-convert/-/color-convert-2.0.1.tgz";
        sha512 = "RRECPsj7iu/xb5oKYcsFHSppFNnsj/52OVTRKb4zP5onXwVF3zVmmToNcOfGC+CRDpfK/U584fMg38ZHCaElKQ==";
      };
    };
    "color-name-1.1.4" = {
      name = "color-name";
      packageName = "color-name";
      version = "1.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/color-name/-/color-name-1.1.4.tgz";
        sha512 = "dOy+3AuW3a2wNbZHIuMZpTcgjGuLU/uBL/ubcZF9OXbDo8ff4O8yVp5Bf0efS8uEoYo5q4Fx7dY9OgQGXgAsQA==";
      };
    };
    "configstore-5.0.1" = {
      name = "configstore";
      packageName = "configstore";
      version = "5.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/configstore/-/configstore-5.0.1.tgz";
        sha512 = "aMKprgk5YhBNyH25hj8wGt2+D52Sw1DRRIzqBwLp2Ya9mFmY8KPvvtvmna8SxVR9JMZ4kzMD68N22vlaRpkeFA==";
      };
    };
    "crypto-random-string-2.0.0" = {
      name = "crypto-random-string";
      packageName = "crypto-random-string";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/crypto-random-string/-/crypto-random-string-2.0.0.tgz";
        sha512 = "v1plID3y9r/lPhviJ1wrXpLeyUIGAZ2SHNYTEapm7/8A9nLPoyvVp3RK/EPFqn5kEznyWgYZNsRtYYIWbuG8KA==";
      };
    };
    "decompress-response-3.3.0" = {
      name = "decompress-response";
      packageName = "decompress-response";
      version = "3.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/decompress-response/-/decompress-response-3.3.0.tgz";
        sha512 = "BzRPQuY1ip+qDonAOz42gRm/pg9F768C+npV/4JOsxRC2sq+Rlk+Q4ZCAsOhnIaMrgarILY+RMUIvMmmX1qAEA==";
      };
    };
    "deep-extend-0.6.0" = {
      name = "deep-extend";
      packageName = "deep-extend";
      version = "0.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/deep-extend/-/deep-extend-0.6.0.tgz";
        sha512 = "LOHxIOaPYdHlJRtCQfDIVZtfw/ufM8+rVj649RIHzcm/vGwQRXFt6OPqIFWsm2XEMrNIEtWR64sY1LEKD2vAOA==";
      };
    };
    "defer-to-connect-1.1.3" = {
      name = "defer-to-connect";
      packageName = "defer-to-connect";
      version = "1.1.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/defer-to-connect/-/defer-to-connect-1.1.3.tgz";
        sha512 = "0ISdNousHvZT2EiFlZeZAHBUvSxmKswVCEf8hW7KWgG4a8MVEu/3Vb6uWYozkjylyCxe0JBIiRB1jV45S70WVQ==";
      };
    };
    "diff-4.0.2" = {
      name = "diff";
      packageName = "diff";
      version = "4.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/diff/-/diff-4.0.2.tgz";
        sha512 = "58lmxKSA4BNyLz+HHMUzlOEpg09FV+ev6ZMe3vJihgdxzgcwZ8VoEEPmALCZG9LmqfVoNMMKpttIYTVG6uDY7A==";
      };
    };
    "dot-prop-5.3.0" = {
      name = "dot-prop";
      packageName = "dot-prop";
      version = "5.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/dot-prop/-/dot-prop-5.3.0.tgz";
        sha512 = "QM8q3zDe58hqUqjraQOmzZ1LIH9SWQJTlEKCH4kJ2oQvLZk7RbQXvtDM2XEq3fwkV9CCvvH4LA0AV+ogFsBM2Q==";
      };
    };
    "duplexer3-0.1.5" = {
      name = "duplexer3";
      packageName = "duplexer3";
      version = "0.1.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/duplexer3/-/duplexer3-0.1.5.tgz";
        sha512 = "1A8za6ws41LQgv9HrE/66jyC5yuSjQ3L/KOpFtoBilsAK2iA2wuS5rTt1OCzIvtS2V7nVmedsUU+DGRcjBmOYA==";
      };
    };
    "emoji-regex-8.0.0" = {
      name = "emoji-regex";
      packageName = "emoji-regex";
      version = "8.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/emoji-regex/-/emoji-regex-8.0.0.tgz";
        sha512 = "MSjYzcWNOA0ewAHpz0MxpYFvwg6yjy1NG3xteoqz644VCo/RPgnr1/GGt+ic3iJTzQ8Eu3TdM14SawnVUmGE6A==";
      };
    };
    "end-of-stream-1.4.4" = {
      name = "end-of-stream";
      packageName = "end-of-stream";
      version = "1.4.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/end-of-stream/-/end-of-stream-1.4.4.tgz";
        sha512 = "+uw1inIHVPQoaVuHzRyXd21icM+cnt4CzD5rW+NC1wjOUSTOs+Te7FOv7AhN7vS9x/oIyhLP5PR1H+phQAHu5Q==";
      };
    };
    "escape-goat-2.1.1" = {
      name = "escape-goat";
      packageName = "escape-goat";
      version = "2.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/escape-goat/-/escape-goat-2.1.1.tgz";
        sha512 = "8/uIhbG12Csjy2JEW7D9pHbreaVaS/OpN3ycnyvElTdwM5n6GY6W6e2IPemfvGZeUMqZ9A/3GqIZMgKnBhAw/Q==";
      };
    };
    "get-stream-4.1.0" = {
      name = "get-stream";
      packageName = "get-stream";
      version = "4.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/get-stream/-/get-stream-4.1.0.tgz";
        sha512 = "GMat4EJ5161kIy2HevLlr4luNjBgvmj413KaQA7jt4V8B4RDsfpHk7WQ9GVqfYyyx8OS/L66Kox+rJRNklLK7w==";
      };
    };
    "get-stream-5.2.0" = {
      name = "get-stream";
      packageName = "get-stream";
      version = "5.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/get-stream/-/get-stream-5.2.0.tgz";
        sha512 = "nBF+F1rAZVCu/p7rjzgA+Yb4lfYXrpl7a6VmJrU8wF9I1CKvP/QwPNZHnOlwbTkY6dvtFIzFMSyQXbLoTQPRpA==";
      };
    };
    "global-dirs-2.1.0" = {
      name = "global-dirs";
      packageName = "global-dirs";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/global-dirs/-/global-dirs-2.1.0.tgz";
        sha512 = "MG6kdOUh/xBnyo9cJFeIKkLEc1AyFq42QTU4XiX51i2NEdxLxLWXIjEjmqKeSuKR7pAZjTqUVoT2b2huxVLgYQ==";
      };
    };
    "got-9.6.0" = {
      name = "got";
      packageName = "got";
      version = "9.6.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/got/-/got-9.6.0.tgz";
        sha512 = "R7eWptXuGYxwijs0eV+v3o6+XH1IqVK8dJOEecQfTmkncw9AV4dcw/Dhxi8MdlqPthxxpZyizMzyg8RTmEsG+Q==";
      };
    };
    "graceful-fs-4.2.11" = {
      name = "graceful-fs";
      packageName = "graceful-fs";
      version = "4.2.11";
      src = fetchurl {
        url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.2.11.tgz";
        sha512 = "RbJ5/jmFcNNCcDV5o9eTnBLJ/HszWV0P73bc+Ff4nS/rJj+YaS6IGyiOL0VoBYX+l1Wrl3k63h/KrH+nhJ0XvQ==";
      };
    };
    "has-flag-4.0.0" = {
      name = "has-flag";
      packageName = "has-flag";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/has-flag/-/has-flag-4.0.0.tgz";
        sha512 = "EykJT/Q1KjTWctppgIAgfSO0tKVuZUjhgMr17kqTumMl6Afv3EISleU7qZUzoXDFTAHTDC4NOoG/ZxU3EvlMPQ==";
      };
    };
    "has-yarn-2.1.0" = {
      name = "has-yarn";
      packageName = "has-yarn";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/has-yarn/-/has-yarn-2.1.0.tgz";
        sha512 = "UqBRqi4ju7T+TqGNdqAO0PaSVGsDGJUBQvk9eUWNGRY1CFGDzYhLWoM7JQEemnlvVcv/YEmc2wNW8BC24EnUsw==";
      };
    };
    "http-cache-semantics-4.1.1" = {
      name = "http-cache-semantics";
      packageName = "http-cache-semantics";
      version = "4.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/http-cache-semantics/-/http-cache-semantics-4.1.1.tgz";
        sha512 = "er295DKPVsV82j5kw1Gjt+ADA/XYHsajl82cGNQG2eyoPkvgUhX+nDIyelzhIWbbsXP39EHcI6l5tYs2FYqYXQ==";
      };
    };
    "import-lazy-2.1.0" = {
      name = "import-lazy";
      packageName = "import-lazy";
      version = "2.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/import-lazy/-/import-lazy-2.1.0.tgz";
        sha512 = "m7ZEHgtw69qOGw+jwxXkHlrlIPdTGkyh66zXZ1ajZbxkDBNjSY/LGbmjc7h0s2ELsUDTAhFr55TrPSSqJGPG0A==";
      };
    };
    "imurmurhash-0.1.4" = {
      name = "imurmurhash";
      packageName = "imurmurhash";
      version = "0.1.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/imurmurhash/-/imurmurhash-0.1.4.tgz";
        sha512 = "JmXMZ6wuvDmLiHEml9ykzqO6lwFbof0GG4IkcGaENdCRDDmMVnny7s5HsIgHCbaq0w2MyPhDqkhTUgS2LU2PHA==";
      };
    };
    "ini-1.3.7" = {
      name = "ini";
      packageName = "ini";
      version = "1.3.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/ini/-/ini-1.3.7.tgz";
        sha512 = "iKpRpXP+CrP2jyrxvg1kMUpXDyRUFDWurxbnVT1vQPx+Wz9uCYsMIqYuSBLV+PAaZG/d7kRLKRFc9oDMsH+mFQ==";
      };
    };
    "is-ci-2.0.0" = {
      name = "is-ci";
      packageName = "is-ci";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-ci/-/is-ci-2.0.0.tgz";
        sha512 = "YfJT7rkpQB0updsdHLGWrvhBJfcfzNNawYDNIyQXJz0IViGf75O8EBPKSdvw2rF+LGCsX4FZ8tcr3b19LcZq4w==";
      };
    };
    "is-fullwidth-code-point-3.0.0" = {
      name = "is-fullwidth-code-point";
      packageName = "is-fullwidth-code-point";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-3.0.0.tgz";
        sha512 = "zymm5+u+sCsSWyD9qNaejV3DFvhCKclKdizYaJUuHA83RLjb7nSuGnddCHGv0hk+KY7BMAlsWeK4Ueg6EV6XQg==";
      };
    };
    "is-installed-globally-0.3.2" = {
      name = "is-installed-globally";
      packageName = "is-installed-globally";
      version = "0.3.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-installed-globally/-/is-installed-globally-0.3.2.tgz";
        sha512 = "wZ8x1js7Ia0kecP/CHM/3ABkAmujX7WPvQk6uu3Fly/Mk44pySulQpnHG46OMjHGXApINnV4QhY3SWnECO2z5g==";
      };
    };
    "is-npm-4.0.0" = {
      name = "is-npm";
      packageName = "is-npm";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-npm/-/is-npm-4.0.0.tgz";
        sha512 = "96ECIfh9xtDDlPylNPXhzjsykHsMJZ18ASpaWzQyBr4YRTcVjUvzaHayDAES2oU/3KpljhHUjtSRNiDwi0F0ig==";
      };
    };
    "is-obj-2.0.0" = {
      name = "is-obj";
      packageName = "is-obj";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-obj/-/is-obj-2.0.0.tgz";
        sha512 = "drqDG3cbczxxEJRoOXcOjtdp1J/lyp1mNn0xaznRs8+muBhgQcrnbspox5X5fOw0HnMnbfDzvnEMEtqDEJEo8w==";
      };
    };
    "is-path-inside-3.0.3" = {
      name = "is-path-inside";
      packageName = "is-path-inside";
      version = "3.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-path-inside/-/is-path-inside-3.0.3.tgz";
        sha512 = "Fd4gABb+ycGAmKou8eMftCupSir5lRxqf4aD/vd0cD2qc4HL07OjCeuHMr8Ro4CoMaeCKDB0/ECBOVWjTwUvPQ==";
      };
    };
    "is-typedarray-1.0.0" = {
      name = "is-typedarray";
      packageName = "is-typedarray";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-typedarray/-/is-typedarray-1.0.0.tgz";
        sha512 = "cyA56iCMHAh5CdzjJIa4aohJyeO1YbwLi3Jc35MmRU6poroFjIGZzUzupGiRPOjgHg9TLu43xbpwXk523fMxKA==";
      };
    };
    "is-yarn-global-0.3.0" = {
      name = "is-yarn-global";
      packageName = "is-yarn-global";
      version = "0.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/is-yarn-global/-/is-yarn-global-0.3.0.tgz";
        sha512 = "VjSeb/lHmkoyd8ryPVIKvOCn4D1koMqY+vqyjjUfc3xyKtP4dYOxM44sZrnqQSzSds3xyOrUTLTC9LVCVgLngw==";
      };
    };
    "json-buffer-3.0.0" = {
      name = "json-buffer";
      packageName = "json-buffer";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/json-buffer/-/json-buffer-3.0.0.tgz";
        sha512 = "CuUqjv0FUZIdXkHPI8MezCnFCdaTAacej1TZYulLoAg1h/PhwkdXFN4V/gzY4g+fMBCOV2xF+rp7t2XD2ns/NQ==";
      };
    };
    "keyv-3.1.0" = {
      name = "keyv";
      packageName = "keyv";
      version = "3.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/keyv/-/keyv-3.1.0.tgz";
        sha512 = "9ykJ/46SN/9KPM/sichzQ7OvXyGDYKGTaDlKMGCAlg2UK8KRy4jb0d8sFc+0Tt0YYnThq8X2RZgCg74RPxgcVA==";
      };
    };
    "latest-version-5.1.0" = {
      name = "latest-version";
      packageName = "latest-version";
      version = "5.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/latest-version/-/latest-version-5.1.0.tgz";
        sha512 = "weT+r0kTkRQdCdYCNtkMwWXQTMEswKrFBkm4ckQOMVhhqhIMI1UT2hMj+1iigIhgSZm5gTmrRXBNoGUgaTY1xA==";
      };
    };
    "lowercase-keys-1.0.1" = {
      name = "lowercase-keys";
      packageName = "lowercase-keys";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/lowercase-keys/-/lowercase-keys-1.0.1.tgz";
        sha512 = "G2Lj61tXDnVFFOi8VZds+SoQjtQC3dgokKdDG2mTm1tx4m50NUHBOZSBwQQHyy0V12A0JTG4icfZQH+xPyh8VA==";
      };
    };
    "lowercase-keys-2.0.0" = {
      name = "lowercase-keys";
      packageName = "lowercase-keys";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/lowercase-keys/-/lowercase-keys-2.0.0.tgz";
        sha512 = "tqNXrS78oMOE73NMxK4EMLQsQowWf8jKooH9g7xPavRT706R6bkQJ6DY2Te7QukaZsulxa30wQ7bk0pm4XiHmA==";
      };
    };
    "make-dir-3.1.0" = {
      name = "make-dir";
      packageName = "make-dir";
      version = "3.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/make-dir/-/make-dir-3.1.0.tgz";
        sha512 = "g3FeP20LNwhALb/6Cz6Dd4F2ngze0jz7tbzrD2wAV+o9FeNHe4rL+yK2md0J/fiSf1sa1ADhXqi5+oVwOM/eGw==";
      };
    };
    "make-error-1.3.6" = {
      name = "make-error";
      packageName = "make-error";
      version = "1.3.6";
      src = fetchurl {
        url = "https://registry.npmjs.org/make-error/-/make-error-1.3.6.tgz";
        sha512 = "s8UhlNe7vPKomQhC1qFelMokr/Sc3AgNbso3n74mVPA5LTZwkB9NlXf4XPamLxJE8h0gh73rM94xvwRT2CVInw==";
      };
    };
    "mimic-response-1.0.1" = {
      name = "mimic-response";
      packageName = "mimic-response";
      version = "1.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/mimic-response/-/mimic-response-1.0.1.tgz";
        sha512 = "j5EctnkH7amfV/q5Hgmoal1g2QHFJRraOtmx0JpIqkxhBhI/lJSl1nMpQ45hVarwNETOoWEimndZ4QK0RHxuxQ==";
      };
    };
    "minimist-1.2.8" = {
      name = "minimist";
      packageName = "minimist";
      version = "1.2.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/minimist/-/minimist-1.2.8.tgz";
        sha512 = "2yyAR8qBkN3YuheJanUpWC5U3bb5osDywNB8RzDVlDwDHbocAJveqqj1u8+SVD7jkWT4yvsHCpWqqWqAxb0zCA==";
      };
    };
    "normalize-url-4.5.1" = {
      name = "normalize-url";
      packageName = "normalize-url";
      version = "4.5.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/normalize-url/-/normalize-url-4.5.1.tgz";
        sha512 = "9UZCFRHQdNrfTpGg8+1INIg93B6zE0aXMVFkw1WFwvO4SlZywU6aLg5Of0Ap/PgcbSw4LNxvMWXMeugwMCX0AA==";
      };
    };
    "now-21.0.0" = {
      name = "now";
      packageName = "now";
      version = "21.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/now/-/now-21.0.0.tgz";
        sha512 = "Fx0OUvMItg/UR+/sVnXq1Nqd+AQ0VFXGws0BXdSZvT+Nah6lN0lqYbDrmxEpK+CU+aZrrp+1isHqh/lSY2DdGA==";
      };
    };
    "once-1.4.0" = {
      name = "once";
      packageName = "once";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/once/-/once-1.4.0.tgz";
        sha512 = "lNaJgI+2Q5URQBkccEKHTQOPaXdUxnZZElQTZY0MFUAuaEqe1E+Nyvgdz/aIyNi6Z9MzO5dv1H8n58/GELp3+w==";
      };
    };
    "p-cancelable-1.1.0" = {
      name = "p-cancelable";
      packageName = "p-cancelable";
      version = "1.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/p-cancelable/-/p-cancelable-1.1.0.tgz";
        sha512 = "s73XxOZ4zpt1edZYZzvhqFa6uvQc1vwUa0K0BdtIZgQMAJj9IbebH+JkgKZc9h+B05PKHLOTl4ajG1BmNrVZlw==";
      };
    };
    "package-json-6.5.0" = {
      name = "package-json";
      packageName = "package-json";
      version = "6.5.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/package-json/-/package-json-6.5.0.tgz";
        sha512 = "k3bdm2n25tkyxcjSKzB5x8kfVxlMdgsbPr0GkZcwHsLpba6cBjqCt1KlcChKEvxHIcTB1FVMuwoijZ26xex5MQ==";
      };
    };
    "prepend-http-2.0.0" = {
      name = "prepend-http";
      packageName = "prepend-http";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/prepend-http/-/prepend-http-2.0.0.tgz";
        sha512 = "ravE6m9Atw9Z/jjttRUZ+clIXogdghyZAuWJ3qEzjT+jI/dL1ifAqhZeC5VHzQp1MSt1+jxKkFNemj/iO7tVUA==";
      };
    };
    "pump-3.0.0" = {
      name = "pump";
      packageName = "pump";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/pump/-/pump-3.0.0.tgz";
        sha512 = "LwZy+p3SFs1Pytd/jYct4wpv49HiYCqd9Rlc5ZVdk0V+8Yzv6jR5Blk3TRmPL1ft69TxP0IMZGJ+WPFU2BFhww==";
      };
    };
    "pupa-2.1.1" = {
      name = "pupa";
      packageName = "pupa";
      version = "2.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/pupa/-/pupa-2.1.1.tgz";
        sha512 = "l1jNAspIBSFqbT+y+5FosojNpVpF94nlI+wDUpqP9enwOTfHx9f0gh5nB96vl+6yTpsJsypeNrwfzPrKuHB41A==";
      };
    };
    "rc-1.2.8" = {
      name = "rc";
      packageName = "rc";
      version = "1.2.8";
      src = fetchurl {
        url = "https://registry.npmjs.org/rc/-/rc-1.2.8.tgz";
        sha512 = "y3bGgqKj3QBdxLbLkomlohkvsA8gdAiUQlSBJnBhfn+BPxg4bc62d8TcBW15wavDfgexCgccckhcZvywyQYPOw==";
      };
    };
    "registry-auth-token-4.2.2" = {
      name = "registry-auth-token";
      packageName = "registry-auth-token";
      version = "4.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/registry-auth-token/-/registry-auth-token-4.2.2.tgz";
        sha512 = "PC5ZysNb42zpFME6D/XlIgtNGdTl8bBOCw90xQLVMpzuuubJKYDWFAEuUNc+Cn8Z8724tg2SDhDRrkVEsqfDMg==";
      };
    };
    "registry-url-5.1.0" = {
      name = "registry-url";
      packageName = "registry-url";
      version = "5.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/registry-url/-/registry-url-5.1.0.tgz";
        sha512 = "8acYXXTI0AkQv6RAOjE3vOaIXZkT9wo4LOFbBKYQEEnnMNBpKqdUrI6S4NT0KPIo/WVvJ5tE/X5LF/TQUf0ekw==";
      };
    };
    "responselike-1.0.2" = {
      name = "responselike";
      packageName = "responselike";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/responselike/-/responselike-1.0.2.tgz";
        sha512 = "/Fpe5guzJk1gPqdJLJR5u7eG/gNY4nImjbRDaVWVMRhne55TCmj2i9Q+54PBRfatRC8v/rIiv9BN0pMd9OV5EQ==";
      };
    };
    "semver-6.3.1" = {
      name = "semver";
      packageName = "semver";
      version = "6.3.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/semver/-/semver-6.3.1.tgz";
        sha512 = "BR7VvDCVHO+q2xBEWskxS6DJE1qRnb7DxzUrogb71CWoSficBxYsiAGd+Kl0mmq/MprG9yArRkyrQxTO6XjMzA==";
      };
    };
    "semver-diff-3.1.1" = {
      name = "semver-diff";
      packageName = "semver-diff";
      version = "3.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/semver-diff/-/semver-diff-3.1.1.tgz";
        sha512 = "GX0Ix/CJcHyB8c4ykpHGIAvLyOwOobtM/8d+TQkAd81/bEjgPHrfba41Vpesr7jX/t8Uh+R3EX9eAS5be+jQYg==";
      };
    };
    "signal-exit-3.0.7" = {
      name = "signal-exit";
      packageName = "signal-exit";
      version = "3.0.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/signal-exit/-/signal-exit-3.0.7.tgz";
        sha512 = "wnD2ZE+l+SPC/uoS0vXeE9L1+0wuaMqKlfz9AMUo38JsyLSBWSFcHR1Rri62LZc12vLr1gb3jl7iwQhgwpAbGQ==";
      };
    };
    "source-map-0.6.1" = {
      name = "source-map";
      packageName = "source-map";
      version = "0.6.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz";
        sha512 = "UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==";
      };
    };
    "source-map-support-0.5.21" = {
      name = "source-map-support";
      packageName = "source-map-support";
      version = "0.5.21";
      src = fetchurl {
        url = "https://registry.npmjs.org/source-map-support/-/source-map-support-0.5.21.tgz";
        sha512 = "uBHU3L3czsIyYXKX88fdrGovxdSCoTGDRZ6SYXtSRxLZUzHg5P/66Ht6uoUlHu9EZod+inXhKo3qQgwXUT/y1w==";
      };
    };
    "string-width-4.2.3" = {
      name = "string-width";
      packageName = "string-width";
      version = "4.2.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/string-width/-/string-width-4.2.3.tgz";
        sha512 = "wKyQRQpjJ0sIp62ErSZdGsjMJWsap5oRNihHhu6G7JVO/9jIB6UyevL+tXuOqrng8j/cxKTWyWUwvSTriiZz/g==";
      };
    };
    "strip-ansi-6.0.1" = {
      name = "strip-ansi";
      packageName = "strip-ansi";
      version = "6.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-6.0.1.tgz";
        sha512 = "Y38VPSHcqkFrCpFnQ9vuSXmquuv5oXOKpGeT6aGrr3o3Gc9AlVa6JBfUSOCnbxGGZF+/0ooI7KrPuUSztUdU5A==";
      };
    };
    "strip-json-comments-2.0.1" = {
      name = "strip-json-comments";
      packageName = "strip-json-comments";
      version = "2.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/strip-json-comments/-/strip-json-comments-2.0.1.tgz";
        sha512 = "4gB8na07fecVVkOI6Rs4e7T6NOTki5EmL7TUduTs6bu3EdnSycntVJ4re8kgZA+wx9IueI2Y11bfbgwtzuE0KQ==";
      };
    };
    "supports-color-7.2.0" = {
      name = "supports-color";
      packageName = "supports-color";
      version = "7.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/supports-color/-/supports-color-7.2.0.tgz";
        sha512 = "qpCAvRl9stuOHveKsn7HncJRvv501qIacKzQlO/+Lwxc9+0q2wLyv4Dfvt80/DPn2pqOBsJdDiogXGR9+OvwRw==";
      };
    };
    "term-size-2.2.1" = {
      name = "term-size";
      packageName = "term-size";
      version = "2.2.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/term-size/-/term-size-2.2.1.tgz";
        sha512 = "wK0Ri4fOGjv/XPy8SBHZChl8CM7uMc5VML7SqiQ0zG7+J5Vr+RMQDoHa2CNT6KHUnTGIXH34UDMkPzAUyapBZg==";
      };
    };
    "to-readable-stream-1.0.0" = {
      name = "to-readable-stream";
      packageName = "to-readable-stream";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/to-readable-stream/-/to-readable-stream-1.0.0.tgz";
        sha512 = "Iq25XBt6zD5npPhlLVXGFN3/gyR2/qODcKNNyTMd4vbm39HUaOiAM4PMq0eMVC/Tkxz+Zjdsc55g9yyz+Yq00Q==";
      };
    };
    "ts-node-8.9.1" = {
      name = "ts-node";
      packageName = "ts-node";
      version = "8.9.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/ts-node/-/ts-node-8.9.1.tgz";
        sha512 = "yrq6ODsxEFTLz0R3BX2myf0WBCSQh9A+py8PBo1dCzWIOcvisbyH6akNKqDHMgXePF2kir5mm5JXJTH3OUJYOQ==";
      };
    };
    "type-fest-0.8.1" = {
      name = "type-fest";
      packageName = "type-fest";
      version = "0.8.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/type-fest/-/type-fest-0.8.1.tgz";
        sha512 = "4dbzIzqvjtgiM5rw1k5rEHtBANKmdudhGyBEajN01fEyhaAIhsoKNy6y7+IN93IfpFtwY9iqi7kD+xwKhQsNJA==";
      };
    };
    "typedarray-to-buffer-3.1.5" = {
      name = "typedarray-to-buffer";
      packageName = "typedarray-to-buffer";
      version = "3.1.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/typedarray-to-buffer/-/typedarray-to-buffer-3.1.5.tgz";
        sha512 = "zdu8XMNEDepKKR+XYOXAVPtWui0ly0NtohUscw+UmaHiAWT8hrV1rr//H6V+0DvJ3OQ19S979M0laLfX8rm82Q==";
      };
    };
    "typescript-3.9.3" = {
      name = "typescript";
      packageName = "typescript";
      version = "3.9.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/typescript/-/typescript-3.9.3.tgz";
        sha512 = "D/wqnB2xzNFIcoBG9FG8cXRDjiqSTbG2wd8DMZeQyJlP1vfTkIxH4GKveWaEBYySKIg+USu+E+EDIR47SqnaMQ==";
      };
    };
    "undici-types-5.26.5" = {
      name = "undici-types";
      packageName = "undici-types";
      version = "5.26.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/undici-types/-/undici-types-5.26.5.tgz";
        sha512 = "JlCMO+ehdEIKqlFxk6IfVoAUVmgz7cU7zD/h9XZ0qzeosSHmUJVOzSQvvYSYWXkFXC+IfLKSIffhv0sVZup6pA==";
      };
    };
    "unique-string-2.0.0" = {
      name = "unique-string";
      packageName = "unique-string";
      version = "2.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/unique-string/-/unique-string-2.0.0.tgz";
        sha512 = "uNaeirEPvpZWSgzwsPGtU2zVSTrn/8L5q/IexZmH0eH6SA73CmAA5U4GwORTxQAZs95TAXLNqeLoPPNO5gZfWg==";
      };
    };
    "update-notifier-4.1.0" = {
      name = "update-notifier";
      packageName = "update-notifier";
      version = "4.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/update-notifier/-/update-notifier-4.1.0.tgz";
        sha512 = "w3doE1qtI0/ZmgeoDoARmI5fjDoT93IfKgEGqm26dGUOh8oNpaSTsGNdYRN/SjOuo10jcJGwkEL3mroKzktkew==";
      };
    };
    "url-parse-lax-3.0.0" = {
      name = "url-parse-lax";
      packageName = "url-parse-lax";
      version = "3.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/url-parse-lax/-/url-parse-lax-3.0.0.tgz";
        sha512 = "NjFKA0DidqPa5ciFcSrXnAltTtzz84ogy+NebPvfEgAck0+TNg4UJ4IN+fB7zRZfbgUf0syOo9MDxFkDSMuFaQ==";
      };
    };
    "widest-line-3.1.0" = {
      name = "widest-line";
      packageName = "widest-line";
      version = "3.1.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/widest-line/-/widest-line-3.1.0.tgz";
        sha512 = "NsmoXalsWVDMGupxZ5R08ka9flZjjiLvHVAWYOKtiKM8ujtZWr9cRffak+uSE48+Ob8ObalXpwyeUiyDD6QFgg==";
      };
    };
    "wrappy-1.0.2" = {
      name = "wrappy";
      packageName = "wrappy";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz";
        sha512 = "l4Sp/DRseor9wL6EvV2+TuQn63dMkPjZ/sp9XkghTEbV9KlPS1xUsZ3u7/IQO4wxtcFB4bgpQPRcR3QCvezPcQ==";
      };
    };
    "write-file-atomic-3.0.3" = {
      name = "write-file-atomic";
      packageName = "write-file-atomic";
      version = "3.0.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/write-file-atomic/-/write-file-atomic-3.0.3.tgz";
        sha512 = "AvHcyZ5JnSfq3ioSyjrBkH9yW4m7Ayk8/9My/DD9onKeu/94fwrMocemO2QAJFAlnnDN+ZDS+ZjAR5ua1/PV/Q==";
      };
    };
    "xdg-basedir-4.0.0" = {
      name = "xdg-basedir";
      packageName = "xdg-basedir";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/xdg-basedir/-/xdg-basedir-4.0.0.tgz";
        sha512 = "PSNhEJDejZYV7h50BohL09Er9VaIefr2LMAf3OEmpCkjOi34eYyQYAXUTjEQtZJTKcF0E2UKTh+osDLsgNim9Q==";
      };
    };
    "yn-3.1.1" = {
      name = "yn";
      packageName = "yn";
      version = "3.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/yn/-/yn-3.1.1.tgz";
        sha512 = "Ux4ygGWsu2c7isFWe8Yu1YluJmqVhxqK2cLXNQA5AcC3QfbGNpM7fu0Y8b/z16pXLnFxZYvWhd3fhBY9DLmC6Q==";
      };
    };
  };
  args = {
    name = "now";
    packageName = "now";
    src = ./.;
    dependencies = [
      sources."@sindresorhus/is-0.14.0"
      sources."@szmarczak/http-timer-1.1.2"
      sources."@types/node-20.12.2"
      sources."@vercel/build-utils-2.6.1-canary.0"
      sources."@vercel/go-1.1.6"
      sources."@vercel/node-1.8.5"
      sources."@vercel/python-1.2.3"
      sources."@vercel/ruby-1.2.4"
      sources."ansi-align-3.0.1"
      sources."ansi-regex-5.0.1"
      sources."ansi-styles-4.3.0"
      sources."arg-4.1.3"
      sources."boxen-4.2.0"
      sources."buffer-from-1.1.2"
      (sources."cacheable-request-6.1.0" // {
        dependencies = [
          sources."get-stream-5.2.0"
          sources."lowercase-keys-2.0.0"
        ];
      })
      sources."camelcase-5.3.1"
      sources."chalk-3.0.0"
      sources."ci-info-2.0.0"
      sources."cli-boxes-2.2.1"
      sources."clone-response-1.0.3"
      sources."color-convert-2.0.1"
      sources."color-name-1.1.4"
      sources."configstore-5.0.1"
      sources."crypto-random-string-2.0.0"
      sources."decompress-response-3.3.0"
      sources."deep-extend-0.6.0"
      sources."defer-to-connect-1.1.3"
      sources."diff-4.0.2"
      sources."dot-prop-5.3.0"
      sources."duplexer3-0.1.5"
      sources."emoji-regex-8.0.0"
      sources."end-of-stream-1.4.4"
      sources."escape-goat-2.1.1"
      sources."get-stream-4.1.0"
      sources."global-dirs-2.1.0"
      sources."got-9.6.0"
      sources."graceful-fs-4.2.11"
      sources."has-flag-4.0.0"
      sources."has-yarn-2.1.0"
      sources."http-cache-semantics-4.1.1"
      sources."import-lazy-2.1.0"
      sources."imurmurhash-0.1.4"
      sources."ini-1.3.7"
      sources."is-ci-2.0.0"
      sources."is-fullwidth-code-point-3.0.0"
      sources."is-installed-globally-0.3.2"
      sources."is-npm-4.0.0"
      sources."is-obj-2.0.0"
      sources."is-path-inside-3.0.3"
      sources."is-typedarray-1.0.0"
      sources."is-yarn-global-0.3.0"
      sources."json-buffer-3.0.0"
      sources."keyv-3.1.0"
      sources."latest-version-5.1.0"
      sources."lowercase-keys-1.0.1"
      sources."make-dir-3.1.0"
      sources."make-error-1.3.6"
      sources."mimic-response-1.0.1"
      sources."minimist-1.2.8"
      sources."normalize-url-4.5.1"
      sources."now-21.0.0"
      sources."once-1.4.0"
      sources."p-cancelable-1.1.0"
      sources."package-json-6.5.0"
      sources."prepend-http-2.0.0"
      sources."pump-3.0.0"
      sources."pupa-2.1.1"
      sources."rc-1.2.8"
      sources."registry-auth-token-4.2.2"
      sources."registry-url-5.1.0"
      sources."responselike-1.0.2"
      sources."semver-6.3.1"
      sources."semver-diff-3.1.1"
      sources."signal-exit-3.0.7"
      sources."source-map-0.6.1"
      sources."source-map-support-0.5.21"
      sources."string-width-4.2.3"
      sources."strip-ansi-6.0.1"
      sources."strip-json-comments-2.0.1"
      sources."supports-color-7.2.0"
      sources."term-size-2.2.1"
      sources."to-readable-stream-1.0.0"
      sources."ts-node-8.9.1"
      sources."type-fest-0.8.1"
      sources."typedarray-to-buffer-3.1.5"
      sources."typescript-3.9.3"
      sources."undici-types-5.26.5"
      sources."unique-string-2.0.0"
      sources."update-notifier-4.1.0"
      sources."url-parse-lax-3.0.0"
      sources."widest-line-3.1.0"
      sources."wrappy-1.0.2"
      sources."write-file-atomic-3.0.3"
      sources."xdg-basedir-4.0.0"
      sources."yn-3.1.1"
    ];
    buildInputs = globalBuildInputs;
    meta = {
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
  nodeDependencies = nodeEnv.buildNodeDependencies (lib.overrideExisting args {
    src = stdenv.mkDerivation {
      name = args.name + "-package-json";
      src = nix-gitignore.gitignoreSourcePure [
        "*"
        "!package.json"
        "!package-lock.json"
      ] args.src;
      dontBuild = true;
      installPhase = "mkdir -p $out; cp -r ./* $out;";
    };
  });
}
