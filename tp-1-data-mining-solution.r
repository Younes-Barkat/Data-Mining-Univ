{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "c0991199",
   "metadata": {
    "_cell_guid": "b1076dfc-b9ad-4769-8c92-a6c4dae69d19",
    "_uuid": "8f2839f25d086af736a60e9eeb907d3b93b6e0e5",
    "execution": {
     "iopub.execute_input": "2026-02-25T21:10:53.868972Z",
     "iopub.status.busy": "2026-02-25T21:10:53.866540Z",
     "iopub.status.idle": "2026-02-25T21:11:08.960963Z",
     "shell.execute_reply": "2026-02-25T21:11:08.959003Z"
    },
    "papermill": {
     "duration": 15.104237,
     "end_time": "2026-02-25T21:11:08.964088",
     "exception": false,
     "start_time": "2026-02-25T21:10:53.859851",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "system(\"pip install gdown\")\n",
    "file_id <- \"1ja6Jb_IEPz_CTRy1bQueXAgY1dd5vgCh\"\n",
    "system(paste0(\"gdown --id \", file_id, \" -O dataset_2008.csv\"))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "a323e726",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:11:09.004711Z",
     "iopub.status.busy": "2026-02-25T21:11:08.973525Z",
     "iopub.status.idle": "2026-02-25T21:12:04.965719Z",
     "shell.execute_reply": "2026-02-25T21:12:04.963957Z"
    },
    "papermill": {
     "duration": 56.000727,
     "end_time": "2026-02-25T21:12:04.968706",
     "exception": false,
     "start_time": "2026-02-25T21:11:08.967979",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "myDf <- read.csv(\"dataset_2008.csv\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "22efac39",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:12:04.980476Z",
     "iopub.status.busy": "2026-02-25T21:12:04.978886Z",
     "iopub.status.idle": "2026-02-25T21:12:05.022327Z",
     "shell.execute_reply": "2026-02-25T21:12:05.020518Z"
    },
    "papermill": {
     "duration": 0.051446,
     "end_time": "2026-02-25T21:12:05.024798",
     "exception": false,
     "start_time": "2026-02-25T21:12:04.973352",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 29</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Year</th><th scope=col>Month</th><th scope=col>DayofMonth</th><th scope=col>DayOfWeek</th><th scope=col>DepTime</th><th scope=col>CRSDepTime</th><th scope=col>ArrTime</th><th scope=col>CRSArrTime</th><th scope=col>UniqueCarrier</th><th scope=col>FlightNum</th><th scope=col>⋯</th><th scope=col>TaxiIn</th><th scope=col>TaxiOut</th><th scope=col>Cancelled</th><th scope=col>CancellationCode</th><th scope=col>Diverted</th><th scope=col>CarrierDelay</th><th scope=col>WeatherDelay</th><th scope=col>NASDelay</th><th scope=col>SecurityDelay</th><th scope=col>LateAircraftDelay</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>⋯</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>2008</td><td>1</td><td>3</td><td>4</td><td>2003</td><td>1955</td><td>2211</td><td>2225</td><td>WN</td><td> 335</td><td>⋯</td><td>4</td><td> 8</td><td>0</td><td></td><td>0</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>2008</td><td>1</td><td>3</td><td>4</td><td> 754</td><td> 735</td><td>1002</td><td>1000</td><td>WN</td><td>3231</td><td>⋯</td><td>5</td><td>10</td><td>0</td><td></td><td>0</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>2008</td><td>1</td><td>3</td><td>4</td><td> 628</td><td> 620</td><td> 804</td><td> 750</td><td>WN</td><td> 448</td><td>⋯</td><td>3</td><td>17</td><td>0</td><td></td><td>0</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2008</td><td>1</td><td>3</td><td>4</td><td> 926</td><td> 930</td><td>1054</td><td>1100</td><td>WN</td><td>1746</td><td>⋯</td><td>3</td><td> 7</td><td>0</td><td></td><td>0</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2008</td><td>1</td><td>3</td><td>4</td><td>1829</td><td>1755</td><td>1959</td><td>1925</td><td>WN</td><td>3920</td><td>⋯</td><td>3</td><td>10</td><td>0</td><td></td><td>0</td><td> 2</td><td> 0</td><td> 0</td><td> 0</td><td>32</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>2008</td><td>1</td><td>3</td><td>4</td><td>1940</td><td>1915</td><td>2121</td><td>2110</td><td>WN</td><td> 378</td><td>⋯</td><td>4</td><td>10</td><td>0</td><td></td><td>0</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 29\n",
       "\\begin{tabular}{r|lllllllllllllllllllll}\n",
       "  & Year & Month & DayofMonth & DayOfWeek & DepTime & CRSDepTime & ArrTime & CRSArrTime & UniqueCarrier & FlightNum & ⋯ & TaxiIn & TaxiOut & Cancelled & CancellationCode & Diverted & CarrierDelay & WeatherDelay & NASDelay & SecurityDelay & LateAircraftDelay\\\\\n",
       "  & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <chr> & <int> & ⋯ & <int> & <int> & <int> & <chr> & <int> & <int> & <int> & <int> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & 2008 & 1 & 3 & 4 & 2003 & 1955 & 2211 & 2225 & WN &  335 & ⋯ & 4 &  8 & 0 &  & 0 & NA & NA & NA & NA & NA\\\\\n",
       "\t2 & 2008 & 1 & 3 & 4 &  754 &  735 & 1002 & 1000 & WN & 3231 & ⋯ & 5 & 10 & 0 &  & 0 & NA & NA & NA & NA & NA\\\\\n",
       "\t3 & 2008 & 1 & 3 & 4 &  628 &  620 &  804 &  750 & WN &  448 & ⋯ & 3 & 17 & 0 &  & 0 & NA & NA & NA & NA & NA\\\\\n",
       "\t4 & 2008 & 1 & 3 & 4 &  926 &  930 & 1054 & 1100 & WN & 1746 & ⋯ & 3 &  7 & 0 &  & 0 & NA & NA & NA & NA & NA\\\\\n",
       "\t5 & 2008 & 1 & 3 & 4 & 1829 & 1755 & 1959 & 1925 & WN & 3920 & ⋯ & 3 & 10 & 0 &  & 0 &  2 &  0 &  0 &  0 & 32\\\\\n",
       "\t6 & 2008 & 1 & 3 & 4 & 1940 & 1915 & 2121 & 2110 & WN &  378 & ⋯ & 4 & 10 & 0 &  & 0 & NA & NA & NA & NA & NA\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 29\n",
       "\n",
       "| <!--/--> | Year &lt;int&gt; | Month &lt;int&gt; | DayofMonth &lt;int&gt; | DayOfWeek &lt;int&gt; | DepTime &lt;int&gt; | CRSDepTime &lt;int&gt; | ArrTime &lt;int&gt; | CRSArrTime &lt;int&gt; | UniqueCarrier &lt;chr&gt; | FlightNum &lt;int&gt; | ⋯ ⋯ | TaxiIn &lt;int&gt; | TaxiOut &lt;int&gt; | Cancelled &lt;int&gt; | CancellationCode &lt;chr&gt; | Diverted &lt;int&gt; | CarrierDelay &lt;int&gt; | WeatherDelay &lt;int&gt; | NASDelay &lt;int&gt; | SecurityDelay &lt;int&gt; | LateAircraftDelay &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | 2008 | 1 | 3 | 4 | 2003 | 1955 | 2211 | 2225 | WN |  335 | ⋯ | 4 |  8 | 0 | <!----> | 0 | NA | NA | NA | NA | NA |\n",
       "| 2 | 2008 | 1 | 3 | 4 |  754 |  735 | 1002 | 1000 | WN | 3231 | ⋯ | 5 | 10 | 0 | <!----> | 0 | NA | NA | NA | NA | NA |\n",
       "| 3 | 2008 | 1 | 3 | 4 |  628 |  620 |  804 |  750 | WN |  448 | ⋯ | 3 | 17 | 0 | <!----> | 0 | NA | NA | NA | NA | NA |\n",
       "| 4 | 2008 | 1 | 3 | 4 |  926 |  930 | 1054 | 1100 | WN | 1746 | ⋯ | 3 |  7 | 0 | <!----> | 0 | NA | NA | NA | NA | NA |\n",
       "| 5 | 2008 | 1 | 3 | 4 | 1829 | 1755 | 1959 | 1925 | WN | 3920 | ⋯ | 3 | 10 | 0 | <!----> | 0 |  2 |  0 |  0 |  0 | 32 |\n",
       "| 6 | 2008 | 1 | 3 | 4 | 1940 | 1915 | 2121 | 2110 | WN |  378 | ⋯ | 4 | 10 | 0 | <!----> | 0 | NA | NA | NA | NA | NA |\n",
       "\n"
      ],
      "text/plain": [
       "  Year Month DayofMonth DayOfWeek DepTime CRSDepTime ArrTime CRSArrTime\n",
       "1 2008 1     3          4         2003    1955       2211    2225      \n",
       "2 2008 1     3          4          754     735       1002    1000      \n",
       "3 2008 1     3          4          628     620        804     750      \n",
       "4 2008 1     3          4          926     930       1054    1100      \n",
       "5 2008 1     3          4         1829    1755       1959    1925      \n",
       "6 2008 1     3          4         1940    1915       2121    2110      \n",
       "  UniqueCarrier FlightNum ⋯ TaxiIn TaxiOut Cancelled CancellationCode Diverted\n",
       "1 WN             335      ⋯ 4       8      0                          0       \n",
       "2 WN            3231      ⋯ 5      10      0                          0       \n",
       "3 WN             448      ⋯ 3      17      0                          0       \n",
       "4 WN            1746      ⋯ 3       7      0                          0       \n",
       "5 WN            3920      ⋯ 3      10      0                          0       \n",
       "6 WN             378      ⋯ 4      10      0                          0       \n",
       "  CarrierDelay WeatherDelay NASDelay SecurityDelay LateAircraftDelay\n",
       "1 NA           NA           NA       NA            NA               \n",
       "2 NA           NA           NA       NA            NA               \n",
       "3 NA           NA           NA       NA            NA               \n",
       "4 NA           NA           NA       NA            NA               \n",
       "5  2            0            0        0            32               \n",
       "6 NA           NA           NA       NA            NA               "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(myDf)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "30ee464a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:12:05.036139Z",
     "iopub.status.busy": "2026-02-25T21:12:05.034561Z",
     "iopub.status.idle": "2026-02-25T21:12:05.051432Z",
     "shell.execute_reply": "2026-02-25T21:12:05.049693Z"
    },
    "papermill": {
     "duration": 0.02512,
     "end_time": "2026-02-25T21:12:05.053939",
     "exception": false,
     "start_time": "2026-02-25T21:12:05.028819",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'IAD'</li><li>'IAD'</li><li>'IND'</li><li>'IND'</li><li>'IND'</li><li>'IND'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'IAD'\n",
       "\\item 'IAD'\n",
       "\\item 'IND'\n",
       "\\item 'IND'\n",
       "\\item 'IND'\n",
       "\\item 'IND'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'IAD'\n",
       "2. 'IAD'\n",
       "3. 'IND'\n",
       "4. 'IND'\n",
       "5. 'IND'\n",
       "6. 'IND'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"IAD\" \"IAD\" \"IND\" \"IND\" \"IND\" \"IND\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    " head(myDf$Origin)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "d40f7182",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:12:05.065757Z",
     "iopub.status.busy": "2026-02-25T21:12:05.064092Z",
     "iopub.status.idle": "2026-02-25T21:12:05.081195Z",
     "shell.execute_reply": "2026-02-25T21:12:05.079428Z"
    },
    "papermill": {
     "duration": 0.025391,
     "end_time": "2026-02-25T21:12:05.083509",
     "exception": false,
     "start_time": "2026-02-25T21:12:05.058118",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'SAV'</li><li>'ATL'</li><li>'ATL'</li><li>'PBI'</li><li>'IAD'</li><li>'SAT'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'SAV'\n",
       "\\item 'ATL'\n",
       "\\item 'ATL'\n",
       "\\item 'PBI'\n",
       "\\item 'IAD'\n",
       "\\item 'SAT'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'SAV'\n",
       "2. 'ATL'\n",
       "3. 'ATL'\n",
       "4. 'PBI'\n",
       "5. 'IAD'\n",
       "6. 'SAT'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"SAV\" \"ATL\" \"ATL\" \"PBI\" \"IAD\" \"SAT\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "tail(myDf$Origin)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "8aafce4a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:12:05.095746Z",
     "iopub.status.busy": "2026-02-25T21:12:05.094171Z",
     "iopub.status.idle": "2026-02-25T21:12:05.170555Z",
     "shell.execute_reply": "2026-02-25T21:12:05.168828Z"
    },
    "papermill": {
     "duration": 0.085292,
     "end_time": "2026-02-25T21:12:05.172989",
     "exception": false,
     "start_time": "2026-02-25T21:12:05.087697",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>FALSE</li><li>FALSE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li><li>TRUE</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item FALSE\n",
       "\\item FALSE\n",
       "\\item TRUE\n",
       "\\item TRUE\n",
       "\\item TRUE\n",
       "\\item TRUE\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. FALSE\n",
       "2. FALSE\n",
       "3. TRUE\n",
       "4. TRUE\n",
       "5. TRUE\n",
       "6. TRUE\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] FALSE FALSE  TRUE  TRUE  TRUE  TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(myDf$Origin==\"IND\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "428ba9d2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:12:05.185337Z",
     "iopub.status.busy": "2026-02-25T21:12:05.183736Z",
     "iopub.status.idle": "2026-02-25T21:12:05.265803Z",
     "shell.execute_reply": "2026-02-25T21:12:05.264054Z"
    },
    "papermill": {
     "duration": 0.090802,
     "end_time": "2026-02-25T21:12:05.268263",
     "exception": false,
     "start_time": "2026-02-25T21:12:05.177461",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "42750"
      ],
      "text/latex": [
       "42750"
      ],
      "text/markdown": [
       "42750"
      ],
      "text/plain": [
       "[1] 42750"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sum(myDf$Origin==\"IND\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "693c90e7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:12:05.280948Z",
     "iopub.status.busy": "2026-02-25T21:12:05.279368Z",
     "iopub.status.idle": "2026-02-25T21:12:05.363033Z",
     "shell.execute_reply": "2026-02-25T21:12:05.361204Z"
    },
    "papermill": {
     "duration": 0.092723,
     "end_time": "2026-02-25T21:12:05.365574",
     "exception": false,
     "start_time": "2026-02-25T21:12:05.272851",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "42732"
      ],
      "text/latex": [
       "42732"
      ],
      "text/markdown": [
       "42732"
      ],
      "text/plain": [
       "[1] 42732"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sum(myDf$Dest==\"IND\")\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "7cdf3992",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:12:05.433449Z",
     "iopub.status.busy": "2026-02-25T21:12:05.431895Z",
     "iopub.status.idle": "2026-02-25T21:12:05.514618Z",
     "shell.execute_reply": "2026-02-25T21:12:05.512952Z"
    },
    "papermill": {
     "duration": 0.146779,
     "end_time": "2026-02-25T21:12:05.516914",
     "exception": false,
     "start_time": "2026-02-25T21:12:05.370135",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "350380"
      ],
      "text/latex": [
       "350380"
      ],
      "text/markdown": [
       "350380"
      ],
      "text/plain": [
       "[1] 350380"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sum(myDf$Origin==\"ORD\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "3726b931",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:12:05.529831Z",
     "iopub.status.busy": "2026-02-25T21:12:05.528358Z",
     "iopub.status.idle": "2026-02-25T21:12:05.610723Z",
     "shell.execute_reply": "2026-02-25T21:12:05.609026Z"
    },
    "papermill": {
     "duration": 0.091412,
     "end_time": "2026-02-25T21:12:05.613190",
     "exception": false,
     "start_time": "2026-02-25T21:12:05.521778",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "350452"
      ],
      "text/latex": [
       "350452"
      ],
      "text/markdown": [
       "350452"
      ],
      "text/plain": [
       "[1] 350452"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sum(myDf$Dest==\"ORD\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "44d4131b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:12:05.626430Z",
     "iopub.status.busy": "2026-02-25T21:12:05.624900Z",
     "iopub.status.idle": "2026-02-25T21:12:05.795560Z",
     "shell.execute_reply": "2026-02-25T21:12:05.793927Z"
    },
    "papermill": {
     "duration": 0.179687,
     "end_time": "2026-02-25T21:12:05.797909",
     "exception": false,
     "start_time": "2026-02-25T21:12:05.618222",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "4102"
      ],
      "text/latex": [
       "4102"
      ],
      "text/markdown": [
       "4102"
      ],
      "text/plain": [
       "[1] 4102"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sum(myDf$Origin==\"IND\" & myDf$Dest==\"ORD\")\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "e53abf17",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:12:05.811359Z",
     "iopub.status.busy": "2026-02-25T21:12:05.809814Z",
     "iopub.status.idle": "2026-02-25T21:12:06.411629Z",
     "shell.execute_reply": "2026-02-25T21:12:06.409906Z"
    },
    "papermill": {
     "duration": 0.611193,
     "end_time": "2026-02-25T21:12:06.414015",
     "exception": false,
     "start_time": "2026-02-25T21:12:05.802822",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "myIndyOrigins<-subset(myDf,myDf$Origin==\"IND\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "0330a4fa",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:12:06.427124Z",
     "iopub.status.busy": "2026-02-25T21:12:06.425585Z",
     "iopub.status.idle": "2026-02-25T21:12:06.842092Z",
     "shell.execute_reply": "2026-02-25T21:12:06.840300Z"
    },
    "papermill": {
     "duration": 0.42588,
     "end_time": "2026-02-25T21:12:06.844746",
     "exception": false,
     "start_time": "2026-02-25T21:12:06.418866",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 29</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Year</th><th scope=col>Month</th><th scope=col>DayofMonth</th><th scope=col>DayOfWeek</th><th scope=col>DepTime</th><th scope=col>CRSDepTime</th><th scope=col>ArrTime</th><th scope=col>CRSArrTime</th><th scope=col>UniqueCarrier</th><th scope=col>FlightNum</th><th scope=col>⋯</th><th scope=col>TaxiIn</th><th scope=col>TaxiOut</th><th scope=col>Cancelled</th><th scope=col>CancellationCode</th><th scope=col>Diverted</th><th scope=col>CarrierDelay</th><th scope=col>WeatherDelay</th><th scope=col>NASDelay</th><th scope=col>SecurityDelay</th><th scope=col>LateAircraftDelay</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>⋯</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>3</th><td>2008</td><td>1</td><td>3</td><td>4</td><td> 628</td><td> 620</td><td> 804</td><td> 750</td><td>WN</td><td> 448</td><td>⋯</td><td>3</td><td>17</td><td>0</td><td></td><td>0</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2008</td><td>1</td><td>3</td><td>4</td><td> 926</td><td> 930</td><td>1054</td><td>1100</td><td>WN</td><td>1746</td><td>⋯</td><td>3</td><td> 7</td><td>0</td><td></td><td>0</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>2008</td><td>1</td><td>3</td><td>4</td><td>1829</td><td>1755</td><td>1959</td><td>1925</td><td>WN</td><td>3920</td><td>⋯</td><td>3</td><td>10</td><td>0</td><td></td><td>0</td><td> 2</td><td> 0</td><td> 0</td><td> 0</td><td>32</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>2008</td><td>1</td><td>3</td><td>4</td><td>1940</td><td>1915</td><td>2121</td><td>2110</td><td>WN</td><td> 378</td><td>⋯</td><td>4</td><td>10</td><td>0</td><td></td><td>0</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr>\n",
       "\t<tr><th scope=row>7</th><td>2008</td><td>1</td><td>3</td><td>4</td><td>1937</td><td>1830</td><td>2037</td><td>1940</td><td>WN</td><td> 509</td><td>⋯</td><td>3</td><td> 7</td><td>0</td><td></td><td>0</td><td>10</td><td> 0</td><td> 0</td><td> 0</td><td>47</td></tr>\n",
       "\t<tr><th scope=row>8</th><td>2008</td><td>1</td><td>3</td><td>4</td><td>1039</td><td>1040</td><td>1132</td><td>1150</td><td>WN</td><td> 535</td><td>⋯</td><td>7</td><td> 7</td><td>0</td><td></td><td>0</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 29\n",
       "\\begin{tabular}{r|lllllllllllllllllllll}\n",
       "  & Year & Month & DayofMonth & DayOfWeek & DepTime & CRSDepTime & ArrTime & CRSArrTime & UniqueCarrier & FlightNum & ⋯ & TaxiIn & TaxiOut & Cancelled & CancellationCode & Diverted & CarrierDelay & WeatherDelay & NASDelay & SecurityDelay & LateAircraftDelay\\\\\n",
       "  & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <chr> & <int> & ⋯ & <int> & <int> & <int> & <chr> & <int> & <int> & <int> & <int> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t3 & 2008 & 1 & 3 & 4 &  628 &  620 &  804 &  750 & WN &  448 & ⋯ & 3 & 17 & 0 &  & 0 & NA & NA & NA & NA & NA\\\\\n",
       "\t4 & 2008 & 1 & 3 & 4 &  926 &  930 & 1054 & 1100 & WN & 1746 & ⋯ & 3 &  7 & 0 &  & 0 & NA & NA & NA & NA & NA\\\\\n",
       "\t5 & 2008 & 1 & 3 & 4 & 1829 & 1755 & 1959 & 1925 & WN & 3920 & ⋯ & 3 & 10 & 0 &  & 0 &  2 &  0 &  0 &  0 & 32\\\\\n",
       "\t6 & 2008 & 1 & 3 & 4 & 1940 & 1915 & 2121 & 2110 & WN &  378 & ⋯ & 4 & 10 & 0 &  & 0 & NA & NA & NA & NA & NA\\\\\n",
       "\t7 & 2008 & 1 & 3 & 4 & 1937 & 1830 & 2037 & 1940 & WN &  509 & ⋯ & 3 &  7 & 0 &  & 0 & 10 &  0 &  0 &  0 & 47\\\\\n",
       "\t8 & 2008 & 1 & 3 & 4 & 1039 & 1040 & 1132 & 1150 & WN &  535 & ⋯ & 7 &  7 & 0 &  & 0 & NA & NA & NA & NA & NA\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 29\n",
       "\n",
       "| <!--/--> | Year &lt;int&gt; | Month &lt;int&gt; | DayofMonth &lt;int&gt; | DayOfWeek &lt;int&gt; | DepTime &lt;int&gt; | CRSDepTime &lt;int&gt; | ArrTime &lt;int&gt; | CRSArrTime &lt;int&gt; | UniqueCarrier &lt;chr&gt; | FlightNum &lt;int&gt; | ⋯ ⋯ | TaxiIn &lt;int&gt; | TaxiOut &lt;int&gt; | Cancelled &lt;int&gt; | CancellationCode &lt;chr&gt; | Diverted &lt;int&gt; | CarrierDelay &lt;int&gt; | WeatherDelay &lt;int&gt; | NASDelay &lt;int&gt; | SecurityDelay &lt;int&gt; | LateAircraftDelay &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 3 | 2008 | 1 | 3 | 4 |  628 |  620 |  804 |  750 | WN |  448 | ⋯ | 3 | 17 | 0 | <!----> | 0 | NA | NA | NA | NA | NA |\n",
       "| 4 | 2008 | 1 | 3 | 4 |  926 |  930 | 1054 | 1100 | WN | 1746 | ⋯ | 3 |  7 | 0 | <!----> | 0 | NA | NA | NA | NA | NA |\n",
       "| 5 | 2008 | 1 | 3 | 4 | 1829 | 1755 | 1959 | 1925 | WN | 3920 | ⋯ | 3 | 10 | 0 | <!----> | 0 |  2 |  0 |  0 |  0 | 32 |\n",
       "| 6 | 2008 | 1 | 3 | 4 | 1940 | 1915 | 2121 | 2110 | WN |  378 | ⋯ | 4 | 10 | 0 | <!----> | 0 | NA | NA | NA | NA | NA |\n",
       "| 7 | 2008 | 1 | 3 | 4 | 1937 | 1830 | 2037 | 1940 | WN |  509 | ⋯ | 3 |  7 | 0 | <!----> | 0 | 10 |  0 |  0 |  0 | 47 |\n",
       "| 8 | 2008 | 1 | 3 | 4 | 1039 | 1040 | 1132 | 1150 | WN |  535 | ⋯ | 7 |  7 | 0 | <!----> | 0 | NA | NA | NA | NA | NA |\n",
       "\n"
      ],
      "text/plain": [
       "  Year Month DayofMonth DayOfWeek DepTime CRSDepTime ArrTime CRSArrTime\n",
       "3 2008 1     3          4          628     620        804     750      \n",
       "4 2008 1     3          4          926     930       1054    1100      \n",
       "5 2008 1     3          4         1829    1755       1959    1925      \n",
       "6 2008 1     3          4         1940    1915       2121    2110      \n",
       "7 2008 1     3          4         1937    1830       2037    1940      \n",
       "8 2008 1     3          4         1039    1040       1132    1150      \n",
       "  UniqueCarrier FlightNum ⋯ TaxiIn TaxiOut Cancelled CancellationCode Diverted\n",
       "3 WN             448      ⋯ 3      17      0                          0       \n",
       "4 WN            1746      ⋯ 3       7      0                          0       \n",
       "5 WN            3920      ⋯ 3      10      0                          0       \n",
       "6 WN             378      ⋯ 4      10      0                          0       \n",
       "7 WN             509      ⋯ 3       7      0                          0       \n",
       "8 WN             535      ⋯ 7       7      0                          0       \n",
       "  CarrierDelay WeatherDelay NASDelay SecurityDelay LateAircraftDelay\n",
       "3 NA           NA           NA       NA            NA               \n",
       "4 NA           NA           NA       NA            NA               \n",
       "5  2            0            0        0            32               \n",
       "6 NA           NA           NA       NA            NA               \n",
       "7 10            0            0        0            47               \n",
       "8 NA           NA           NA       NA            NA               "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 29</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Year</th><th scope=col>Month</th><th scope=col>DayofMonth</th><th scope=col>DayOfWeek</th><th scope=col>DepTime</th><th scope=col>CRSDepTime</th><th scope=col>ArrTime</th><th scope=col>CRSArrTime</th><th scope=col>UniqueCarrier</th><th scope=col>FlightNum</th><th scope=col>⋯</th><th scope=col>TaxiIn</th><th scope=col>TaxiOut</th><th scope=col>Cancelled</th><th scope=col>CancellationCode</th><th scope=col>Diverted</th><th scope=col>CarrierDelay</th><th scope=col>WeatherDelay</th><th scope=col>NASDelay</th><th scope=col>SecurityDelay</th><th scope=col>LateAircraftDelay</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>⋯</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>72</th><td>2008</td><td>1</td><td>3</td><td>4</td><td> 802</td><td> 750</td><td>1001</td><td> 955</td><td>WN</td><td>2272</td><td>⋯</td><td>7</td><td> 8</td><td>0</td><td></td><td>0</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td> NA</td></tr>\n",
       "\t<tr><th scope=row>136</th><td>2008</td><td>1</td><td>3</td><td>4</td><td>2255</td><td>1820</td><td> 509</td><td>  55</td><td>WN</td><td>1924</td><td>⋯</td><td>9</td><td> 9</td><td>0</td><td></td><td>0</td><td> 0</td><td> 0</td><td> 0</td><td> 8</td><td>246</td></tr>\n",
       "\t<tr><th scope=row>137</th><td>2008</td><td>1</td><td>3</td><td>4</td><td>1129</td><td>1050</td><td>1757</td><td>1725</td><td>WN</td><td>3920</td><td>⋯</td><td>8</td><td>21</td><td>0</td><td></td><td>0</td><td>32</td><td> 0</td><td> 0</td><td> 0</td><td>  0</td></tr>\n",
       "\t<tr><th scope=row>501</th><td>2008</td><td>1</td><td>3</td><td>4</td><td>1038</td><td>1010</td><td>1259</td><td>1230</td><td>WN</td><td>   4</td><td>⋯</td><td>8</td><td>10</td><td>0</td><td></td><td>0</td><td> 3</td><td> 0</td><td> 1</td><td> 0</td><td> 25</td></tr>\n",
       "\t<tr><th scope=row>502</th><td>2008</td><td>1</td><td>3</td><td>4</td><td>1920</td><td>1850</td><td>2140</td><td>2110</td><td>WN</td><td> 321</td><td>⋯</td><td>9</td><td>10</td><td>0</td><td></td><td>0</td><td>30</td><td> 0</td><td> 0</td><td> 0</td><td>  0</td></tr>\n",
       "\t<tr><th scope=row>605</th><td>2008</td><td>1</td><td>3</td><td>4</td><td>1139</td><td>1140</td><td>1401</td><td>1405</td><td>WN</td><td> 829</td><td>⋯</td><td>8</td><td>11</td><td>0</td><td></td><td>0</td><td>NA</td><td>NA</td><td>NA</td><td>NA</td><td> NA</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 29\n",
       "\\begin{tabular}{r|lllllllllllllllllllll}\n",
       "  & Year & Month & DayofMonth & DayOfWeek & DepTime & CRSDepTime & ArrTime & CRSArrTime & UniqueCarrier & FlightNum & ⋯ & TaxiIn & TaxiOut & Cancelled & CancellationCode & Diverted & CarrierDelay & WeatherDelay & NASDelay & SecurityDelay & LateAircraftDelay\\\\\n",
       "  & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <int> & <chr> & <int> & ⋯ & <int> & <int> & <int> & <chr> & <int> & <int> & <int> & <int> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t72 & 2008 & 1 & 3 & 4 &  802 &  750 & 1001 &  955 & WN & 2272 & ⋯ & 7 &  8 & 0 &  & 0 & NA & NA & NA & NA &  NA\\\\\n",
       "\t136 & 2008 & 1 & 3 & 4 & 2255 & 1820 &  509 &   55 & WN & 1924 & ⋯ & 9 &  9 & 0 &  & 0 &  0 &  0 &  0 &  8 & 246\\\\\n",
       "\t137 & 2008 & 1 & 3 & 4 & 1129 & 1050 & 1757 & 1725 & WN & 3920 & ⋯ & 8 & 21 & 0 &  & 0 & 32 &  0 &  0 &  0 &   0\\\\\n",
       "\t501 & 2008 & 1 & 3 & 4 & 1038 & 1010 & 1259 & 1230 & WN &    4 & ⋯ & 8 & 10 & 0 &  & 0 &  3 &  0 &  1 &  0 &  25\\\\\n",
       "\t502 & 2008 & 1 & 3 & 4 & 1920 & 1850 & 2140 & 2110 & WN &  321 & ⋯ & 9 & 10 & 0 &  & 0 & 30 &  0 &  0 &  0 &   0\\\\\n",
       "\t605 & 2008 & 1 & 3 & 4 & 1139 & 1140 & 1401 & 1405 & WN &  829 & ⋯ & 8 & 11 & 0 &  & 0 & NA & NA & NA & NA &  NA\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 29\n",
       "\n",
       "| <!--/--> | Year &lt;int&gt; | Month &lt;int&gt; | DayofMonth &lt;int&gt; | DayOfWeek &lt;int&gt; | DepTime &lt;int&gt; | CRSDepTime &lt;int&gt; | ArrTime &lt;int&gt; | CRSArrTime &lt;int&gt; | UniqueCarrier &lt;chr&gt; | FlightNum &lt;int&gt; | ⋯ ⋯ | TaxiIn &lt;int&gt; | TaxiOut &lt;int&gt; | Cancelled &lt;int&gt; | CancellationCode &lt;chr&gt; | Diverted &lt;int&gt; | CarrierDelay &lt;int&gt; | WeatherDelay &lt;int&gt; | NASDelay &lt;int&gt; | SecurityDelay &lt;int&gt; | LateAircraftDelay &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 72 | 2008 | 1 | 3 | 4 |  802 |  750 | 1001 |  955 | WN | 2272 | ⋯ | 7 |  8 | 0 | <!----> | 0 | NA | NA | NA | NA |  NA |\n",
       "| 136 | 2008 | 1 | 3 | 4 | 2255 | 1820 |  509 |   55 | WN | 1924 | ⋯ | 9 |  9 | 0 | <!----> | 0 |  0 |  0 |  0 |  8 | 246 |\n",
       "| 137 | 2008 | 1 | 3 | 4 | 1129 | 1050 | 1757 | 1725 | WN | 3920 | ⋯ | 8 | 21 | 0 | <!----> | 0 | 32 |  0 |  0 |  0 |   0 |\n",
       "| 501 | 2008 | 1 | 3 | 4 | 1038 | 1010 | 1259 | 1230 | WN |    4 | ⋯ | 8 | 10 | 0 | <!----> | 0 |  3 |  0 |  1 |  0 |  25 |\n",
       "| 502 | 2008 | 1 | 3 | 4 | 1920 | 1850 | 2140 | 2110 | WN |  321 | ⋯ | 9 | 10 | 0 | <!----> | 0 | 30 |  0 |  0 |  0 |   0 |\n",
       "| 605 | 2008 | 1 | 3 | 4 | 1139 | 1140 | 1401 | 1405 | WN |  829 | ⋯ | 8 | 11 | 0 | <!----> | 0 | NA | NA | NA | NA |  NA |\n",
       "\n"
      ],
      "text/plain": [
       "    Year Month DayofMonth DayOfWeek DepTime CRSDepTime ArrTime CRSArrTime\n",
       "72  2008 1     3          4          802     750       1001     955      \n",
       "136 2008 1     3          4         2255    1820        509      55      \n",
       "137 2008 1     3          4         1129    1050       1757    1725      \n",
       "501 2008 1     3          4         1038    1010       1259    1230      \n",
       "502 2008 1     3          4         1920    1850       2140    2110      \n",
       "605 2008 1     3          4         1139    1140       1401    1405      \n",
       "    UniqueCarrier FlightNum ⋯ TaxiIn TaxiOut Cancelled CancellationCode\n",
       "72  WN            2272      ⋯ 7       8      0                         \n",
       "136 WN            1924      ⋯ 9       9      0                         \n",
       "137 WN            3920      ⋯ 8      21      0                         \n",
       "501 WN               4      ⋯ 8      10      0                         \n",
       "502 WN             321      ⋯ 9      10      0                         \n",
       "605 WN             829      ⋯ 8      11      0                         \n",
       "    Diverted CarrierDelay WeatherDelay NASDelay SecurityDelay LateAircraftDelay\n",
       "72  0        NA           NA           NA       NA             NA              \n",
       "136 0         0            0            0        8            246              \n",
       "137 0        32            0            0        0              0              \n",
       "501 0         3            0            1        0             25              \n",
       "502 0        30            0            0        0              0              \n",
       "605 0        NA           NA           NA       NA             NA              "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "myIndyDest<-subset(myDf,myDf$Dest==\"IND\")\n",
    "head(myIndyOrigins)\n",
    "head(myIndyDest)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "8d73028e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:12:06.859596Z",
     "iopub.status.busy": "2026-02-25T21:12:06.857877Z",
     "iopub.status.idle": "2026-02-25T21:12:06.940538Z",
     "shell.execute_reply": "2026-02-25T21:12:06.938635Z"
    },
    "papermill": {
     "duration": 0.092722,
     "end_time": "2026-02-25T21:12:06.942956",
     "exception": false,
     "start_time": "2026-02-25T21:12:06.850234",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "10"
      ],
      "text/latex": [
       "10"
      ],
      "text/markdown": [
       "10"
      ],
      "text/plain": [
       "[1] 10"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sum(myDf$Origin==\"TUP\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "59c978bd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:12:06.958473Z",
     "iopub.status.busy": "2026-02-25T21:12:06.956861Z",
     "iopub.status.idle": "2026-02-25T21:12:07.368475Z",
     "shell.execute_reply": "2026-02-25T21:12:07.366620Z"
    },
    "papermill": {
     "duration": 0.421484,
     "end_time": "2026-02-25T21:12:07.370728",
     "exception": false,
     "start_time": "2026-02-25T21:12:06.949244",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1.42658887762835e-06"
      ],
      "text/latex": [
       "1.42658887762835e-06"
      ],
      "text/markdown": [
       "1.42658887762835e-06"
      ],
      "text/plain": [
       "[1] 1.426589e-06"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "-3.8"
      ],
      "text/latex": [
       "-3.8"
      ],
      "text/markdown": [
       "-3.8"
      ],
      "text/plain": [
       "[1] -3.8"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "mean(myDf$Origin==\"TUP\")\n",
    "myTUPOrigins<-subset(myDf, myDf$Origin==\"TUP\")\n",
    "mean(myTUPOrigins$DepDelay)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "67dfbf25",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:12:07.385714Z",
     "iopub.status.busy": "2026-02-25T21:12:07.384248Z",
     "iopub.status.idle": "2026-02-25T21:12:07.415855Z",
     "shell.execute_reply": "2026-02-25T21:12:07.414268Z"
    },
    "papermill": {
     "duration": 0.041741,
     "end_time": "2026-02-25T21:12:07.418175",
     "exception": false,
     "start_time": "2026-02-25T21:12:07.376434",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "692"
      ],
      "text/latex": [
       "692"
      ],
      "text/markdown": [
       "692"
      ],
      "text/plain": [
       "[1] 692"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "18705"
      ],
      "text/latex": [
       "18705"
      ],
      "text/markdown": [
       "18705"
      ],
      "text/plain": [
       "[1] 18705"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "35004"
      ],
      "text/latex": [
       "35004"
      ],
      "text/markdown": [
       "35004"
      ],
      "text/plain": [
       "[1] 35004"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "42011"
      ],
      "text/latex": [
       "42011"
      ],
      "text/markdown": [
       "42011"
      ],
      "text/plain": [
       "[1] 42011"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sum(myIndyOrigins$DepTime<600, na.rm=TRUE)\n",
    "sum(myIndyOrigins$DepTime<1200, na.rm=TRUE)\n",
    "sum(myIndyOrigins$DepTime<1800, na.rm=TRUE)\n",
    "sum(myIndyOrigins$DepTime<2400, na.rm=TRUE)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "581d56d9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:12:07.434195Z",
     "iopub.status.busy": "2026-02-25T21:12:07.432663Z",
     "iopub.status.idle": "2026-02-25T21:12:08.388812Z",
     "shell.execute_reply": "2026-02-25T21:12:08.387004Z"
    },
    "papermill": {
     "duration": 0.966987,
     "end_time": "2026-02-25T21:12:08.391394",
     "exception": false,
     "start_time": "2026-02-25T21:12:07.424407",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "739"
      ],
      "text/latex": [
       "739"
      ],
      "text/markdown": [
       "739"
      ],
      "text/plain": [
       "[1] 739"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "215685"
      ],
      "text/latex": [
       "215685"
      ],
      "text/markdown": [
       "215685"
      ],
      "text/plain": [
       "[1] 215685"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "5406"
      ],
      "text/latex": [
       "5406"
      ],
      "text/markdown": [
       "5406"
      ],
      "text/plain": [
       "[1] 5406"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "2133"
      ],
      "text/latex": [
       "2133"
      ],
      "text/markdown": [
       "2133"
      ],
      "text/plain": [
       "[1] 2133"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "\n",
       "   1    2   12   16   19   25   27   48   49   51   57   58  101  109  123  144 \n",
       "   1    1    1    1    1    1    1    1    1    1    1    1    1    1    1    1 \n",
       " 152  355  647  652  653  654  655  656  657  658  659  700  701  702  704  705 \n",
       "   1    1    1    1    2    2    5   11   16   18   23   14    7    6    4    5 \n",
       " 707  708  709  711  712  713  714  715  716  718  719  720  721  722  723  724 \n",
       "   2    3    1    2    1    4    2    2    1    2    2    4    4    2    6    4 \n",
       " 725  726  727  728  729  730  731  732  733  734  735  736  737  738  739  740 \n",
       "  11    5    9   14   22   13    8   11    8    5    6    4    4    6    1    3 \n",
       " 741  742  743  746  747  749  753  755  801  823  826  827  828  829  830  831 \n",
       "   3    3    1    2    1    1    2    1    2    1    1    2    3    7   12   20 \n",
       " 832  833  834  835  836  837  838  839  840  841  842  843  844  845  846  847 \n",
       "  13   34   35   24   25    8    9   21   19   10    7   10   20   14   11    6 \n",
       " 848  849  850  851  852  853  854  855  856  857  858  859  900  901  904  906 \n",
       "   6   13    2    5    8    3    2    3    4    1    6    3    2    2    2    1 \n",
       " 908  911  912  914  915  916  917  918  919  920  921  922  923  924  925  926 \n",
       "   1    1    1    1    1    7    7    6   16   15    8   11   13   11   11    6 \n",
       " 927  928  929  930  931  932  933  934  935  936  937  938  939  940  941  942 \n",
       "  11    7   10   19    5    8    9    7    8    5    6    6    3    4    7    5 \n",
       " 943  944  945  946  947  948  949  950  951  952  953  954  955  956  957  958 \n",
       "   2    3    9   11   12   19   25   40   26   24   24   29   27   28   17   23 \n",
       " 959 1000 1001 1002 1003 1004 1005 1006 1007 1008 1009 1010 1011 1012 1013 1014 \n",
       "  10   17    9   11    7   11   17    7    8    9    5    4    6    7    1    1 \n",
       "1015 1016 1017 1018 1019 1020 1021 1022 1023 1024 1025 1026 1027 1028 1029 1030 \n",
       "   4    6    2    3    3    3    1    4    1    2    1    2    5    6    5   12 \n",
       "1031 1032 1033 1034 1035 1036 1037 1038 1039 1040 1041 1042 1043 1044 1045 1046 \n",
       "   7   22   20   25   13   12   15   15    9    5    5    4    8    6    6    3 \n",
       "1047 1048 1049 1050 1051 1052 1053 1054 1055 1056 1057 1058 1059 1100 1101 1102 \n",
       "   4    4    5    1    2    2    1    1    4    9    6    5    4   11    8    4 \n",
       "1103 1104 1105 1106 1107 1108 1109 1110 1111 1112 1113 1114 1115 1116 1117 1118 \n",
       "   7   21   21   32   34   36   43   26   15   23   15   11   12   11    8   10 \n",
       "1119 1120 1121 1122 1123 1124 1125 1126 1127 1128 1129 1130 1131 1132 1133 1134 \n",
       "   6   11    8   11    2   10    4    3    5    1    5    1    4    4    5    3 \n",
       "1135 1136 1137 1138 1139 1140 1141 1142 1143 1145 1146 1147 1148 1154 1155 1156 \n",
       "   3    4    2    2    1    3    2    3    7    2    1    1    1    2    1    2 \n",
       "1159 1201 1205 1206 1208 1210 1211 1212 1213 1214 1215 1216 1217 1218 1219 1220 \n",
       "   1    1    1    2    2    1    1    4    7    6   10    3    3    4    2    5 \n",
       "1221 1222 1223 1224 1225 1226 1227 1228 1229 1230 1231 1232 1233 1234 1235 1236 \n",
       "  14    7    5    6    7    6    9    7    4    9    5    7    4    3    2    5 \n",
       "1237 1239 1240 1241 1242 1243 1246 1248 1254 1255 1256 1257 1259 1302 1308 1309 \n",
       "   2    2    2    1    1    1    1    1    2    3    3    1    1    2    1    2 \n",
       "1320 1321 1323 1324 1325 1326 1327 1328 1329 1330 1331 1332 1333 1334 1335 1336 \n",
       "   1    1    1    2    6   20   18   23   19   23   17   17   11    5   11   12 \n",
       "1337 1338 1339 1340 1341 1342 1343 1344 1345 1346 1347 1348 1349 1350 1351 1352 \n",
       "  11   14   25   15   10    6   10    7    5   10    2    4    2    1    1    2 \n",
       "1353 1354 1355 1356 1357 1359 1400 1401 1407 1408 1409 1410 1414 1418 1419 1421 \n",
       "   2    2    2    1    2    1    3    1    2    1    2    1    1    2    1    2 \n",
       "1428 1429 1430 1431 1432 1433 1434 1435 1436 1437 1438 1439 1440 1441 1442 1443 \n",
       "   1    1    1    1    1    2    4    6   12   10   11   15   15   12   12    7 \n",
       "1444 1445 1446 1447 1448 1449 1450 1451 1452 1453 1454 1455 1456 1457 1458 1459 \n",
       "  14    8   12    7    6   11   15    8   10   14    9   12    7   12    5    4 \n",
       "1500 1501 1502 1503 1504 1505 1506 1507 1508 1509 1510 1511 1512 1513 1515 1516 \n",
       "   6    6    3    6    2    4    3    7    3    3    3    1    3    1    4    2 \n",
       "1517 1518 1519 1520 1521 1522 1523 1524 1525 1526 1527 1528 1531 1532 1533 1534 \n",
       "   2    3    6    1    1    1    2    2    1    3    1    3    1    2    2    1 \n",
       "1536 1537 1538 1539 1545 1550 1552 1554 1556 1557 1558 1559 1600 1601 1602 1603 \n",
       "   2    1    1    1    1    1    3    1    4    7    8   10   12   11   12   13 \n",
       "1604 1605 1606 1607 1608 1609 1610 1611 1612 1613 1614 1615 1616 1617 1618 1619 \n",
       "   8   12    9   18   10   11   24   14    7   10    7   14   15    4    9    7 \n",
       "1620 1621 1622 1623 1624 1625 1626 1627 1628 1629 1630 1631 1632 1634 1635 1636 \n",
       "   6    7    7    6    7    3    5    8    6    2    6    2    2    4    2    1 \n",
       "1638 1639 1641 1642 1643 1644 1645 1648 1649 1650 1654 1656 1658 1659 1700 1701 \n",
       "   2    4    1    1    1    1    1    2    1    1    2    2    1    1    7    4 \n",
       "1702 1703 1704 1705 1706 1707 1708 1709 1710 1711 1712 1713 1714 1715 1716 1717 \n",
       "   4    6    6    6    6    3    2    2    4    3    4    5    4    2    6    3 \n",
       "1718 1719 1720 1721 1722 1723 1724 1725 1726 1727 1728 1729 1730 1731 1732 1733 \n",
       "   4    5    2    5    2    8    6    4   14   12   16   12   18   10    4   16 \n",
       "1734 1735 1736 1737 1738 1739 1740 1741 1742 1743 1744 1745 1746 1747 1748 1749 \n",
       "  12   11    6    7    7    6    6   12    6    4    7    7    5    2    3    3 \n",
       "1750 1751 1752 1753 1754 1755 1756 1757 1758 1759 1800 1801 1802 1803 1804 1805 \n",
       "   4    1    5    5   10    8   12   12    9    4    7    5    9    5    8    4 \n",
       "1806 1807 1809 1810 1811 1814 1815 1817 1818 1819 1821 1822 1824 1825 1826 1828 \n",
       "   3    4    4    3    4    2    5    1    2    1    3    3    4    1    4    4 \n",
       "1829 1830 1832 1834 1835 1836 1837 1838 1839 1840 1841 1842 1843 1844 1845 1846 \n",
       "   3    6    1    1    3    2    2    5    9    7    6    8    3   12    7   13 \n",
       "1847 1848 1849 1850 1851 1852 1853 1854 1855 1856 1857 1858 1859 1900 1901 1902 \n",
       "   9   14   13   21   13    9   20   10   16   20    9    5    8    9    9    8 \n",
       "1903 1904 1905 1906 1907 1908 1909 1910 1911 1912 1913 1914 1915 1916 1917 1918 \n",
       "   3    7    6    6   10    8    3    7    6   12   10    8   10   17   14   15 \n",
       "1919 1920 1921 1922 1923 1924 1925 1926 1927 1928 1929 1930 1931 1932 1933 1934 \n",
       "  13   18    9   15   13    6    9    4    6    9   14   13    6   12    7    5 \n",
       "1935 1936 1937 1938 1939 1940 1941 1942 1943 1944 1945 1946 1947 1949 1950 1951 \n",
       "   8    5    7    4    4    6   10    2    5    3    2    3    2    3    2    5 \n",
       "1953 1954 1955 1956 1957 1958 1959 2000 2001 2002 2003 2004 2005 2006 2007 2008 \n",
       "   3    1    6    2    5    4    4    7    7    6    3    1    6    3    9    2 \n",
       "2009 2010 2011 2012 2013 2014 2015 2016 2017 2018 2019 2020 2021 2022 2023 2024 \n",
       "   2    4    7    5    7    5    5    2    7    5    5    8    5    6    7    8 \n",
       "2025 2026 2027 2028 2029 2030 2031 2032 2033 2034 2035 2036 2037 2038 2039 2040 \n",
       "   6    6    8    4    7    8    7    5    5    7    6    6    3    3    3    7 \n",
       "2041 2042 2043 2044 2045 2046 2047 2049 2050 2051 2052 2053 2054 2055 2056 2057 \n",
       "   3    3    2    3    8    2    3    2    2    3    2    3    1    2    3    2 \n",
       "2059 2100 2101 2102 2103 2104 2105 2106 2107 2108 2109 2110 2111 2112 2113 2114 \n",
       "   1    3    1    1    1    3    1    2    1    2    2    4    4    6    8   10 \n",
       "2115 2116 2117 2118 2119 2120 2121 2122 2123 2124 2125 2126 2127 2128 2129 2130 \n",
       "  11    7   12    4    7    8    8   10    7   10   11    7   14   18   12   10 \n",
       "2131 2132 2133 2134 2135 2136 2137 2138 2139 2140 2141 2142 2143 2144 2145 2146 \n",
       "   5   14   14   11    9   11    7   12    9    8    6    6   11    5    4    9 \n",
       "2147 2148 2149 2150 2151 2152 2153 2154 2155 2156 2157 2158 2159 2200 2201 2202 \n",
       "   9   10    2    4    6    1    3    5    8    9    9    8   13   12   10   11 \n",
       "2203 2204 2205 2206 2207 2208 2209 2210 2211 2212 2213 2214 2215 2216 2217 2218 \n",
       "   9    4    2   10    2    5    5    5    1    3    5    2    3    2    3    3 \n",
       "2219 2220 2221 2222 2223 2224 2226 2227 2228 2230 2231 2233 2234 2237 2238 2239 \n",
       "   2    2    2    2    1    1    1    2    2    2    1    2    1    2    1    1 \n",
       "2240 2241 2242 2244 2245 2246 2248 2250 2251 2252 2253 2254 2255 2258 2301 2303 \n",
       "   1    1    2    1    3    1    1    1    2    1    1    2    2    1    3    1 \n",
       "2306 2307 2310 2312 2314 2315 2316 2317 2318 2319 2322 2327 2330 2332 2337 2344 \n",
       "   2    1    1    1    2    1    1    2    1    1    1    1    1    1    1    1 \n",
       "2345 2346 2348 2351 2355 \n",
       "   1    1    1    2    2 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdeUAU5ePH8YdDjkA5REXFA1GUPCrzLA3dPNCSLLvUzCI7vmpq1rdSKTWz1DJT\n1A7NVBTMDtOKLgM3zaMwj8QjR103DRVEUJFjl9nfH/T1R4jLLHsP79dfy+zw7Gd3Z9kPszvz\neJhMJgEAAAD35+nsAAAAALANih0AAIBKUOwAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAA\nQCUodgAAACpBsQMAAFAJih0AAIBKUOwAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUo\ndgAAACpBsQMAAFAJih0AAIBKUOwAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAA\nACpBsQMAAFAJih0AAIBKUOwAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACpB\nsQMAAFAJih0AAIBKUOwAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACpBsQMA\nAFAJih0AAIBKUOwAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACpBsQMAAFAJ\nih0AAIBKUOwAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACpBsQMAAFAJih0A\nAIBKUOwAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACpBsQMAAFAJih0AAIBK\nUOwAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACpBsQMAAFAJih0AAIBKUOwA\nAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACpBsQMAAFAJih0AAIBKUOwAAABU\ngmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACpBsQMAAFAJih0AAIBKUOwAAABUgmIH\nAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACrh7ewAbqCgoGDVqlVFRUXODgIAAFyCv7//\n6NGjg4KCnB2kMopd9dauXTtx4kRnpwAAAC7E29t77Nixzk5RGcWuegaDQQjx0Ucf3XTTTc7O\nAgAAnGzfvn1PPPFEeT1wNRQ7pdq2bXvrrbc6OwUAAHCy4uJiZ0e4Lg6eAAAAUAmKHQAAgEpQ\n7AAAAFSCYgcAAKASFDsAAACVoNgBAACoBMUOAABAJSh2AAAAKkGxAwAAUAmKHQAAgEpQ7AAA\nAFSCYgcAAKASFDsAAACVoNgBAACoBMUOAABAJSh2AAAAKkGxAwAAUAmKHQAAgEpQ7ADUOrIs\n63Q6WZadHQQAbIxiB6B2kWVZo9FERkZqNBq6HQCVodgBqF0kSdJqtUIIrVYrSZKz4wCALVHs\nANQuBoOhyssAoAIUOwAAAJWg2AEAAKgExQ4AAEAlKHYAAAAqQbEDAABQCYodAACASlDsAAAA\nVIJiBwAAoBIUOwAAAJWg2AEAAKgExQ4AAEAlKHYAAAAqQbEDAABQCYodAACASlDsAAAAVIJi\nBwAAoBIUOwAAAJWg2AEAAKgExQ4AAEAlKHYAAAAqQbEDAABQCYodAACASlDsAAAAVIJiBwAA\noBIUOwAAAJWg2AEAAKgExQ4AAEAlvJ0doIYuZJ84cuTo2byLhVeKvf0CguqHt2kX06pxsLNz\nAQAAOI2bFTtTWcH6BTMXfZSy/fDZa68Nb9djxJiJr0x8KNjbw/HZAAAAnMudil1Z6enHu96U\nvP+8V53Q7pr4TjFRjcOCfX29jSUl+blnTh7N2r511zsvDF+d8vW+Haub+PApMwAAqF3cqdjt\neD4uef/5XuMXps4ZGxFQRXK59Hzq3HGjpqf0f3ZM1gd9HB4QAADAmdxpt9bU5KOBjZ/ZmjSh\nylYnhPD0qT/ylXXvdW90bF2ig7MBAAA4nTsVuz8KDYHNh1S72q13NDRcyXJAHgAAAJfiTsXu\nnvr+Fw7POVMqm1tJLlqxXucXMtBRoQAAAFyFOxW7aXMHlhRs7dDjwTXf7y4sM1W+2lRycOuG\nMf1j3tNd7DN9ujMCAgAAOJM7HTzRZvSny34b8PTSL0bFfe7lE9SqTVSTBsG+vnXKSksKcrOP\nHz2WV2z08PDoO3bJpnExzg4LAADgaO5U7ITwHLN486BRXy75ODUtY+fhQ3uOZv2z387D0zci\nqn3/vgOHj5lwT9emzk0JwDxZlvV6ffPmzT093elDAwBwfe5V7IQQomn3oW90H/qGECZjUX7+\npcKiUh//G+oGh/jX6KTEZWVlaWlpxcXFZtbZs2ePEMJgMNQwMYAKZFnWaDRarTY2NjY9PZ1u\nBwA25H7F7ioPb/+QMP8Q6wbJyMiIj49XsmZKSkqfPn2suzUAQpIkrVYrhNBqtZIkRUdHOzsR\nAKiHGxe7SkaNGhUa8+LCqR0t+q2+fftu2rTJ/B67pUuXbtmyJSIiwrqAAIT4985vdoQDgG2p\np9itWbOmaZ9HLC12Xl5eQ4ZUc268tLQ0IQQfGAEAABfnTsXu+Np3k6UCMytc0q2dOXNn+eXp\nnPEEAADUMu5U7PRfJM344riZFS7qkmfM+OcyxQ4AANQ27lTs7kj9Zc7Yh17+6Ge/0JtfT0ps\n/e8ZY4cOHVq/w/SPXr/FWfEAAACcy52KnadP+EvLtYMHzx02+pXEiW+8k/Lpf/q3qriCX1jP\ne+5hMjEAAFBLud8BAR3ve+kP3a7HbsobNzB60IRF541mp44FAACoNdyv2AkhfOvf8t7mYxvf\nfnL7e89FxQz6bG+usxMBAAA4n1sWOyGEEJ5DJr93cu+G27x+fahLi8dmf+LsPAAAAE7mvsVO\nCCGC28d/c+DYu2PvSH5luLOzAAAAOJk7HTxRJQ/v0GcXfTt4yOqvD14IjIhxdhwAAACncfti\nVy6q/6MT+zs7BAAAgFO590exAAAAuIpiBwAAoBIUOwAAAJWg2AEAAKgExQ4AAEAlKHYAAAAq\nQbEDAABQCYodAACASlDsAAAAVIJiBwAAoBIUOwAAAJWg2AEAAKgExQ4AAEAlKHYAAAAqQbED\nAABQCYodAACASlDsAAAAVIJiBwAAoBIUOwAAAJWg2AEAAKgExQ4AAEAlKHYAAAAqQbEDAABQ\nCYodAACASlDsAAAAVIJiBwAAoBIUOwAAAJWg2AEAAKgExQ4AAEAlKHYAAAAqQbEDAABQCYod\nAACASlDsAAAAVIJiBwAAoBIUOwAAAJWg2AEAAKgExQ4AAEAlKHYAAAAqQbEDULvIsuzsCABg\nLxQ7ALWILMsJCQnOTgEA9kKxA1CLSJKUmZnp7BQAYC8UOwC1iMFgcHYEALAjih0AAIBKUOwA\nAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACpBsQMAAFAJih0AAIBKUOwAVCbL\nsk6nk2XZ2UEAAJah2AH4F1mWNRpNZGSkRqOh2wGAe6HYAfgXSZK0Wq0QQqvVSpLk7DgAAAtQ\n7AD8i8FgqPIyAMD1UewAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACpBsQMA\nAFAJih0AAIBKUOwAAABUgmIHAACgEhQ7AAAAlaDYAfgXWZarvKwO6rtHAFARxQ7Av+j1+iov\nq4P67hEAVESxA/AvRqOxysvqoL57BAAVUewAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAA\nQCUodgAAACpBsQMAAFAJih0AAIBKUOwAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUo\ndgAAACpBsQMAAFAJih0AAIBKUOwAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAA\nACrhbekvlJVcPnvm7Nmzeb7BYeHh4aH1/O0RCwAAAJZSWOzkfT9++kXaDz/99NOOA3rZZLp6\nRWDjtpo77+zXb+DDw+9u4MP+PwAAAKepptiZyi59+eH8dxcm/Xwkz9sv9KZu3Z/4zz1h9evX\nDw0yXL5w/vz5v08c3vXj6k1rlj4/vsXwZ8Y///Kzner7OiY6AFjKVOH/UgBQH3PF7tTWlSMf\nm7DzfP2hI8Z99fGIft3b+V1nl1zuiT1frFuTvHpe56QF/5nz4buT7vKyS1oAsEp2drazIwCA\nHZn78LRd/Jtdxi0/m3v8k6Wv3d3zuq1OCBEWectTU+ZvPXRuz4aZJ1Y9MVbKt31SALCa0Wh0\ndgQAsCNze+z+PHOwia9lu946Dhrz9aCEMwbrQgEAAMBy5ordta1ONuZt/zFj/5+6gstFU6Yl\nFupO+rdscc2OPM/wOrYNCQAAgOpZcBxrdsbSHs2a9R58/7hJL0xNfEUIsXfmwNDIrot+0Nst\nHgAAAJRSWuwun/rklrgJu3N9RkxKnD35xvKFTQcPCz2377m7On584qLdEgIAAEARpcVu/UOT\ncsr8Vu0/sXbBrFEDmpYvbPnA7H0HPqsnLk8dsd5uCQEAAKCI0mI3d8/50PYLH4kJrrS8bmT8\n4g5h5/fPt3UwAAAAWEZpsTtrKAuIaFnlVY2b31BW+rfNEgEAAKBGlBa7uBC/3N2rqjplu7xy\nV45vUKwtQwEAAMBySovd1Mm3FJ5N7vfSikK5QrszGTbMGJR8tjA6YZpd0gEAAECxauaKvarj\nf78Zv7Ht4nlPNEye26XlBSHEk4+PPLDtm51SQVCbB75+vYs9QwIAAKB6SvfYeXgFLdomrZw1\nLsr73M87coQQy1em7L0QMmLy/IMH1kX4MDcsAACAkyndYyeE8PAKHJ24eHTi4ry/T57Nu+xb\nL7Rl88YWnOAYAAAA9mRBsbsqtEmL0CY2TwIAAACrWFDsDnyfvEG7R59zqcprly1bZqNIilzI\nPnHkyNGzeRcLrxR7+wUE1Q9v0y6mVePKp9kDAACoPZQWu4NLhnUc/4WZFRxT7ExlBesXzFz0\nUcr2w2evvTa8XY8RYya+MvGhYG8PB4QBAABwKUqL3cRX0jy9Aqe+v26EplM9X+d8s66s9PTj\nXW9K3n/eq05od018p5ioxmHBvr7expKS/NwzJ49mbd+6650Xhq9O+XrfjtVNfPj6HwAAqF2U\nFrsdF0sjBqyfNeYuu6apJsPzccn7z/cavzB1ztiIgCqSy6XnU+eOGzU9pf+zY7I+6OPwgAAA\nAM6kdLdWt7o+/uGhdo1SranJRwMbP7M1aUKVrU4I4elTf+Qr697r3ujYukQHZwMAAHA6pcXu\nreduPfHphD0FpXZNY94fhYbA5kOqXe3WOxoarmQ5IA8AAIBLUfpR7K2Jm1/d0aZHs47PTBjd\nqXXTaw9OGD16tI2jXeOe+v7rDs85UxoXbub7c3LRivU6v5BB9g4DAADgapQWu9zfP3wvI7u0\npGzR7KqnhXVAsZs2d+Cqx77o0OPBd9+ccm+/zgFe/26XppKD29LemfHcR7qLgxdPt3cYAAAA\nV6O02L06dNrpkrJ+j099qE+Huk46KrbN6E+X/Tbg6aVfjIr73MsnqFWbqCYNgn1965SVlhTk\nZh8/eiyv2Ojh4dF37JJN42KckhAAAMCJFBY705ozVxp2SfpxxXj7xqmG55jFmweN+nLJx6lp\nGTsPH9pzNMtUfoWHp29EVPv+fQcOHzPhnq5NnRoSAADAORQVO9lw/lKZ3LxnV3unUaJp96Fv\ndB/6hhAmY1F+/qXColIf/xvqBof41+ikxGVlZWlpacXFxWbW0el0QghZlmsWGAAAwDEUFTvP\nOmFPtKyX+snbBQvWB3m5yqQOHt7+IWH+IdYNkpGRER8fr2TNEydOWHdTAAAA9qX0O3YLt649\n2PnBTv2fSkoc075F2LUrREVF2TSYJUylu7dt1WXnBzVpffttnfw9Laieffv23bRpk/k9dkuX\nLt2yZUtkZKTVQQEAAOxIabELbDZECCEylt+TsbzKFUwmk60ymXHp+E9Tpsz7dsf+Is963Qc/\n8t6700IKf7u768DNxwrKVwho0mXO2i/H91H6NTsvL68hQ6o5N15aWpoQwtOTOcoAAIBLU1rs\nxo937mETQghRlPNdp/ZDdMVGD0//4Bvyvnzv1d+O1J1aMu+n45djH3isZ7tGZw7/nvL55okD\nOoXr/7o//AZn5wUAAHAopcUuKSnJrjmU2DTyKV2x8bF3NiU9e3egt2nnmkk9Rz03wcPj3lX7\nPx/VoXydN7Ynteg9cfLotPu/v9+5aQEAABzMnT5enLfjbHDU9I+fGxLo7SGEZ49HFj3Y4AYP\nn4jURzpcXafxbc++2Sr43M63nZgTAADAKcztsSsoKBBCBNQL8vb457IZQUFBtsxVlUNFhoYx\nvSsuGVrf/yu5s8+/D5bo1Kqu4QRzxQIAgFrHXLELDg4WQnyee+W++v7ll81wwMET7fzrHM/6\nWYg7ry7p9tIrMy40q7TaQd0lb//W9g4DAADgaswVu4cfflgIEeHjLYR45JFHHJTo+l7q2XD4\n5lnjVgxISri9/CPkqMcmvvjvdXJ3L3tZyg/t9o4T8gEAADiVuWL3+uuve/k0alm3jhAiOTnZ\nUZGuKz5leesWQ5Y+0Wv1q2179pr/w7q7Kl578MN5CzN+Svl0c6lHwBvJ9zorJAAAgLOYO3ii\ndevWXQZ87bAo1fIPG7j3z5+eHzUorOT07j3nKl27f8G8D9f9UCey+5Ifsh5vbfcv/AEAALga\npac7cRE3NO399urebwshGyrP3Hr7u8m/NIrueXOUq0x5BqA6TMEMALblTqc7qcizTuXkzQYO\nuo1WB7iVhIQEuh0A2JC7FjsAKpCZmSlJkrNTAIB6VPNRrOHKQa1Wq2Sg2NhYW+QBULsYDAZn\nRwAA9aim2F3Uz+rTZ5aSgRxwHjsAAACYUU2x863X897BLRwTBQAAANaoptgFNpmQmvqwY6IA\nAADAGhw8AQAAoBIUOwAAAJWg2AEAAKiEue/YjR8/PqBRG4dFAQAAgDXMFbukpCSH5QAAAICV\nLJsrtiRP+nTdF9szD5y7cNm3Xv12t/S4b8TI9g397BQOAAAAyllQ7Ha9/1z8xKRzpWX/v2j1\n8hn/feE/73y9+NnbbR8NAAAAllB68ES29sXbxi7M82w68Y1l2/f9+feZU/t2aT+eN7l5nctL\nJ/Z+YUu2XVMCAACgWkr32CU99qHwDFi1d/+ItkHlSxo3atqp2x33Du3aLGbksscWvq2bY7eQ\nAFRLlmVnRwAA9VC6x+6jvy8Ht5l3tdVdFdTm4XfahRT+vcLWwQDUCnq93tkRAEA9FBU7ufTv\nc6VlPvUiqry2SYivh1egTVMBqC2MRqOzIwCAeigqdp4+TTTBfnkHp/9dWvlDE9lwdua+3LBb\nptohGwAAACyg9KPY1esmeRXt7dz3yfQDZ64uPJuV/rTm5j1y1IqNI+0TDwAAAEopPXhi0nKp\nS9OArdtX3NlxRVDjyGYNAgpzT534O18I4R8eNHXAbRV32e3Zs8cOUQEAAGCO0mK3bds2IQLD\nwwOFEMJUlHuuSAi/8PBwIYQQBWfOFNgrIAAAAJRRWuyyszlTHQAAgEuzbEox2Zi3/ceM/X/q\nCi4XTZmWWKg76d+yhdKv6QEAAMCeLGhl2RlLezRr1nvw/eMmvTA18RUhxN6ZA0Mjuy76gdNQ\nAQAAOJ/SYnf51Ce3xE3YneszYlLi7Mk3li9sOnhY6Ll9z93V8eMTF+2WEAAAAIooLXbrH5qU\nU+a3av+JtQtmjRrQtHxhywdm7zvwWT1xeeqI9XZLCAAAAEWUFru5e86Htl/4SExwpeV1I+MX\ndwg7v3++rYMBAADAMkqL3VlDWUBEyyqvatz8hrLSv22WCEBtYjKZnB0BANRDabGLC/HL3b2q\nqj/A8spdOb5BsbYMBaDW4FRKAGBDSovd1Mm3FJ5N7vfSikK5QrszGTbMGJR8tjA6YZpd0gFQ\nO6PR6OwIAKAeSs9j1/G/34zf2HbxvCcaJs/t0vKCEOLJx0ce2PbNTqkgqM0DX7/exZ4hAQAA\nUD2le+w8vIIWbZNWzhoX5X3u5x05QojlK1P2XggZMXn+wQPrIny87BkSAAAA1bNg5gkPr8DR\niYtHJy7O+/vk2bzLvvVCWzZvzLQTAAAALsKyKcXKhTZpEdrE5kkAAABgFWXFzmTYk/Hdtl9/\nO/rX2fyCIv+g4EbNo7t16xXX52ZvDzsHBAAAgDLVF7udqbPHvTznd/3la68KbN55ypylU4d3\nt0MwAAAAWKaaYvdV4oD42T96eNbpNuiR+P633xjVrG6gX+nli38dP7T9x03rvvt12oge2oNf\nfT/rbsfEBQAAwPWYK3bn98+5543NvkGd1/z07f23Nvz3lfc+PWnq23s33KUZ8ePs+LkP5LzU\nqb5dgwIAAMA8c0e1bhzzrslkem3rj9e0un80uPne739502QyLXhyk33iAQAAQClzxS7p0AX/\n+vEvdgw1s05IzKQHG9xw4WCSrYMBAADAMuaKXVahwS/0rmqHuCvUz1B4wHaRAKiZLMvOjvD/\nXCoMAFjPXLEzmEyeXvWqHaKel6fJZLBdJABqptfrnR3h/7lUGACwHjNHAHAoo9Ho7Aj/z6XC\nAID1KHYAAAAqUc157C6dmjNo0Crz65zVX7RdHgAAANRQNcWu9PK+777b55goAAAAsIa5Yrd3\n716H5QAAAICVzBW7m266yWE5AAAAYKVqPooVQghT6ZHfMwtb3do5xPefBWUFye/O+ernfZdF\nQHTnOx4b++QtDfzsGxMAAADVqeao2PN71vSKCmvX5fZp+8//s8hUMvm26NEvzPn8qx+2fb9h\n0YwJ3Zq3S/otx+5JAQAAYJa5YmcsOtKrV8KvOQ0nzlrw8o0h5QtPbnrk3V/PNbpt8p/5Vy4V\nXTm4ZUXXgHP/7RdfKJscEhgAAABVM/dR7LGUMUeKvdcc2zOiZd2rC1dM3uzhWSflmzda1/MR\nQsTEPv7NtuzQmGlTjhUsahNs97wAAAC4jusWu4Pfbkp995BvvZ6+u3/4fPc/C01ll+boCvyC\nB1346evP/7emSW5ex8PjpyVrP+8dHtDkjrieDeyeGgAAANe4brFLm/nye0fyS+Vdkyb9eXWh\nbMgrlU0+8u+TJu2vuLIshLRy1qTP6zQb+AnFDlANk8n2X7GwyZiyLOv1+ubNm3t61q7pc2rt\nHQeg0HX/NLyw8+Cm0W08vesfOan/63++fLS1EOKpnw/8VcHxQxtNQvReu+uvv/7avvw2B4YH\nYF+JiYmyLNtwQFmWExMTrR9Eo9FERkZqNBrbxnNxtfaOA1DO3P98N774sLFEP+i1TeV/PwqO\nbLx3UZZPYOc57UMrrvbZ84+YhPhP94b2zAnACbKysiRJsuGAkiRlZWVZP4hWqxVCaLVa28Zz\ncbX2jgNQztzBE8Ftps+7e+WLM4c2XNMxpoHX3t/2F8qmMR9/GuDpIYQovbh93ttf7t226fOM\nIy2GvDcszN9RmQE4jsFgcLXRKg5i23gurtbecQDKVfMtjRc2Hvh41ti2NxRLJ3JadYub88nu\nD4e3Kr+q+ELaK7Pe2rD17F1Pzcv84in7RwUAAIA51cw84eEZ8Fjikseq+kpMYJPxB7JGRbRu\nE+TDd3gBAACcr+adzLNOePsb25a3urLik7aLBAAAgJowe/BE/OQDBaXVDnEi/cOeLWJsFwkA\nAAA1Ya7YHfpqwa3Nb35rwx/XW0E2nk+aMLhNv2d+O1dkh2wAAACwgLlilzQp3nT58Iv3der1\n2Ov6krJK1+bsXj+wbasJSd96+DWfujzdniEBAABQPXPFbvyCjSe3rx0QHfTLqldiWvb6aIu+\nfLlJLlozfWSLbg9vPn6xQ/yk3/46PPuJvg5JCwAAgOuq5uCJxt2Hf3fw5EfThptydj2piYqf\nvPTk4e8e7Npi1GspZYFtZ6fu+mPjgpvr+zkmKwAAAMyo/qhYD6+ghNdTTu358p5OwV8tGNcy\nZtBnv+d0Hz5t/6n9Ux/u5oCIAAAAUELp6U4Cm7du26ZJ+WUvn4aDBg1uW7eO3VIBAGodWZZ1\nOh3T4ALWUFTsfkme2SHi5rmf7Q+7ZdiyRZMbivMzHr095q4Ju88V2zsfAAczmUzOjoDaSJZl\njUYTGRmp0WjodkCNVVPsis78On5wu16PzjhWVGfUjDX6zE/HPDv/6LEtj97e9HBaUo8W0S9/\n+BOvP0BNsrOznR0BtZEkSVqtVgih1WolSXJ2HMBdmSt23y39b5uWty359khwu8Gf7davnj7S\n39NDCBEQ0WvVVt0Xc5+8wXh67tP9Wt/55C+nCh0VGIB9GY1GZ0dAbWQwGKq8DMAi5ordoHFv\n/23wGvbih7oDX997U/1/Xefhfe+LH57ctzG+Q+iJ9OWxUVH2jQkAAIDqmCt2dVv2Tf5F99nc\nJ4O8PKpcIfjGu7/cq1v+8v1exnP2iQcAAAClvM1cd+zPzQ3qVPMlPA+vuk+8+eng+GSbpgIA\nAIDFzPW2alvdVaW+jW0RBgAAADWntLpV6fzRXYtfm3R7u4Ytb+1vq0AAAACoGXMfxV7Pleys\nT1NTU1NTv888Xr7ELyzapqkAAABgMQuKneHiya8+WZeSmrppy36DySSE8L6hcdz9D48YMeK+\nAV3slhAAAACKVF/s5NLcn75Yn5KS8nnajktlshDC26+BKM5p1G3RoV/GhXhb9WEuAAAAbMVc\nsdvxTXJqSsonn/94rqRMCOHt17D//fc9+MCD98bHhvl4+YbG0OoAAABch7lid9vdjwohvP0a\nDnho2AMPPnDfkNhQxcfJAlBOlmW9Xt+8eXNPz1r3EnPu1LTuMjGuLMs6ne7UqVPODgLA1VX/\nLtK8R5+4wXfdPegOWh1gD7V87vOkpCQn3uvExETXf8zLt5CoqKi4uDhnZwHg6sx1tYWvju/W\nOvT4lvWTR98dEdSw/0NjV276pVB2j39wAXdRy+c+lyTJifc6KyvL9R/zq1sIAFTLXLGbMDNp\n19HzR3emzXh2ZFTQlc3r33v8nl6hoa0efGaaw/IBqsfc5869167/mLt+QswVPUUAACAASURB\nVACuo/pPV1t3HzR90Zoj5/J/+27tpFGDQ0tOffrBG0KI0xmj7h79/Lof95SyCw8AAMAFKP7a\nnIdvl4EjFqz+5nRB9g+pi0ff3dPPeO6b1e8MH9A5pEn7x55/054hAQAAUD2Lj4fw9Anr//C4\nlV9tz8s9+snSWfG3tys+e2jVO1PtEQ4AAADK1fxAV5/gVg/+J3HjtkMXTmS+P3uyDTMBAACg\nBmoyV2wl9Vp0fnpqZ+vHAQAAgDVscGq6tF5tGzRoYP04AAAAsIYNil3phbzc3FzrxwEAAIA1\nmEwCAABAJSh2AAAAKkGxAwAAUAmKHeDGZFnW6XSuP409AMAxKHaAu5JlWaPRREZGajSaWtXt\nKt7ZWnXHAaBa5s5jN2XKFCVD/Hnuio3CALCAJElarVYIodVqJUmKjo52diIH0ev1FS937NjR\niWEAwKWYK3Zz5sxxWA4AljIYDFVeVj2j0VjlZQCAuWK3cuVKR8UAAACAtcwVu9GjRzssBwAA\nAKxkrtgdO3ZM+UBRUVFWhwEAAEDNmSt2rVu3Vj6QyWSyOgwAAABqzlyxmzRpUsUfj3+3ctPh\n/DqBEX3u7B0VUf/yWd3+nVv2n7ocfc+Uqfe2tXNOAAAAVMNcsVuwYMHVy+d2zopYVND1qYVf\nJY1v5PO/s9+ZSlITh4x88y3d83/ZNSUAAACqpfQExe8On18n9L5t70/4/1YnhPDwHT77u0cb\n+r4zcp5d0gEAAEAxpcVu+enLQdFP+HhUMcKI9iGFZ1bbNBUAAAAsprTY1fP2KPxLW+VVPx+7\n5FknzHaRAAAAUBNKi93Lnepf/Gvusyl/VFp+IHXS7JMF9Tu9aOtgAGB7HL8Pu5JlWafTMYUx\nnMjcwRMVDf984SutRi555KZd6x5/+K47WjQMvHzu5Na0T1Z89ZuXT/i7nz1k15QAnEVNb1Gy\nLCclJTk7BVRLlmWNRqPVamNjY9PT0z09le46AWxIabELaPrQH7+UDR89cfNXK377asXV5Q07\nDHz34zUPNQ2wTzwATqbX6zt27OjsFLYhSZIkSc5OAdWSJEmr1QohtFqtJEnR0dHOToTaSGmx\nE0KEdRnxY9bwI79l7Nhz+PzF4oDghu1v7dn7FiacANTMaDQ6O4LNGAwGZ0eAmlXcwNjY4CwW\nFDshhBAebbtq2nbV2CULAAAArKC02JnKLi97OWHhpxnHz16ucoWioiLbparehewTR44cPZt3\nsfBKsbdfQFD98DbtYlo1DnZkBgAAAJeitNhte6H30+/u9fJt2LlbzyBfL7tmMsNUVrB+wcxF\nH6VsP3z22mvD2/UYMWbiKxMfCvau4oR7AAAA6qa02L204pBP4M2/HN/RpYGfXQOZUVZ6+vGu\nNyXvP+9VJ7S7Jr5TTFTjsGBfX29jSUl+7pmTR7O2b931zgvDV6d8vW/H6iY+HI4EAABqF0XF\nziQX/XapNHLEIie2OiHEjufjkvef7zV+YeqcsREBVSSXS8+nzh03anpK/2fHZH3Qx+EBAQAA\nnEnRbi1TWaFJCJOzT2c1NfloYONntiZNqLLVCSE8feqPfGXde90bHVuX6OBsAAAATqeo2HnW\nCXutW0P9pgkHLjvz+O0/Cg2BzYdUu9qtdzQ0XMlyQB4AAACXovQ7di+mZ/zZ784eMZpXZ064\nvVNMeIh/pRWioux+Qrt76vuvOzznTGlcuJnvz8lFK9br/EIG2TsMAACAq1Fa7OoE3CiEECL7\npSe2VbmCA2ZgnDZ34KrHvujQ48F335xyb7/OAV7/PvTVVHJwW9o7M577SHdx8OLp9g4DAADg\napQWu/Hjx9s1hxJtRn+67LcBTy/9YlTc514+Qa3aRDVpEOzrW6estKQgN/v40WN5xUYPD4++\nY5dsGhfj7LAAAACOprTYucbM2Z5jFm8eNOrLJR+npmXsPHxoz9Gsf3YTenj6RkS179934PAx\nE+7p2tS5KQG3Vmnv+7lz52RZZjpzwCKnTp2KiYnhhQPHs3RKMedr2n3oG92HviGEyViUn3+p\nsKjUx/+GusEh/jU6KXFZWVlaWlpxcbGZdXQ6nRBCdvZBwYADyLJc6b+4p556au3atenp6a7z\nFlWxejrgSyBOxx8fdxQXFxcbG+tSLxzUEjYodoff19w2/VLe2d+sH0qJ0gL9zu2/7v8zp3Hr\n9oMH9Q7xrNznsjZ+uvdy6ciRI5WMlpGRER8fr2TNEydOWJwVcDeSJEmSVGmhVquVJCk6Otop\nka6VnZ1d5WW10uv1zo6AmnC1Fw5qCQuK3ckfVy7ekKHLufLvxXLW979cLHHQJK07P5ww9Nml\nZ0vLyn8MbNH9vY1pj9wUWnGdjZOenKYrUFjs+vbtu2nTJvN77JYuXbply5bIyMgaxwbchcFQ\n9SmNrrfcKYxGY5WX1ao23Ee1cqkXDmoJpcXu74yX28bNK5Gr+NSjTmD40P+utmmqqp37dcbt\nzywWXsGjJo3t0S5cn/n9ko/THut2o48kPdgssGZjenl5DRlSzbnx0tLShBDsTgcAAC5OaVn5\n8In3DV4hq3dJVy7lTOtYv2nfdcXFxZdydPMfvdG/Yd8PZtxp15TlPnp0kfAMWLXv2OoFr499\nevycZV8d+ekdv7KcJ+94uqiqxgkAAFCrKC12H2cXhradP6pblH9g2GMvtT+/b6Wvr29gWIvn\nVuzsmrdhyNw/7Jqy3Hu6S/U7LHzkxpCrS5rETvxpZs+LupRhy484IAAAAIArU1rscgxlAS2a\nlV+u361tSX5GoWwSQnh41Z1+d7O97860V8AKLpfJfg2aVVrY7eVv4sL8N0+KP3iFr6EAAIBa\nTWmxuznA5+KR/eWX/UL6meSSNWf/OYrCv7F/yYXNdkn3b5pgv5zd8y6X/etTVw+voFVfTy0r\nluLuT+LjWAAAUJspLXbP39Yo//hLU5N/yjPIfqF3NfbxWjR7qxBCmIzrNui9/dvYMeP/vDym\nXfGFzbcOn3Hg78KKyxt2T/xsTMxf307uNfGDgjLaHQAAqKWUFrvBq5e28DG9+Wi/kdvPeHgG\nLBjU7NDSwT0G3jegR8v5Un6LobPsmrJc59e+Hd4p9M9PX+sUEdQkMnrD+aKrV92zdOvUu6O2\nL3omPLz18jOFZgYBAABQK6XFzr/BXVnHtr466ck7GvgLIYalfjvy9shdP2zYnJnT+f4pPy0f\naM+Q//Cs03DN7iPLX3u21y3RpReyC4z/v3PO0zt09qaDq2c93dLrzIlivmwHAABqIwtOUHxD\nkx4zF/T459f82yVvPbYk55QxsHGov5d9slXB0zvsiVcWPfFKVdd5+IxKfH9U4pLTR7OO6k47\nLBIAAICLsOqku/UaRIT6e6X1atugQQNbBbKaV9M2nfr0H+TsGAD+IcuyTqdjwlMAcAAbzKZQ\neiEvNzfX+nEAqI8syxqNJjIyUqPRyLJMvQMAu2KaLAB2JEmSVqsV/5sQnfnsAcCuKHYA7Kji\nJOgGg4H57AHArih2AAAAKkGxAwAAUAmKHQAAgEqYO4/dlClTlAzx57krNgoDAACAmjNX7ObM\nmeOwHAAAALCSuWK3cuVKR8UAAACAtcwVu169enn5NGrZLNBhaQAAAFBj5g6eaN26dZcBXzss\nCgAAAKzBUbEAAAAqQbEDADifY+YRlmVZp9O54JzFLhvsWm4UtXai2AFOVvHvI38rcS2TyeTs\nCHYny3JCQoIDbkWj0URGRmo0Gpd6rblssGu5UdRay9zBE0IIw5WD5RN4Vys2NtYWeYBaR6/X\nV7zcsWNHJ4aBC8rOznZ2BLuTJCkzM9MBt1L+jqbVaiVJio6OtvctKuSywa7lRlFrrWqK3UX9\nrD59ZikZqDb8TwnYg9ForPIyUK42bBUGg8HBt+KYW1TIZYNdy42i1lrVFDvfej3vHdzCMVEA\nAABgjWqKXWCTCampDzsmCgAAAKzBwRMAAAAqQbEDAABQCdsUu5O/b7bJOAAAAKgxc9+xGz9+\nfECjNmZWOH90V2pqampKyvYjORwVCwAA4Fzmil1SUlKVy69kZ32ampqamvp95vHyJX5hnMkG\nAADAyao5KrYiw8WTX32yLiU1ddOW/QaTSQjhfUPjuPsfHjFixH0DutgtIQAAABSpvtjJpbk/\nfbE+JSXl87Qdl8pkIYS3XwNRnNOo26JDv4wL8ebwCwAAAJdgrtjt+CY5NSXlk89/PFdSJoTw\n9mvY//77HnzgwXvjY8N8vHxDY2h1AOynfK5xIUTLli09PflrA9Vi0lXYkLlid9vdjwohvP0a\nDnho2AMPPnDfkNjQOvxtBeAI5XONl89KGRsbm56eTreDKsmynJCQ4OwUUI/q/1A279EnbvBd\ndw+6g1YHwGGuzjUu/jfduHPzAHYiSVJmZqazU0A9zHW1ha+O79Y69PiW9ZNH3x0R1LD/Q2NX\nbvqlUOa0JgDsrtL84kw3DrVi24ZtmSt2E2Ym7Tp6/ujOtBnPjowKurJ5/XuP39MrNLTVg89M\nc1g+AAAAKFT9p6utuw+avmjNkXP5v323dtKowaElpz794A0hxOmMUXePfn7dj3tK2YUHAADg\nAhR/bc7Dt8vAEQtWf3O6IPuH1MWj7+7pZzz3zep3hg/oHNKk/WPPv2nPkAAAAKiexcdDePqE\n9X943MqvtuflHv1k6az429sVnz206p2p9ggHAAAA5Wp+oKtPcKsH/5O4cduhCycy35892YaZ\nAAAAUANKi939T0/d8HNWWVVX1WvR+emp822YCQAAADWgtNh9/uGb98V2CG5205MvzcvYf9qu\nmQAAAFADSovdwW2bXh0/omnp0eXzXtLcFNG4Q+x/3/xwj/6iXcMBAABAOaXFLub2ITOT1h4+\nk//75k9fHDPM79TOt6c+fWvL0Bt73TP7vfXH80vtmhIAAADVsvDgCQ+fW+68f+6yz47n5e34\nJnnCI3H5e9ISxz7UJizktrtHL0n9IbeUmYwBAACco+ZHxXp6efv5B9QNqCOEkMuu7EpLHj9i\nYJOQFk/P+9528QC4K1mWdTqdLPPPHlwFWyNqA2+L1i4rydF+vfGLLzZ8uenH05cNQogm7Xs9\n+59hw4bd37VBfsrqVe+/u/TDl+JMt5768M6m9gkMqI3JZKrysluTZVmj0Wi12i5dujg7CyCE\nELIsJyQkVPzRMTfqgFsBKlJa7DaufHfDhg1fffdLXmmZh4dHi5s1zw8bdv/9w3q0bfi/VSLG\nvPTWqKeH+IXEfj19n6DYAcpkZ2dXedmtSZKk1WqFEJmZmc7OAgghhCRJFbdGvV7fsWNHe9+o\nY24FqEhpsRv6+HMeHl7R3Qc8M2zYsGH3dY4MqXo4/8jw8PCWN9e3XUJA5YxGY5WX3ZrBYHB2\nBOBfKm2TjnmtqeYVDTeitNjNWJg8bNjQDk0Dza/m5dtMNbscAAAA3IvSYjd9wiN2zQEAAAAr\nWXDwxIHvkzdo9+hzLlV57bJly2wUCQAAADWhtNgdXDKs4/gvzKxAsQMAAHAupcVu4itpnl6B\nU99fN0LTqZ5vzc9+BwAAADtRWux2XCyNGLB+1pi77JoGAAAANaZ031u3uj7+4aF2jQIAAABr\nKC12bz1364lPJ+wpKLVrGgAAANSY0o9ib03c/OqONj2adXxmwuhOrZt6e1ReYfTo0TaOBgAA\nAEsoLXa5v3/4XkZ2aUnZotnTqlyBYgfA8WrtXJy2uuOyLOt0OiFE8+bNT5061bx5c09P5x8e\nd/r06ZiYGFdI4ni1dpOGrSgtdq8OnXa6pKzf41Mf6tOhLkfFAjDLYW9OU6ZMGTdunLe3Bafk\nrMRN30cTEhJ27dplZfWRZVmj0ZTP6hscHJyfnx8bG5uenu70RjVw4EAXSeJ4NnlmUZsp/Gto\nWnPmSsMuST+uGG/fOABUQa/XO+aGioqK0tPTBwwYUOMR3HSa9szMTEmSoqOjrRlEkqTyVieE\nyM/PF0JotVrrh7UJ10niYDZ5ZlGbKfqfQDacv1QmN+jZ1d5pAKiDI+c+LyoqsubX3Xea9kqz\n2ttqBOuHtRXXSeJgtfaOwyYUFTvPOmFPtKx34pO3C8pM9g4EAACAmlH6xZSFW9ce7Pxgp/5P\nJSWOad8i7NoVoqKibBoMAAAAllFa7AKbDRFCiIzl92Qsr3IFk4mdeQAAAM6ktNiNH89hEwAA\nAC5NabFLSkqyaw4AAABYiTPlAAAAqIS5Ytd16PgfD+ZZNJzh8onFL4966USBdakAAABgMXPF\nblyHnPhOjWMfeGblV9uvyNUcG3Hy9x9fnzSqdaO2C/cEjW4UYNOQAAAAqJ6579g99von8cO/\nmzJ1xlP3fPhMcIved9zeo2ePWzu0CatfPzSknuFy/vnz5/8+cWjnjh07tmt/P5rTqFO/F1dt\nm3x/N4elBwAAwFXVHDwR2j7ug41xbx3fuXTJB1988/3rG9deu45/WKu+/R5Y98G4h/reaJ+Q\nAIQsy3q93kXmaMf1qOBpctPJc6vlRvfr9OnTMTExrr8Jue+sLeqm6KjYeq16vDy/x8vzxcVT\nh7btzsrOPnP2XJ5vUFh4eHjLmFt6dop09a0PcHNXJ2uvODN6xTcqe79pudGbohNV+TS5HVVO\nQi/LckJCggNuxSa/NXDgQJfdhCqm7d27d15enre30tNrwDEsez7qRcQMjoixUxQA13N1svaK\nM6Pr9fqrK9h7Jnt7j68OVT5NbkeVk9BLkpSZmWnvW6n4krTyt1x2E6qY9tKlS+np6QMGDHBi\nHlzLsmInG/O2/5ix/09dweWiKdMSC3Un/Vu2cLl/KADVqTgp+NXLFT8HsfdnInzmokSVT5M7\ncuvwVXLMParZy+R6v+Waz0KltEVFRc5KguuxoJVlZyzt0axZ78H3j5v0wtTEV4QQe2cODI3s\nuuiHmvyPAgAAANtSWuwun/rklrgJu3N9RkxKnD35n4Mkmg4eFnpu33N3dfz4xEW7JQQAAIAi\nSovd+ocm5ZT5rdp/Yu2CWaMGNC1f2PKB2fsOfFZPXJ46Yr3dEgIAAEARpcVu7p7zoe0XPhIT\nXGl53cj4xR3Czu+fb+tgAAAAsIzSYnfWUBYQ0bLKqxo3v6Gs9G+bJQIAAECNKC12cSF+ubtX\nVTWtmLxyV45vUKwtQwEAAMBySovd1Mm3FJ5N7vfSisKKk8aaDBtmDEo+WxidMM0u6QAAAKCY\n0vPYdfzvN+M3tl0874mGyXO7tLwghHjy8ZEHtn2zUyoIavPA1693sWdIAAAAVE/pHjsPr6BF\n26SVs8ZFeZ/7eUeOEGL5ypS9F0JGTJ5/8MC6CB8ve4YEAABA9SyYecLDK3B04uLRiYvz/j55\nNu+yb73Qls0bM+0EAACAi6jJ3L2hTVqENrF5EgA1ZzJVdWiT+4yPWq7i1PLuq5a/TGRZ1uv1\nzZs39/Rkn48zmSt2p0+fVj5Q06ZNrQ4DoIYSExPj4+Ot/3t6vfdXW41vD7X83VQFZFlOSEhw\ndgprybKcmJho2wFtOJq9ybKs0Wi0Wm1sbGx6erpr/q2oJcwVu4iICOUD8bcVcKKsrCxJkqKj\no60cR6+veupnW41vD9nZ2c6OAKtIkpSZmensFNaSJCkrK8uGA+r1+o4dO9pwQLuSJEmr1Qoh\ntFqty/6tqCXMFbsxY8Y4LAcAKxkMBusHMRqNdh3fHsxkhltw2U3LIja/F+61YVe8++p4Qt2X\nuWK3bNkyh+UAAACAlSw7eKLw9J41qRt/3f/nhUuGevXDO3Xr/cDI+5oF1OQIDAAAANiWBZ3s\n+zmPD0tcXVhW4eucHy1+aVKLKcu/eW1Ee9tHAwAAgCWUHrfy17f/iZuysqROxMQ3lm3f9+ff\nZ07t3bllxZxJTUynXx91y5w9uXZNCQAAgGop3WP37lNrPb0CVu7dP7JtUPmSxo2a3tQ99r6h\nXSPaj5r38AcvH2G6WAAAAGdSusdu9dkrwa3futrqrgpqO2J+u5CLJ5faOhgAAAAso7TY1fP2\n8AluVuVVzUJ9PWo0gwUAAABsSGmxm3Zrg7yDM88YKp8IWzbkvLbvfN0W/7F1MAAAAFhGabEb\nuTGlU50Dne98Rns45+rC3MM/j+t/865Lholrn7BPPAAAAChl7iPUrl27VvzREOaXvXVZn5hl\nYc3bRIQFFOaeOqrPFULUCWgvLZwskpPtmxQAhBBMYGh/Dp7zwCmTosqyrNPpymesNxqNO3fu\n7NGjh7e3E75W5C7bsyzLer2+Utpz587JsqxwZtjyEcofc/tkhBDmi92pU6f+vcAvPDxcCCFK\nL535+5IQ3v/8KM5v3rzZXgEBOJC932OsH1+W5aSkJBuO6S5vq/ZwvUbVu3fvvLw8x7QcWZYT\nEhIccEOVjBo1qrCwMDY29ocffmjUqFF+fn5wcHBOTk6N73XN6qksy4mJiVVe5VJbpizLGo1G\nq9W2b/+v09Y+9dRTa9euTU9PVz5CbGxseno63c5+zG3BTK0N1Db2ftVbP74kSZIkVVySm2vV\neTRr8x86vV5f5fJLly6lp6cPGDDAARkkScrMzHTADVVSWFgohNBqtWvWrMnPzxdC5OfnW3Ov\nr/dgmidJUlZWVpVXudSWKUmSVqsVQlybVqvVVnpJmh+hfP3o6Gh75IRQ/h07ALWBvT+Ds378\na+cXt3JM95pq3bbM3PeioiLHZHD6hPHlDa+cNfe6ZhuSmbvvUlum+adJyZNYcR2nP+nqZoNi\nd/h9TWijrtWvBwAAAHuy4MsEJ39cuXhDhi7nyr8Xy1nf/3KxJNi2sQAAAGAppcXu74yX28bN\nK5Gr+C5nncDwof9dbdNUAAAAsJjSj2I/fOJ9g1fI6l3SlUs50zrWb9p3XXFx8aUc3fxHb/Rv\n2PeDGXfaNSUAAACqpbTYfZxdGNp2/qhuUf6BYY+91P78vpW+vr6BYS2eW7Gza96GIXP/sGtK\nAAAAVEtpscsxlAW0+Geu2Prd2pbkZxTKJiGEh1fd6Xc32/vuTHsFBAAAgDJKi93NAT4Xj+wv\nv+wX0s8kl6w5+89RFP6N/UsucIJiAAAAJ1Na7J6/rVH+8ZemJv+UZ5D9Qu9q7OO1aPZWIYQw\nGddt0Hv7t7FjRgAAACigtNgNXr20hY/pzUf7jdx+xsMzYMGgZoeWDu4x8L4BPVrOl/JbDJ1l\n15QAAAColtLTnfg3uCvr2Na5b63wa+AvhBiW+u3IAXet+WGDh6dP5/unfLl8oD1DAgAAoHpK\ni93u3bvrte48c0GPf37Nv13y1mNLck4ZAxv7njv85+HjzW7i01jAoVxqjnCFnJu5ymnajx07\nZjQaHTPhPeCmqnztVLzW09OCiazMjwYrKX0munTp8syWvystrNcgItTf68iyR7p2i7V1MKC2\nqNh1lPceWZYTExMrLbFlLDuQZTkpKalmv1tWVmb9rSckJFy7fOHChQ0aNHCpeTkdxh3/N4Dj\nXe+1c1VCQoJFf38sXR8Wqeaf1JVLkgqM/zz6f3318UJdaOU1TMZf1p0Qwtce4YDaIDc3t8rL\n5kmSlJWVVXGJXq/v2LGjLZPZml6vlySpZr+7a9euTp06WXPrkiRlZmZWeVV+fn56evqAAQOs\nGd8dZWdnOzsC3ICZ1065zMxMvV6vfMDMzExJkqKjo62OhipUU+xmvTD5ePE//8ge/ei1SddZ\nreXgD22aCqhFKu4rUr7fyGAwmBnHNVmTsLi42Mpbv/YRq6ioqMjK8d2R628zcAXmXzvlLN2W\nlIyJmqmm2CWnfV8km4QQ/fr1u2XmmrduD69iiBvqd+9+s13SXd+F7BNHjhw9m3ex8Eqxt19A\nUP3wNu1iWjUOdnAMAAAA11FNsbutr6b8Qlxc3M39+93Zs5H9I5ljKitYv2Dmoo9Sth8+e+21\n4e16jBgz8ZWJDwV7ezg+GwAAgHMpPRDs22+/tWsOJcpKTz/e9abk/ee96oR218R3iolqHBbs\n6+ttLCnJzz1z8mjW9q273nlh+OqUr/ftWN3Ex4IjdAAAAFTAnY7w3/F8XPL+873GL0ydMzYi\noIrkcun51LnjRk1P6f/smKwP+jg8IAAAgDO5026tqclHAxs/szVpQpWtTgjh6VN/5Cvr3uve\n6Ni6xCpXAAAAUDF3KnZ/FBoCmw+pdrVb72houJJV7WoAAAAq407F7p76/hcOzzlTavashnLR\nivU6vxCmOAMAALWOOxW7aXMHlhRs7dDjwTXf7y4su+aE6aaSg1s3jOkf857uYp/p050REAAA\nwJnc6eCJNqM/XfbbgKeXfjEq7nMvn6BWbaKaNAj29a1TVlpSkJt9/OixvGKjh4dH37FLNo2L\ncXZYAAAAR3OnYieE55jFmweN+nLJx6lpGTsPH9pzNOuf/XYenr4RUe379x04fMyEe7o2dW5K\nAG7HJrOmOnj6S3eZbVOWZb1e37x5c4vmiXcY506Ya+ZJNJlMOp3OZR+3Six9GN1l63VH7lXs\nhBCiafehb3Qf+oYQJmNRfv6lwqJSH/8b6gaH+NfopMRlZWVpaWnmZyvS6XSCrRCw2vX+9LvC\niysxMTE+Pt6ad9BqJ0q3uccff/zXX3+1JrMDOo0syxqNRqvVxsbGpqenu2BHSUpKctZNm99m\nkpKSJk6c6AqPm5JXaGKiZSejSEhI2LVrlwtuDyrgfsXuKg9v/5Aw/xDrBsnIyIiPj1ey5okT\nJ6y7KaC2u96U83q9vmPHjg4OU0lWVpaVs5JXO1G6ze3evdvKzLm5uTbMUyVJkrRarRBCq9W6\n5rzvkiQ58abNbDPlwVzhcdPr9dWuk5Vl2ckoMjMznX6/1MqNi51N9O3bd9OmTeb32C1dunTL\nli2RkZEOSwWo0vWmCXeRqeitnJXcKZOaW3mjDnjkKyZk3vdKFD4gTn/c7LSdOP1+qVVtL3Ze\nXl5DhlRzbry0tDQhBHuMAQCAi6OsAAAAqIQ77bHLP5NdWKb0S9ZNm3JsLAAAqF3cqdj995bo\n5WcuK1zZuUewAwAAOJ47FbvXN3/bduWSVxd8UlRmCunY5/YWgc5Oa4G+WwAAIABJREFUBAAA\n4ELcqdg1at/rhbd69Q093mXqrzHj3vvq6XbOTgQAAOBC3O/giY7j5js7AgAAgCtyv2LnU69X\n54jwID8vZwcBAABwLe70UexVu/+q+vz1AAAAtZn77bED4KasOVbdzO+WXyXLsk6nc4VpZ8ud\nOnXq+PHjrpMHVjK/gcmyfO7cOYsGNBqNv//+uy2iVU7iUi8EOB7FDoCDWDTbeqV3pqSkpOu9\nV6WkpBiNRo1GExkZqdFoXOQtLS4uLioqynXyWMoVzhjl+IfuevdalmUzG1j5tU899ZTyAY1G\nY4MGDR599FErA1uU02HcdJtXDYodAAexaLb1SvOOS5J0vV/X6/Xp6ekVZ5q3JqRtuVoe5bKz\nnf+NFyVzz9vW9e61JElmNrCr1yofMD09PT8/34qkVTOf02Ec/8ShIoodAFd07bzjZqYMLyoq\nUrKaU7haHoXsNO+7i2e43i1WfBKvfULNPMXXG7DiFmtD5nM6jCtsPLUZxQ4AAEAlKHYAAAAq\nQbEDAABQCYodAACASlDsAAAAVIJiBwAAoBIUOwAAAJWg2AEAAKgExQ4AAEAlKHYAAAAqQbED\nVMLes7a78sTerjBjPWzOZDLpdDpX2/AsyuPELVOWZZ1OV1pa+vPPPx87dqw8dvlCV3tIYVsU\nO0AlEhMT7fr3OiEhwbnvB2ZuPTEx0ZFJoFzFZ83S7ScxMTEyMlKj0Vi/4dlw07XohZCUlFTl\nyg4ofAkJCZGRkQEBAbGxsa1bt+7bt6/RaNRoNDV4SC1Nyz9azkWxA1QiKytLkiT7jZ+ZmWnX\n8aul1+uvd1VWVpYjk0C5is+amWewSuVPq1artX7Ds/SmzbDohSBJUpUrZ2dn2yrP9WRmZgoh\njEZj+Y8///xzenq6VqsVlj+klqZ1wL2DGRQ7QD0MBoNbj2/e1bcouJGKz1qNn0HrNzzbbjwW\n5alyZadszEVFRVcvW3QXLE3LS9W5KHYAAAAqQbEDAABQCYodAACASlDsAAAAVIJiBwAAoBIU\nOwAAAJWg2AEAAKgExQ4AAEAlKHYAAAAqQbEDYHv2mCzSMRNQ1niW9No2sborTyfvytnsx2g0\n/v7772ZWKCsrc1gYOBHFDnAD1sykbhGblCdZlhMTE60fp5LExER7v1XLslyzWdJlWU5ISLje\nVTZK59DBzW8Jyh+oiuM4rJrX7Ek0P2aNr3UMo9HYoEGDRx991Mw65q+FalDsADdgzUzqFsnN\nzbV+EEmSyqdvt62srCzrJ4M3T5Kkms2SLklS+Zzr17Lr82W/wc1vCcofqIrzwTtmbvgaP4lm\nmH+c7foUK5Senp6fn29+ncLCQseEgXNR7AA3YJOZ1C29oRqzfsp2x4987fjWT/RezvWfrxqM\nrPyBctime1WNn0QzzCd3hTnvi4qKnB0BroJiBwAAoBIUOwAAgP9r7+7jo6jOBY6f2c17AoRA\nAiSAhIAKCCIiIBBCohZ5qYIi1SKCUQvVVkFsK730xc+ter3VFkXbj9X23mpFi7fSasWLvQIJ\nEcFGKmi0wBJCzCsQDC8hyWZ35v4xdV33ZWb2ZTabye/7B5/N5OyZ58x5zuyTzZJjERR2AAAA\nFkFhBwAAYBEUdgAAABZBYQcAAGARFHYAAAAWQWEHAABgERR2AAAAFkFhB1hHDLZSNbX/qATQ\n7UFGXWy2WDXO5XJ5758my3JNTU18XvZt27Y5nU5Zlo8fP27SKUzt3Pss3XiR4y0DoY3CDugB\n/HdSD3iLLy0tNfXWb3b/RgJwu926bWIfpHlnlGV548aNJvX80ksvhfosdbP5FStWeI6Ulpbm\n5+eXlJSYdxHC3rNr7dq16enpxcXF3/rWt6IbkkqW5ZKSEpM693C5XCUlJWZf5GDMy0CYhMIO\n6AH8d1IPuO94ZWVltHY9D8js/o0EsHfvXt02sQ/SvG3gHQ6HScNxOBxhhO2/2bz67l1ZWZl5\nl1130jW4XK7y8vIoBuPN4XCUlZWZ1LnH3r171bOYepGDMS8DYRIKO6AH8N9JPdh7GNHa9TwY\ns/vX1dHRodsm9kGatw28eWMJr2eNzebNC7Wzs9OkniMUm0zzHn7sc7vblzxCRWEHAABgERR2\nAAAAFkFhBwAAYBEUdgAAABZBYQcAAGARFHYAAAAWQWEHAABgERR2AAAAFkFhBwAAYBEUdgAA\nABZBYQf0MIqidHcI3cm84dfW1pqxw3oPna8eGnZsyLJcU1NjRrYEZNW5iOU17FUo7IDuJMvy\nSy+9FNJTNm7c2Jvvhhs3btRtE971mTdvXmlpaRhP1LZ+/Xrz5su8l/xNmzb15jTz4XMpSktL\n8/PzS0pKYnOJvHPeSpOyYMGC4uJiK40oTlDYAd3J4XDU1taG+hSHw2FSPPHPyNhDvaQelZWV\n4T1RQ1VVlXnz1djYaFLPtbW1vTnNfBw4cMD7SzVPysrKws60kHhPRGzOGDPl5eWkWdRR2AHd\nqaurK2bP6j1cLld3h/AV5s2XqSMlzTw6OzsDHo99psVbbkeONIs6CjsAAACLoLADAACwCAo7\nAAAAi6CwAwAAsAgKOwAAAIugsAMAALAICjsAAACLoLADAACwCAo7AAAAi6CwA3qe+vp66/0B\neoQh/reHj0qEsizH54bxTU1NMT5jHF4ExBsKO6DnmTNnzpIlSwJ+y+z7fo94XYl9udNdBdbG\njRvDnhHdJ0Y+17Ise29gH7Z169bl5+eXlJSYnX6hzuOqVatMiiSYZcuWxfiHOrfbHcvTIXIU\ndkCPFOwVzuw9wnvEHuSNjY2WP6PK4XCEvYe67lRGPteRhOetvb1dCFFWVmb2hvEnTpwwtf/I\ntbW1bd++PZZn3Lt3byxPh8hR2AGWYvZP8z3iV8C9amv2sPdQ14058kFFfX93szeM7xHvTqll\nbsx0dHTE8nSIHIUdAACARVDYAQAAWASFHQAAgEVQ2AEAAFgEhR0AAIBFUNgBAABYBIUdAACA\nRVDYAQAAWASFHQAAgEVQ2AGWEm+bacJDluXq6urq6uoY77cry3JNTU0MTlpXV+czuh6xs3Dv\nVFlZeeTIEe0JUjO2paXF1Ej8NzgJKWNjlt49CIUdYCmR7BEuy/JLL72k3Wb9+vW95B4axWHK\nsizLcklJSUFBQUFBQQw2s/c+dUlJSX5+fgxOeu2113qPTpbl0tJSU8+IsK1YsWLUqFHFxcXB\nssKTsQ899JCpkRQWFnrfskLK2Fimdw9CYQdYSiR7hDscDt1936uqqszeiD1O6F6KkLpyOBxl\nZWXqlzHYzN7Dc96YndRzIofDUVlZGYMzImzl5eXBssI7Y0119uxZ71tWSBkb+/TuESjsAKsJ\ne49wgzusm70Re5wI+43PgF35XLSYXUPvE8X4pL0kT3q6YNMUy+nzvmWFlLHdkt7xj8IOAADA\nIijsAAAALILCDgAAwCIo7AAAACyCwg4AAMAiKOwAAAAsgsIOAADAIijsAAAALILCDgAAwCIo\n7AAAACyCwg6wGlmWa2pqjOyfbaSZcS6Xq7y8/MiRI9bYjVuW5erq6urqaiNXsqWlRaOB2+0O\n6bw1NTUul8vg7Ozdu9fg7mf79u1zuVyecSmKYjyqkNTW1pqUA/X19U6ns6KiIoobvqHbOZ3O\nnTt37tix48iRI96L5YMPPjA+0S6XS2PBhrqsejQKO6A7hfSSb9CyZcvy8/NLSko07l+yLJeU\nlPg0i+R+53K5srOzi4qKRo0aVVpaGnY/8WPZsmUFBQUFBQVGruRDDz2k0dWSJUs6OzuNnNQz\nL9nZ2ers6GbIHXfcMXDgQCOvf7fddlt2dnZxcbE6rvXr1xsJKQzz5s0rLi424+Vzzpw56enp\nhYWF2dnZ1HZREQ+XccmSJcXFxSUlJaNGjZoxY4bn+PLly41PdGFhYbAF67+srF3bUdgB3Wnv\n3r1R77OtrU0IUVZW5nA4grVxOBxlZWU+zWpra8M+6fbt21tbW9XHlZWVYfcTP9TLKAxfSQ1u\nt/uFF14wclJPb+rFLCsrM5Ihp0+f3r59u5H+W1tby8vL1cdVVVVGnhKe8vLySNJJg/oy39ra\nanDI0GbGLSgS586d8/7S+ESfPXtWfeC/YP2XlcaKtgAKO6A7dXR0mNd5V1eXkW95Hkfys3t7\ne3vYz41/Bq+khvPnz4d3IoMZEofX3+y3guJwyD2RwfeSu1EYE+2zjvyXlcFl20NR2AEAAFgE\nhR0AAIBFUNgBAABYBIUdAACARVDYAQAAWASFHQAAgEVQ2AEAAFgEhR0AAIBFUNgBAABYBIVd\nrLlcroqKCqfTWVNTo+5m7XQ6fbYulmXZ4XCUl5d3dHTobnftv7exz+buni+jvum7GXpEkNGi\nu3l8jJm3K7yFGczV06dPh/Es4y3jcO6am5tN7b+X3CXMFoeZ4yOMCD/77LNDhw6Vl5erL7Xx\nv7tGdFHYxZS6UXphYWF6enp+fr66m3V6err31sXqdsWjR48uKipKS0vT3u7af29jl8vlvbm7\n917v/pu+x5uAO9NblZHN4yM/RUiNzdsVvqcLdiVlWS4tLTXSw+bNm72/LC0tNTg769atM9Js\n/fr1ATvsxnW0cuVKU/tftmxZPGxg39Nt3Lgx3jLHR7DcFsGDnDt37kUXXVRUVKS+1E6ePNnM\nAOMOhV1MeTZKV+9H3v+KL3Ym9t5TXP1JRWMXZP+9jbdv3+69ubv3Xu/+m77Hm4A701uVkc3j\nIxTSLuwOh8PUXeF7tGBX0uFwVFZWhtFhZWWlwQw3uFFmVVVVwA5DyoGepa2tzeD28NCgvkz4\nH4+fzAmW28JAkOrLa/y/KxldCd0dQO+ie48OtjNxsCf6t/duGay3uN3/OODO9FYVgwGG9H6G\n5S94JIJdyUguWtQveMAOrf2eVhjbw8Nf/GdOsMUSV0HGD96xAwAAsAgKOwAAAIugsAMAALAI\nCjsAAACLoLADAACwCAo7AAAAi+ipf+7k88ajBw8ebj51pu18R0JKer8Bg0dfPGbkkMzujgsA\nAKDb9LDCTnGf3vzLh5767abd/wywWc3gi6d98877fnTfNzITpNjHBgAA0L16UmHndtbffsWl\nLx5osSdmTS25bsKYgiEDM5OTE1ydna0nm44drtq9a+8vHrjlhU1/3f/eC7lJ/JYZAAD0Lj2p\nsHtv7bUvHmiZ+Z0nX/6Pu4emB4hcdra8/Ng9y36y6Zrv3ln17OyYBwgAANCdelJh98MXD2cM\nWbVr473BGtiSBiz90Svntpbd98p68WyFkT7dbvfWrVs7Ojo02tTU1Ih42hEZAAAgoJ5U2H3U\n1pVx8dd1m10+K6er0uhe5jt27LjuuuuMtKyrqzPYp4bU1FTtBomJiSE90b+9d8tgvQU73u28\nA4vbIKMl4AD79OkTsHF6enoYp9DIN/9LbfyCB2ypm9saAj43kg4DXq5IMsr4AjQu4HOj3mEv\nnJdIOgy2AIMdNyJgPOGtaFXU5yXqmRP1iQ71lTHsDi1C6TmWD0pP7lfY2OnWauQ+/+0RfdOy\nv2GwT5fL9frrr2/WtHz5ciHEjh07Ih9CV1dXZmamECIhIcHnXyFEUVGR2+12u91FRUXqEUmS\nhBCZmZldXV2Bh/tFY7XboqKirq4u9YhPb0VFRd7HIx+LGbyjjdsgo8V7oj3T3d7eHrBxZ2en\nJ08M0kgbJdCl9o8noMLCwoBT48ntUPXr1y9gnGF3mJCQ0NnZaeSCRxhhJH3OmjUr4GX0dKhO\nd2ZmZr9+/SLpsHvnxTtpYzYvYXeosQDb29vVu3Gogq2XMFa0KurrJeorOuoTHSy3jQSpXmTP\n3KlfRuX1paKiQgixYcOGCPsxg6QoShgXulsc/v2NF654bcBlN254dN2iqyel27+6zJTOTyq2\n/uKna367/di8pz95854x0Trvk08+uXr16oqKihkzZkTem8vl2rNnz5QpUxoaGnJzc99///0p\nU6aobweOGDHCZrMJIWRZrq6ubmhomDJlSmVl5bRp0zRuAbIs19bWDh06tK6ubvjw4TabTT2i\nPvY0GD58uBDC+3h88gne2mRZrqmpcTqd+/bta2lpueuuu1JSUoI1djqdW7ZscbvdOTk5VVVV\nWVlZkiSdOHFCUZSBAwe2tLQoipKTk5OXl5ebm9vc3Dx9+nTtVw7/Sy3LssPhqKysPH78eFZW\nltqn2rksy3a7fe7cuaNHjw42NS6Xa/fu3YMGDWpoaJBluamp6fjx497h+TwQQlx66aWzZs0K\nFqfL5SovL//oo4/69+8fsAefB6dOncrJyVm8eHFSUlKwIR86dGjbtm1ut1sjqnHjxh06dGjF\nihWVlZWSJM2YMUN7AVZXV9fW1jY1Ncmy7DMj2dnZNpvNZrNNmjRJkqT6+nohxPDhw/Pz84Nd\nRnVe1JvDtGnThBC7du1qbGz071wdcnZ29pQpUwoKCjTmZc+ePZMmTXrzzTcnTJggSVJDQ0Ne\nXp7b7d63b19zc7NPn59//vn48eN15+XAgQOyLGdnZ0uSdPLkyaysrM8//3zs2LEnTpyQJGnS\npEmJiYlDhw7dvXu32+0+efLkokWLdOfF5XJJkuQzwIEDBw4ZMqSpqamlpeWqq65Sk8put2vM\niyeTm5ubZVn26TPgA5vNtnLlSo0F2NHR8fzzz/fr189utw8ePFhRFPXSSZI0aNCgpqamEydO\neK+a1tbWOXPmaKwXp9P52muvNTU1+a8174DVFBJCSJKUm5s7c+ZMI/PiMzrvPoUQ48aN++ST\nT4QQuit6165dDQ0N2gvZ07nBBfj2229nZmb6T/Hx48dzcnLUq6q2t9lskydP1shtNciKigpF\nUXJzc+vq6j755JOrr746MTFRvQVNmzatoaFh8ODBr7/+ek5OzvTp0xsaGqLy+vLuu+/OnDlz\nw4YN9913X4RdRV1PKuyEkJ//ztdW/mq7rCj2pH4jRxfkZmcmJye6nZ2nTzZWHz5yqsMlSdLs\nbz/9t2futkfvrNEt7AAAQI8Wz4VdT/qMnRC2O5/+v7nL/vzMf728dceef376j8NV/6pKJVvy\n0IJx1xTPueXOe6+/Iq97owQAAOgWPauwE0KIvKkLH5m68BEhFFd7a+vZtnZnUmpan8z+qfxR\nYgAA0Lv1vMLOQ0pI7T8wtX93hwEAABAnrP/5dAAAgF6Cwg4AAMAiKOwAAAAsgsIOAADAIijs\nAAAALILCDgAAwCIo7AAAACyCwg4AAMAiKOwAAAAsgsIOAADAIijsAAAALILCDgAAwCIo7AAA\nACyCwg4AAMAiKOwAAAAsIqG7A+gxDh48mJKSEnk/Tqfz4Ycfnjp16rFjxy644ILdu3dPnz69\npqZGUZTRo0fbbDYhhCzLhw8frq+vnz59+p49e2bOnJmQEHSmZFk+cuRIfn7+0aNHCwoKbDab\nekR97GlQUFAghPA+Hp98grc2WZYdDofL5dq/f39bW9utt96qkWNOp3PLli2yLPfv37++vj41\nNVVRlPb2diFEamqq+iA9PX3gwIF5eXlNTU2zZs3SSBsR6FLLsnzo0KF//OMfbW1tnj49D4QQ\nV1555ZgxY4JNjcvl2rVr16BBgxoaGhRFOXnyZFtbm3cP/g8uuOCC4uLiYHG6XK6dO3ceO3Ys\nJSUlWA8+D/r06bNo0aKkpKRgQz548ODu3bsVRdHoKi8vr6Gh4eabb967d68QQvtKqqu1tra2\npaXF7Xb7dJWWliaEsNls48ePt9ls9fX1kiTl5eVdeOGFwS6jOi/qzWHmzJlCiLKyshMnTvh3\nrj7IyMiYMGHCxRdfrDEvFRUVU6ZMefPNN8eOHWuz2RoaGnJzcxVFURPPv0+D86IoSlpampqH\n6hOHDh3a2toqhBg/fnxCQkJ+fn5FRYXb7W5tbb3++uuNzIt/MOnp6VlZWadOnWpra5s6dWpz\nc7N6STXmxTuT1SO6mSOE0F6AHR0dmzZtSklJkSRpwIABkiS1tLTIsixJkic8nz6114vT6Xzt\ntdfOnTsXcK35pJAQQpKk7Ozs2bNnG5kX7T7VDFcURXdFl5WVHT9+XHchixAXoM+KVqe4tbU1\nMzPz888/l2VZbW+z2bRzWw2yvLxcUZQhQ4bU1dV99tlnU6dOTUhIUBSlsbFx5syZx44dGzZs\n2Ouvv56VlTVr1qz6+vrbb79d+95oxMGDByPswUQK9DzzzDPdPUsAACC+PPPMM91doQTAO3b6\nli5d6nK5PD+XROiNN95499138/Ly6uvrvf8VQhQWFg4fPlwIUVtbu2vXLiGE+oPgmDFjJk2a\nFKxDtfGYMWM+/fRTtQf1iE9vhYWFQgjv4/HJJ3hr80y0Kisra+7cucEa79y5U80Tg7TTRgS6\n1D7xBKQxNfv27fv000+NR6gbZ3gd5uXlzZ49O+C3jAzQIyUlpaOjQzvCUPv00LiMaofqbWHM\nmDFCCCMXQXdeMjIyzp07ZzzCqMyL5+YmojcvRiIMr0PtBfjWW2+dOnUq1D415iXUFa2K+nqJ\n+oqO+kRrvxxoB6lmoPpK6vnylltuufTSS0MNw19qaurSpUsj7yf6uruy7HXWrFkjhJg/f77P\nv0KIzZs3q202b96sHlEX8Jo1azQ6VBur3ao9qEd8etu8ebPP8fjUI4KMFs9Ee6Zbo7EnTwzS\nThsl0KX2iScgjalRkzBUGnGG1+H8+fMNXnBtOTk5uhGG2qeHxmVUO1Sne82aNQYvgu685Ofn\nhxRhVObFO2mjNS9GIgyvQ+0FqP1jUjAa8xLqilZFfb1EfUVHfaK1Xw60g1Qvsmfu1C8t//pi\n/Y8xAQAA9BIUdgAAABZBYQcAAGARFHYAAAAWQWEHAABgERR2AAAAFkFhBwAAYBEUdgAAABZB\nYQcAAGARbCkWa3369An4rxAiNTXV50FGRoZ3g4DUxmob9bH3v8G+jFs+0VqbzzDV6Q5GOw3C\naO9/qY1cdo02oUao+6yodxhSXnkaG1mAodJ4lveKNn4FdOclPT09pAijMi/eLaM1L+Z1qL0A\ntb8bRiRxsl5iGWHUF4v26Tzf9cyd9wulhUmKonR3DL2L0+l84oknVq9erW7TuWHDhtWrV5eV\nlQkhrrnmGrvdLoRwu93btm378MMP77333o0bN65duzYpKSlYh263+5133pk9e/bOnTuvuuoq\nu92uHlEfexpcddVVQgjv4/HJJ3hrc7vdf/vb35xO56uvvtrU1LRlyxaNF4/29vZVq1bJsjxi\nxIjdu3cPHjxYCNHQ0CCEGDJkSGNjoxAiLy9v1KhRkyZN+vjjjx944AGNtBGBLrXb7X7rrbf+\n+Mc/1tfXDx48WO1T7VxRFLvdfu+99y5YsCDY1Didzp///Ofjx4//8MMP3W73kSNH1K0wPeH5\nPJAkqaioaN26dcHidDqdDz/8cEVFxaBBgwL24POgqalp6NChzz77bLAbt9vtfvPNN5988klZ\nljWimj59+vvvv//KK68888wzkiR9//vf116A27Zte//9948cOSLLss+M5ObmSpJks9luvPFG\nu92+b98+IcTkyZPnzJkT7DKq86LeHNauXSuEePTRRx0Oh3/n6pDz8vKWLFkyb948jXl54okn\n7r777tWrVy9cuNBut3/44YcTJ06UZfnVV1+tq6vz6bO5uXnWrFm687Jr1y5FUXJzc4UQjY2N\ngwcPbm5unj59ek1NjSRJN954Y3JyclFR0eOPP+5yuY4dO/brX/9ad17cbrckST4DzM3NHTly\nZHV1dVNT07e//e2qqipZlhMSEjTmxZPJdXV1iqL49Bnwgd1u//Of/6yxAM+dO7dw4cJBgwbZ\nbLaRI0cKIaqrq9XO8/Pzq6urGxoavFfN8ePHv/vd72qsl/b29pUrV9bV1fmvNe+A1RQSQkiS\nNHr06AcffNDIvPiMzrtPNcN3794tSZLuin700UcPHz6svZA9nRtcgE899VROTo7/FNfU1IwY\nMeLo0aOessRms910000aua0G+dhjjymKMnHixA8++GD37t133313cnKyLMsHDhxYs2bNrl27\npk+f/p3vfGfkyJHf+973du3aZfnXFwo7AAAAi+AzdgAAABZBYQcAAGARFHYAAAAWQWEHAABg\nERR2AAAAFkFhBwAAYBEUdgAAABZBYQcAAGARFHYAAAAWQWEHAABgERR2AAAAFkFhBwAAYBEU\ndgAAABZBYQcAAGARFHYAAAAWQWEHAABgERR2sXb++AuXXXbZ/rauWPZ8++AMyU9m/iOeBnLX\niV//26opF43ol5aUnpl9RclNz21zRDG2tvrytUvnFQzOSk5Mzho8at7S+3fWngs1SN0GceXE\nvlfvXDgzb2Df9IHDrrz6m1s+aA7WUnY2rVm18t/f+MxzxN1Z4z9Sj9wr3wo7Kndn3S9/sHxi\nweCUxMTMnPxrv7lm+9Gz3g2MzJRG5BHSXB3y337zb7Mn5PdJTskZNva2B55scMqhBmZ2ngek\nMSgDV1tn1KaOKJJbSkiJZN5dUUOwk+quEWOpGEK6GmRgrvVPqtuJq/3oL9feNiF/SGpSyqBh\nY5be+9ixDrfZkRtJY92UMzBxvYaC2Nq68mIhxO4znbHseUiSPSFl5OSvmn3d79TvurtOLB/b\nXwjR54IrlpbetehrM5JtkiTZVzz3UVQCaz/5zoVpiZIkjZt13R3fKp0362IhRELKiL80tRkP\n0kiD+FHz+oOpdikhNXf+4qVLvl6cZrdJtpSfvdsUsPGLyy4UQkz66T88R9yd9ZMDueySbCHE\nhbftCi8qd2f9ovy+QojsS2bcdOvSa4sulSTJnpz30tEzagODM6UReYQ0cnjzPVcIIdJzL/vG\nsluvuXyYECLrkttOu2TjgZmd58EEG5SRq609arNHFPYtJdREMu+uqCHgSXXXiGIsFUNKVyOM\nzLXuSXU76WqrumZYhhBi2OWzl92xbNZlQ4UQfUbcUNvhMi9yg2ms8ypmYOJ6Dwq72DnX7Hj5\nF/ckSFLUb2HaPTvP7hNCXDD//4I9ff+j04QQw7/+6NkvbgHIMTt0AAAO5klEQVTNf9+Ul2y3\nJw2qauuKPLz/mX+BEGLZ7z7wHHn3qXlCiNyil4wHqdsgfjjPfZiXbE8ZUPT+yXb1yMl//CbD\nbkvLvsH/vv7ZW/erP2IZKY82fG1oUp8rDp4Pc1IO/OdUIcTYu/7guUl/+qd7hBADxj2ifmlk\npsKLXJd2Dp+p+ZVdkvqOXN7Q6VaPvLhqnBBi9i8/Nh6Y2XnuT3tQuldbd9TmjSjCW4rxRDLv\nrqhB46S6a8RIKoaUrgbpzrWRk+p28uL84UKIBY++8cWdyv2XR68TQkx4IMwfJo2c1Ega66ac\n7sT1KhR2MTJ7eJb3G6VRvIXp9nym9mEhxLSnq4L1sHZoH0myv3v6K0+suGesEGJheUPkEV6a\nkZTU53K39yH3+QGJ9uR+M40HqdsgfnywfqIQonRHvffBP91184IFCz766stt55m9F6UlZk7I\nNlIe1W69RwjxvZ3hz8h/XZQlhHjt5Hnvg5MykuyJA9XHRmYqjMh16ebw2zeNFELcv/+k54ir\n42hWoi114CLjgZmd5z50B6V7tXVHbdKIIr+lGEwk8+6KGrRPqrtGjKSi8XQ1TneujZxUuxN3\nZ0OG3ZY64LqvTJyi3JqTnpg+rjPcdxt1IzeSxroppztxvQqfsYuR5Wt/9Pjjjz/++ONLstNi\n3PPZo+8KIfJn5QTrYUdrZ1KfKdP7JnkfzLt6sBDixMEzkcanOIfN/tr1N6z8SqrZkpNtQpK+\nPKNukLoN4sezv3XYEvo/PnOI98EbfvPyG2+8cUlagtcx+aFrrqtJuOyt/y7W7dPd+dnibzyX\nd9WG/ywaots4mIE5KUKIT051fhlB14lGp9uecoEQRmcq1MiN0M3hX+1otCVk/nTcly/J9uQR\nPxjet/3klr+f8/6MlFZg5ua5H51BGbjauqM2aUSR3lIMJ5J5d0UN2ifVWSPGUtFwuoZAd66N\nnFS7k/ZTr59zy5kXrvQpC+6YNairreoPx8+bFLmRNNa9/+tOXO/S3ZVlr/O7C7OEOT+bButZ\nfQPp/ucfXzBtQnaf5D5Zgwu/vuLVPV9+3uuj/fsPVNX6POvPi/KFELd/eCLqcSqK8uGmu4QQ\no5b+1XiQug3ihdyVmWBLH7RcUVwVr//3+h/cf9/aB3/98ltn/D5es2/DfEmyP7S7qeWf3xR6\n73u9893xtoS+b5/qiCS01kPPZiXaMoYueG3vwbOdHQ2Ov69bNFIIsejxD4M9xX+mQo08JAFz\nWHa3JduktJybfRrvXFIghFh39LTBwGKf5yrjS977ahsZtdkjCvuW4i9gIumeyFQBT6q9RoxM\nivF0DYn2XBs8qXYn5xqfF0JkX/qyT4P/nTNcCLF4f5gZpZulRtJYN+XCuLlZGIVdrMW+sHvj\nyiFCCEmSLimcv+y2m2dNvliSJJs9bd3Wz4J11Vjxiwy7Lbnv9M+7wv+0r7/av/7k5sULZ0zM\nF0JMvG6157MgRoIMYxTdouv8QSFE32Hfv3f2cO+foPqOnLPjeLun2ZmaTf0SbJes2qIoim55\n1HHqb30TbGNWvh15eE3vPT8g0e4d2Def3unfTGOmQoo8VAFzuOv8p0KIfiN+5tN4308vE0Is\nrjoZdmAm5bkP3SUf8GobHLWP6I4o8luKRiIZOZGpgp1UY40YmZTwJi4M3nMd9km9O5G7TmUn\n2hPTLqr3miZ3Z8PlfZKEENds8629ohK5wQZGUs7gza03oLCLtdgXdj+6aEifvgMf+P2XH2R2\nbH002SYlpo1p9LvPyq7WF39WmmG32ROzn/p7lN/GOPjc4osvGpWTkShJtklz79rV+OXnIXSD\nDGkU3ajz9LvqPSW53/gn/lTe0NrefLTqyXuuFkL0K7hdDVTualk8LCN9yPUnutyKgSrk1UX5\ntoS+70WcM86zB26YOFAIMb7kulX33XfLwmsy7LbkzEue2+d73w82U6FGHqqAOdx5epcQon/B\nUz6NP3p8ihBi3u7GMAIzNc996C75gFfbyKi9mTGiyG8pGkveyIlMFfCk2mvEyKSEOnFh8J/r\nME4aMGH+7+7xQoghhaU7Dxw533Hm079vXTr1X7/9LNly1IzIDTbQTTnjN7fegMIu1mJf2AW0\n+drhQohllc3eBw/+769njegjhOh/8ZzN+1uiHuG/yJ3lL/4wxSalDZqv/YHcgEGG1CD2nGcr\n1fvgU59+7n38PyZlCyF+VN2qKMqf755gs6f97lCr+i3tKqSztSzNbhs+79XIY/vJxIGSJD34\npwOeI62fvnlRWmJi2kWB/5yB30yFFHkYAr9j1/axEKLfiId9GqvvRiz66ESogcUoz79gdGF+\n9WobGbWHSSOK/JbyL3pLPn4KO+01YmRSQpq4MASc61BPGixhZFfrD+Zf6P2mV/8xi55bf6kQ\nYm5FpP/BSDdLQ01j75QL+eZmaRR2sRYnhd2xrVcLIaZu+Nf/hHd3tfxn6UwhRGLGyLVPbjnv\nNvE3U6qXi/KEEA8d0/rEiU+QYTSIPbezSQiR3K/Q53j1/xQLIab/5tOT+39mk6Sif9/t+ZZ2\nFfL+DyYIIR47EuZHczw6WncKIfrlP+RzfN+PLxNCLNheF+yJnpkKNfIwBPmM3bkUm5Q+aJlP\n47KbRwkhvlfdajyw2Oe5EuLC9Fxt3VGrX5o6okhuKf40lnycFHa6a8TIpBicuDBozLXxkxpJ\nmANvv/Lj769Zdc/qR371SpPT/d7dY4UQ9zo+928ZeeTGo/LnSbmwb25WRWEXazEv7Nwul8t/\nmdS9M0cIMfN3BxVFkd3nVhcOEUJMWPzDg2ed0Y3qbN2GhQsXrn7B4XNcXXKLDpwwFqT+KOLH\npIwk/79rUF92rRDiyqc/OfTfhSK4IdO2fuVpcte0vskpmVdF/nJ95rPHhBDDrvH9oF5DxVwh\nxJRffKQ7U6FFHpZgq+P6Aan2xOz2r/7K/anR/YUQ753pNBiYqXmuIeCgjKwL7VEr5o8ovFuK\nsSVv5ETm8j+p7hpRDEyKwTah0p1rIycNL2E2XJQlSdIe0yI3EJVOyhmZuF6Fwi7WYlzYnT/x\nP0KIgROe8Gn818UjxRe/Gdz38AwhxGX3bop6SIqitDX/QQiRc9nvfY6/WpwnhPhZ7RkjQRoZ\nRfzYVJgr2ZL2nvnKHep/bxklhFh14GRTxSMrvuqbi0YKIQZMvG7FihX3/ft+72e1HvmJEOLi\nuyoij6rzdIUQos/Q+32O77l/vBBiUVm97kyFFHl4gq2Ot2/IF0I8dPjL9wzczhN5yfbUgQsV\nRTEYmKl5riHgoIysC+1RK+aPKLxbipGhGTmR2fxPqrtGFAOTYrBNqHTn2shJdTt57LZv3HDj\nree8aqiuto/6J9gyhnzLvMh1G+imnJGJ61Uo7GIt9r+KvSU3Q5LsP/jLPz1H6suf7ptgSx9y\nU5esKIprcp+kxPRxpv3HQHnBgFSbvc/zlV/+pN689zd9E2zJ/Wa2fXEH0QtSv0H8aPn4ESFE\n3jXr6r74IPmx7c9kJtiS+84IuKeQxi803187XgjxnU+i86mpBy7qL4S449kdniON728anpKQ\nkDLicLvL4EwZjDw8wXL4zNFfSZKUffk6zxsSO39WKIQoCvKLv0CBmZ3nQQUZlP7V1hu16SMK\n95YSciLFSWGn6K8RQ6kYaroaoD/XBk6q38nbt44WQnx9w3vql7L73M8XjhBC3PFW2H98QPek\nhtJY9/6vO3G9CoVdrMW+sDv18W9zk+2SJI0vnr/89luvmTExQZIS00ZvcpxWFKW95Q0hREJK\n/uxAHvzkVOSBNe/5j3S7TbKlTp+7+I47l8+dfUWyTbIl9H+s/Mv/q6UdpJEGceX3pZcIIdIG\nj7v+luVfL5mSKEn2xIFP7DkesLFGeXRfXh9JSqjrjM6N6VzdG2P7JAkhhl1edMuK5fNLpiTa\nJJs97XuvVasNjMyUwcjDo7E6Xll1qRAid9qidT/+8crFMyVJ6j9mxakgLwb+gcUgz4MJNigj\nV1tj1DEYUXi3FINDM3IiUwU8qe4aUYylYkjpqsvgXGuf1EgnzrOVk/slCyHGlVxXWnrrtFH9\nhBATbns2vLCNnNTg0HRTzsjE9R4UdrHWLf954mzNrgdWXD8qd2CyPTFr8KiFpT/c0/Cv3bhb\nj6wRwc2P0l8APrFv8503zM7LyUq0J/UfNHLuLfe99YnvR3E1gjTYII7IXX/5xQMzxl6QkZzQ\nd0BuyY2rtlYF/ehxsPLI1X4kySZFsg2Rv46T+366avHYYdnJCQl9B+QVL7zrtb9/pdw0MlO6\nkYdNc3W4/vLE/VNGD01LTBowpODm7z5WF/zP3PgHFps8D0hjUAaudtBRx2BE4d1SDA/N0InM\nE+ykumvEWCqGkK66DM+11kkNdtJxcv+/3XbthcOyk1L7jZ509UPPvRPJG8K6JzWexropZ2Di\negtJURSNywoAAICegr1iAQAALILCDgAAwCIo7AAAACyCwg4AAMAiKOwAAAAsgsIOAADAIijs\nAAAALILCDgAAwCIo7AAAACyCwg4AAMAiKOwAAAAsgsIOAADAIijsAAAALILCDgAAwCIo7AAA\nACyCwg4AAMAiKOwAAAAsgsIOAADAIijsAAAALILCDgAAwCIo7AAAACyCwg4AAMAiKOwAAAAs\ngsIOAADAIijsAAAALILCDgAAwCIo7AAAACyCwg4AAMAiKOwAAAAsgsIOAADAIijsAAAALILC\nDgAAwCIo7AAAACyCwg4AAMAiKOwAAAAsgsIOAADAIijsAAAALILCDgAAwCIo7AAAACyCwg4A\nAMAiKOwAAAAsgsIOAADAIijsAAAALILCDgAAwCIo7AAAACyCwg4AAMAiKOwAAAAsgsIOAADA\nIijsAAAALILCDgAAwCIo7AAAACyCwg4AAMAiKOwAAAAsgsIOAADAIijsAAAALILCDgAAwCIo\n7AAAACyCwg4AAMAiKOwAAAAsgsIOAADAIijsAAAALILCDgAAwCIo7AAAACyCwg4AAMAiKOwA\nAAAsgsIOAADAIijsAAAALILCDgAAwCIo7AAAACyCwg4AAMAiKOwAAAAsgsIOAADAIijsAAAA\nLILCDgAAwCIo7AAAACyCwg4AAMAi/h+yunXwbUCUYgAAAABJRU5ErkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "sum(is.na(myIndyOrigins$DepTime))\n",
    "sum(myDf$Dest==\"LAX\")\n",
    "sum(myDf$Origin==\"ATL\" & myDf$Dest==\"LAX\")\n",
    "myATLandLAX<-subset(myDf, myDf$Origin==\"ATL\" & myDf$Dest==\"LAX\")\n",
    "sum(myATLandLAX$DepTime<1200, na.rm=TRUE)\n",
    "table(myATLandLAX$DepTime)\n",
    "plot(table(myATLandLAX$DepTime))"
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "none",
   "dataSources": [],
   "dockerImageVersionId": 30749,
   "isGpuEnabled": false,
   "isInternetEnabled": true,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.4.0"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 77.856538,
   "end_time": "2026-02-25T21:12:08.620913",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2026-02-25T21:10:50.764375",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
