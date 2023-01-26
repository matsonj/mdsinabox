import pandas as pd

def model(dbt, sess):
    nba_elo_latest = pd.read_csv("https://projects.fivethirtyeight.com/nba-model/nba_elo_latest.csv")
    nba_elo_latest["game_id"] = range(len(nba_elo_latest))
    return nba_elo_latest