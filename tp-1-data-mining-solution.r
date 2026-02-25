{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "fa228099",
   "metadata": {
    "_cell_guid": "b1076dfc-b9ad-4769-8c92-a6c4dae69d19",
    "_uuid": "8f2839f25d086af736a60e9eeb907d3b93b6e0e5",
    "execution": {
     "iopub.execute_input": "2026-02-25T21:07:25.500352Z",
     "iopub.status.busy": "2026-02-25T21:07:25.498055Z",
     "iopub.status.idle": "2026-02-25T21:07:37.739723Z",
     "shell.execute_reply": "2026-02-25T21:07:37.737655Z"
    },
    "papermill": {
     "duration": 12.251277,
     "end_time": "2026-02-25T21:07:37.743124",
     "exception": false,
     "start_time": "2026-02-25T21:07:25.491847",
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
   "id": "fa3e4e05",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:07:37.785761Z",
     "iopub.status.busy": "2026-02-25T21:07:37.752563Z",
     "iopub.status.idle": "2026-02-25T21:08:37.543123Z",
     "shell.execute_reply": "2026-02-25T21:08:37.541369Z"
    },
    "papermill": {
     "duration": 59.798632,
     "end_time": "2026-02-25T21:08:37.545688",
     "exception": false,
     "start_time": "2026-02-25T21:07:37.747056",
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
   "id": "b7e280ae",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:08:37.556421Z",
     "iopub.status.busy": "2026-02-25T21:08:37.554831Z",
     "iopub.status.idle": "2026-02-25T21:08:37.599657Z",
     "shell.execute_reply": "2026-02-25T21:08:37.597821Z"
    },
    "papermill": {
     "duration": 0.053012,
     "end_time": "2026-02-25T21:08:37.602370",
     "exception": false,
     "start_time": "2026-02-25T21:08:37.549358",
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
   "id": "2a0e63ab",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:08:37.614072Z",
     "iopub.status.busy": "2026-02-25T21:08:37.612436Z",
     "iopub.status.idle": "2026-02-25T21:08:37.630716Z",
     "shell.execute_reply": "2026-02-25T21:08:37.628825Z"
    },
    "papermill": {
     "duration": 0.026956,
     "end_time": "2026-02-25T21:08:37.633332",
     "exception": false,
     "start_time": "2026-02-25T21:08:37.606376",
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
   "id": "d79cfaf1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:08:37.645738Z",
     "iopub.status.busy": "2026-02-25T21:08:37.644042Z",
     "iopub.status.idle": "2026-02-25T21:08:37.662321Z",
     "shell.execute_reply": "2026-02-25T21:08:37.660409Z"
    },
    "papermill": {
     "duration": 0.027661,
     "end_time": "2026-02-25T21:08:37.665071",
     "exception": false,
     "start_time": "2026-02-25T21:08:37.637410",
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
   "id": "36f11bdc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:08:37.677312Z",
     "iopub.status.busy": "2026-02-25T21:08:37.675446Z",
     "iopub.status.idle": "2026-02-25T21:08:37.759003Z",
     "shell.execute_reply": "2026-02-25T21:08:37.756863Z"
    },
    "papermill": {
     "duration": 0.092763,
     "end_time": "2026-02-25T21:08:37.762039",
     "exception": false,
     "start_time": "2026-02-25T21:08:37.669276",
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
   "id": "1be4973c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:08:37.775732Z",
     "iopub.status.busy": "2026-02-25T21:08:37.773654Z",
     "iopub.status.idle": "2026-02-25T21:08:37.863468Z",
     "shell.execute_reply": "2026-02-25T21:08:37.861336Z"
    },
    "papermill": {
     "duration": 0.100173,
     "end_time": "2026-02-25T21:08:37.866684",
     "exception": false,
     "start_time": "2026-02-25T21:08:37.766511",
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
   "id": "2736588b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:08:37.880417Z",
     "iopub.status.busy": "2026-02-25T21:08:37.878398Z",
     "iopub.status.idle": "2026-02-25T21:08:37.967608Z",
     "shell.execute_reply": "2026-02-25T21:08:37.965458Z"
    },
    "papermill": {
     "duration": 0.099211,
     "end_time": "2026-02-25T21:08:37.970546",
     "exception": false,
     "start_time": "2026-02-25T21:08:37.871335",
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
   "id": "92aef671",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:08:38.040438Z",
     "iopub.status.busy": "2026-02-25T21:08:38.038823Z",
     "iopub.status.idle": "2026-02-25T21:08:38.107011Z",
     "shell.execute_reply": "2026-02-25T21:08:38.105314Z"
    },
    "papermill": {
     "duration": 0.134602,
     "end_time": "2026-02-25T21:08:38.109730",
     "exception": false,
     "start_time": "2026-02-25T21:08:37.975128",
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
   "id": "68a4a44c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:08:38.122861Z",
     "iopub.status.busy": "2026-02-25T21:08:38.121277Z",
     "iopub.status.idle": "2026-02-25T21:08:38.189947Z",
     "shell.execute_reply": "2026-02-25T21:08:38.188107Z"
    },
    "papermill": {
     "duration": 0.078102,
     "end_time": "2026-02-25T21:08:38.192580",
     "exception": false,
     "start_time": "2026-02-25T21:08:38.114478",
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
   "id": "d55e5d2f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:08:38.205710Z",
     "iopub.status.busy": "2026-02-25T21:08:38.204107Z",
     "iopub.status.idle": "2026-02-25T21:08:38.378963Z",
     "shell.execute_reply": "2026-02-25T21:08:38.377190Z"
    },
    "papermill": {
     "duration": 0.184102,
     "end_time": "2026-02-25T21:08:38.381421",
     "exception": false,
     "start_time": "2026-02-25T21:08:38.197319",
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
   "id": "cac2f0f6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:08:38.394641Z",
     "iopub.status.busy": "2026-02-25T21:08:38.393098Z",
     "iopub.status.idle": "2026-02-25T21:08:39.051419Z",
     "shell.execute_reply": "2026-02-25T21:08:39.049235Z"
    },
    "papermill": {
     "duration": 0.667755,
     "end_time": "2026-02-25T21:08:39.054064",
     "exception": false,
     "start_time": "2026-02-25T21:08:38.386309",
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
   "id": "8e707854",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:08:39.075239Z",
     "iopub.status.busy": "2026-02-25T21:08:39.072458Z",
     "iopub.status.idle": "2026-02-25T21:08:39.509984Z",
     "shell.execute_reply": "2026-02-25T21:08:39.508168Z"
    },
    "papermill": {
     "duration": 0.449912,
     "end_time": "2026-02-25T21:08:39.512471",
     "exception": false,
     "start_time": "2026-02-25T21:08:39.062559",
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
   "id": "9fb191d2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:08:39.527002Z",
     "iopub.status.busy": "2026-02-25T21:08:39.525445Z",
     "iopub.status.idle": "2026-02-25T21:08:39.612425Z",
     "shell.execute_reply": "2026-02-25T21:08:39.609942Z"
    },
    "papermill": {
     "duration": 0.097713,
     "end_time": "2026-02-25T21:08:39.615706",
     "exception": false,
     "start_time": "2026-02-25T21:08:39.517993",
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
   "id": "cf83f005",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:08:39.630507Z",
     "iopub.status.busy": "2026-02-25T21:08:39.628808Z",
     "iopub.status.idle": "2026-02-25T21:08:40.066658Z",
     "shell.execute_reply": "2026-02-25T21:08:40.064189Z"
    },
    "papermill": {
     "duration": 0.448784,
     "end_time": "2026-02-25T21:08:40.070032",
     "exception": false,
     "start_time": "2026-02-25T21:08:39.621248",
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
   "id": "67f45e58",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:08:40.086548Z",
     "iopub.status.busy": "2026-02-25T21:08:40.085009Z",
     "iopub.status.idle": "2026-02-25T21:08:40.123295Z",
     "shell.execute_reply": "2026-02-25T21:08:40.121011Z"
    },
    "papermill": {
     "duration": 0.049403,
     "end_time": "2026-02-25T21:08:40.126442",
     "exception": false,
     "start_time": "2026-02-25T21:08:40.077039",
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
   "duration": 79.084936,
   "end_time": "2026-02-25T21:08:40.357198",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2026-02-25T21:07:21.272262",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
