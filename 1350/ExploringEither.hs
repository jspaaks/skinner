module ExploringEither where
    handleMissingRight :: Either String (Maybe a) -> Either String a
    handleMissingRight e = case e of
        Left someErr     -> Left someErr
        Right (Just val) -> Right val
        Right Nothing    -> Left "Missing value"

