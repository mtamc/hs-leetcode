module LC1358Spec (spec) where

import Test.Hspec (Spec)
import TestUtils (runTests)

import qualified Problems.LC1358.TamCarreSlidingWindow

spec :: Spec
spec = runTests implementations cases

implementations :: [String -> Int]
implementations =
    [ Problems.LC1358.TamCarreSlidingWindow.numberOfSubstrings
    ]

cases :: [(String, Int -> Bool)]
cases =
    [ ("abcabc", (==) 10)
    , ("aaacb", (==) 3)
    , ("abc", (==) 1)
    , ("cabbbaccaaacaacbaacaacabbbaaacababccaaccabacccbbacabcbccccccbaccbbbcbcccbaaaabcbcbbbcacacccbcbacbcbbcbaaacabacbcbbabbaacccbccabbcabaacababbaaaabcbbcccabaccacaaacbbcbaaabcaaabacccbcbacbcccbaaabaaaababcbabaacbcacacbbbacbcaccbcabcbcaaaaaaababacaabacaacabcacaccabaccbcbacbaabbcbbbacaabcbacabacbaccabbbabbacaabcbaaacbcccacbaaacccbbcbcaaccbacbcaaccbcaabaabcbaacbbaaacbaabbcacbcbbcbbacbcaaaacbaabcabcaacbababccabcbaccabcbbbbbbbabbccaaabbaacbcccbaaccabccabbcbacccabbbbcbccaccccccaabcababcabccccaacccbabaccabbcabbbbbbaccacccacabaaaccacccccccbcccaccaabbcaabcabcaabaccaccbcabcacabbbcccccccbaacacababaacacaacacbbcabbbbcbbaabcbbaacaacccbaabbaabbacaacabacaabccbabcccabbbcbbccacaaaaaaaccccbbcaabccacaaaabacbabbbcbabacababbabbabbbcabbccbbabbcccccbbccbacbaacbcababacbcbaaccbabccbcbabacccaacbabbbbccbcbcabbbcaabcbacbaacabaacabaacabaccbaabcacabaaacaccacabaacbcaacbccaaacbbaabcabbcccaabaccbcbaccaabaaacabbbcbcababbbcaabbcaacaabaaabcbaabbcaacccababbcaabcbbbacbbbcaabbaaaccbbccccbcbbbacabaaaaacaabccaabcccaacbabaabcbbcacbacabbacccabbaccbabaaacbcaabcbbcbaacaaabccabbbacaabaacbbbbccabbaaccabbbbbbcbaacbbccbcbcbababaaccbacccbbcabbbaaacbccbcbccaabccababbbbacabacacaccaaacbcbaaaacbcbcaabbbbcacbabaacccacbcccbbcbaccbaacccabcbbbaabaccbaaabccacacaacbaabbcaacaabbbaabaccacbcbbcccbacccaaaccacacbccacabbccaabccacacacbccaaaacbabbcbcaaaaabbaacbcbbaabaabbccbbaaaabcbacabbbbcbbccacbcacabbbcbabcacababababaccbbacccaaccaccbacbbabbacbabaaacaabcbaaaabcccbbacaaaacbbccbbbbbcaabacbcaccbabccbbcacbbccbbabacbccaabbbaabacbabccabbbbcccabaabccbccccabbccbcaabbaabccbcaacbcbbbbbabaccaaacbbaabccbccbaccaabcacaaacbbabaababababcccababcacaabcbacbabcacababbbbccabbbcacbcbaabbbbbbacaaaacaccabbbbaacccacbcaacbcbbccbacbcacbaccbacabcbaacabbacbcccbccbcbbcbbbaaabacbaacbbaababbaaabbbbbbcbbabbbcbccacbcbaaccbcbccaacabcaccbabcaacbacabaababacbcaabcbbabcbbaabbbccbabcbaccbacbbbcbabbbabbbccaacabccaaaaaccabaabbbaababaccaacbbacccbccacbaccaacbcbaaacaccabccabccacccbcaaacaaaccacbaccccbacaaaaaabcaaacbbaabbbccbcbccbbacbbbbaabaabbacabccabcbaacaccbbcccbcbbccbacabbbcbcbbaccacbabcccaccabbcbbaccaaccabbccccaacacaacaccbabbbcabaaabcbacaacaacbaacaacabbabcbcbbcbbccbabbabccbbbbababccaaaacbaabacbbccabacbbaaaacbaacbbbaacaaabacabbbabaaaaaabbabbacabcbcacbbabcbabbacaaacccbabbcaaaacabaccacaaaaacaccaacccbccbaccabcccccacabbcacaccacacabababababaccbbaaaaccabcbbaabbcababacaabcaaacacbcbcaccabbbcabaccbbabaababcaccacacbbcaaccacbbccbaabcbcabcaabcbabcaacbabaaacaabacbcabbccbbcabaabbbbbabcaaaaabbbcabacbbababacbbcacbcbbcccccaaabcacabacccaaabcacaccacabaacacaaacababacabaccbbabcaabcbacbbabcbaacccbcbccccaacabcbababccabaacaaabaaacabcacabbaaaaaccaabacaccababaaaaaabbcbbcbcaccccaabcbbabccbbaccbaaaababcaabcacbccaaaccbacbabbcabbbbbababcccaccabaccbcaacbaccbcbccbbabbacaccbbbcbaaccaacccaaaabaabbbcbbbcaccccbbccbabccabbbabbcbbbaabccabacbaacaacccaacbbbbacbcaabaaaaccbacbbcbaabbccacbbbcbacbabbacccaacacccbbbaabbccbbbaccbaaabacbbbcbbbbbacbbbbaacaaccccbabaabcaabcacabaabbaaacababbacbccbbabbabbbabbbbabacaaabbbbbccccbabacabaacccbabaabbbababbabcabcbbabcbcbbcbcbcaaabbaaccabbbacacaacccccbbcbbcbabbbcbccbacccbaccabacbcabbbbbacccaacbbabcababaabbabcccabcbaccccbabaaaaaaacbcabbbababbcbcbccbbcaaccbcabbbabaabaacaccbbcccbccaaaacacbccbbbcbaaaaccaaaaaabbccaccaabbcbbaababcabbbccccbabcabacbacababbacbccacbabaabcccbcbbccaccbabacbbccbbcaacacaabcaacbaacbaacabbaccaaabbabaacaccaaccacbacbbaaabbaabccabbbbbabbbcabacbacbbaacabbbaacbbabcaccaaaabbaccababbbacbaccccccababcccacbbbaabbabbccccccbccbbaacccaaaabbacacccbccabbbcccbcaacbabbaaacaaacbcacaccbababbbbccbcacbacccbaabcacbbbaccbbbcbccbcaccaabcabaaabcbcabbccacaaabbcbccbaabbaaacacbcaacccbcbcbacabcbbaacbaaaabcbbcacbbabcabbabbcaaaababcbaabcccbbbcabbccbabcbbcaaabcaaacbcbbcabbbcbaacacabacaaabccacabaccaccacbaabcbcbbcccacaabbcaccbacbaaaacbacccbacbccacbabbbbabccbbcbaccbbacaccaccacbaabbcacaaabbaaacaabaacababaaabacbabcbacaacabbcacbbbcaacccbabaabcbbcacacbaabcacbbbaabbababababcbbbbccbabcacacaaacabcabcbcbacbcaaccacbcbcaabacabcbaaacbbbbbaccbccaaaabacccbbcccabaaacbcbaaccacabccacccccabcacacabbbabcaaaabcbbacaabacaaccacaacbaababbaacacbaacaccabbaabcbaabbccbccbbcbcbbaabbabbbbbcacaabaaabcbbcccbbcabcbbbcbacbaaccbbacbabccbccacabaaacccacbbaccbaacaabccaccacbacaabcbbcbbacabaaacacaccaabcccabaccbacabbbaacbaaccacbababbaaaabaacabacaacbbabcaabaccbcbbbbabcbbaaaaaabccbaccacbacbcaaabcccbbbbcabccbabaccbabacbcabbbbbacbcbaaaabbbabcaaacacccabbabbbbbcaccacbaccccbbacaabcabaaaccaccbccaaaabbababbbababacbabcabaabaabcbccccaaabbccaabacaabbbcccbabccbaabacbbbaaabacabcbbcaabbabbcbaacccbcbbcabacbabccbcccccccbbaaaaababbacaaacbcaacabccbaabaaabcbcccabaaccbabbaaccaabbcacabbabccaaabbcbcccccacbaaaabaaacbbaaacaabcabbaccbcacbabcabcccbbbaaaabbcbacabcccccabcbcacbccacbaaccbaacaccabcbbcaaaabccccaaaaaabacccacabbbcbbcabccacbabaababcabcbaaabbcbaaaccbaabaaabcbbaabbcbaccabbbccacbbbacabaaabaaaccacaacbacbcbbaabcaabbbcbabcbbbbcbabbaccbbbbbccabaacbacacccbacabacbccbcaccabbbccccaabbaaacbaabacbbaaacabbbcabbbaccaacacacaaaaabbcaaabcaaabbccbabccaabbcbbcaaccbccbcbbbbababcabaabbacacaccbbacaccccccaccbbbcabbabacbbbccabbaaababcbcaacacbbabbccaacaabbaaaccaabcbbacabbababacacbccacbacbbabbacaabcbcabbaacbbbbcbcaabacacabbabcccaacbcabccbbbbcaccccacccacaccaaaacbbaaaacabaaaaaacabccaaacaaaabaacbaacbbbaabaacaabaacaaacbbaaacacbacbbabaacbbaccbacbccabaaacaacaaabcbccccabcacacbcbbbcbbbaabacaccccaccabacacabbbcbccbacaaacacacbaaabaacababacacaccbbaabaccccbcacbabbcaccbccacbcccbcacbbbaccabbbbcbbbacccbaaacbccccbaccbabaabaacbcbbbaabacbbcbbbcbabbabcabccabcbbaabcbbacabbabbacabbccbbbbaccbabbccbbaabcbbccccabaaaccccbcaaaacccaacacbbcbbbaaaaacaaaaabbacabbccbabbccbaababbbacbbacbaaaacccaababcaccabaccaaacccbaabacbacbbbcbbbcbbccbcacaabaccaacbbccbccbabacacbbbbcacbaacccbccaabcabccbacccabbbcaacaabccacccacacaacbbbaccacccbbcbacabababcbabacacbabbccaacabcbbabbaaacbacbcacbbbbbcacbcacaabbabcbbcabaaccabaaacacabbbbcbbccabbbacacaaaccaabbbcbbacaabbbaccbcacabbabccbaabbcbabbbbcbbaabcabcbaccbbccabbbacabccccbbcbbbbaacaaaabaabccbcbbbcaacccabcbcbccaaaabaccbaaaacabbcacbcaabcacccccbcccaababbaabaaacabbaacbcbbbcababcbbcbbcbbccccabaaabccccccaabbbcacccbbcbbbbbbcbbbbabaccccbbacabbcbaaabbbbababaabbbcbabaacbcbabbaababaaaaabccaaabcaccccabcaccbaacccccaabcbcccaacabbbabaccacccabacbcbacaabccacaabbacccaccbaaacacbbacccbbccbccabaabbacccbacacaccabcabbbabcaaccabcacccaacbabcabbbcbbcbacbbcbccccccbabbbaccbaaabacabbcaacbcaacbcbcacbbcbaccaccaaccbaabaacacaccccbabcabbaabbbacbcbbabbabbcabbcbcabcbacacbbcaacccabaacaacbbcaabbbbbaccababacccabcaabaaaacbbacbcccabcabccaaabccaacacbaacacaacbccaaababbcbcbcbcacacaabacbbbccbaacaacccccbbbccabcbacababbbcbcbcbccbbacbcccaaacaabaabccaababbbaccbbcbaabaabbbacbacaaccbacaabbacaccbbcbcaabcaaabaaaacaccbaccbbaccbabcbaccababccbacbcaaacbcbcabccbcbccbcccbabbcbaaaccbabcbbccbcbccccbbcccaabbbaaacbccaaacccccbcabaabaccbcbbabbccaababbbbaccbacbcbbcababbbcbccbcaabbabbababcccaaccacbacaacbabcbbcabccaabbcbaccabbabcaccaacccaaaabbabacbaabaabcbacaacbbbaabbababbaacbbcbabcaccbbacabcaaabaccccaaaccbacccbccccaaabbabacaacacabcaabcbccccbaacbbbcbcaaacbccccabbbbabbcbccaabbaabaaacaccbcacabcabbaaacacbacabbababaaacbabcccbabaaabaacacaabacbcccbaccaabaccbaacbbbccbcbcbcccbcacbbccbacaaaaabbbaaaaccabacbabbabcaaaabbcbcacabcacbbabacbbbbcbacabbcbbcabccabacccaccbccbabcbcbabbcaaacabcbaacacacbaaacababbbcbaccaabaccbccababccbabacccbccabababcbbabaaaabaacabbbcbbbacbccaaccbbbcaaacccbacbabcacbaacaccabaabbcbcccbbccbba", (==) 25432585)
    ]
