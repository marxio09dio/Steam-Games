# Steam Store Games
## _What makes a game succeed in the Steam Store_

The goal of this project is to provide insights on the state of the Steam Store for a game developer to make informed decisions about what type of game they should create.


- Aggregated data sources:
  - App IDs: https://api.steampowered.com/ISteamApps/GetAppList/v2/
  - Game Data: https://store.steampowered.com/api/appdetails/?appids=

The APPs on the final dataset are: 
- Games present up to the date the data was fetched (07/06/2023)
- Prices are in Euros, conversation rate used was the on 17/06/2023
- Promotion Prices are also as of the same day
- App that has "Game" category
- Games with no name and released date were removed
- Games with unknown release date were removed

## Methodogy

- Apps IDs were obtained, then used to get the relevant details from the Steam Store
- Data extracted cleaned and reorganized using Pandas and with VBA
- Exploratory Analyses performed to assist in Data Visualisation
- Dashboard Creation


## Tech Used

[![Python](https://user-images.githubusercontent.com/38763806/216325053-262b3623-2808-465d-b35b-37794be0d0e0.png)](https://www.python.org/) 

[![Pandas](https://user-images.githubusercontent.com/38763806/216390784-3a7a6275-c795-466f-aedd-a4d61be21d96.png)](https://pandas.pydata.org/)

[![Numpy](https://user-images.githubusercontent.com/38763806/216393011-b7879e35-c4ab-45ca-bb13-4330ba297c5d.png)](https://numpy.org/)

[![Seaborn](https://user-images.githubusercontent.com/38763806/216393329-01b8588e-238c-4f7b-83ce-5741f766e889.png)](https://seaborn.pydata.org/)

[![Matplotlib](https://user-images.githubusercontent.com/38763806/216395946-bcf5ef6e-0524-44b2-8a41-6eb47920501a.png)](https://matplotlib.org/)

[![Microsoft Excel](https://user-images.githubusercontent.com/38763806/216391933-98c1e138-27dc-4d61-89cb-fb25ba0a5e04.png)](https://www.microsoft.com/microsoft-365/excel)

[![Power BI](https://user-images.githubusercontent.com/38763806/216396186-e882a672-6296-48a5-a168-13f4c1dcb082.png)](https://powerbi.microsoft.com/)
