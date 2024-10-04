module SumTypes where
    help = putStrLn "-- Module SumTypes"

    data Direction = North | East | South | West
    data EmailState = Draft | Sent
    data ContactMethod = Email String | Text String | Mail String String String Int

    confirmContact :: ContactMethod -> String
    confirmContact contact =
        case contact of
            Email address -> "I'll email you at " <> address <> "."
            Text number -> "I'll text you at " <> number <> "."
            Mail addressLine1 addressLine2 cityAndState zip -> "I'll send a letter to your address at "
                <> addressLine1
                <> " "
                <> addressLine2
                <> " "
                <> cityAndState
                <> " "
                <> show zip
                <> "."


    confirmContact2 :: ContactMethod -> String
    confirmContact2 contact =
        case contact of
            Email address -> "I'll email you at " <> address <> "."
            Text number -> "I'll text you at " <> number <> "."
            Mail _addressLine1 _addressLine2 cityAndState _zip -> "I'll send a letter to your address in " <> cityAndState
