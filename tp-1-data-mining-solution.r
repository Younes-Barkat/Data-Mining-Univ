{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "0bb0abb5",
   "metadata": {
    "_cell_guid": "b1076dfc-b9ad-4769-8c92-a6c4dae69d19",
    "_uuid": "8f2839f25d086af736a60e9eeb907d3b93b6e0e5",
    "execution": {
     "iopub.execute_input": "2026-02-25T21:04:09.263677Z",
     "iopub.status.busy": "2026-02-25T21:04:09.261874Z",
     "iopub.status.idle": "2026-02-25T21:04:20.677601Z",
     "shell.execute_reply": "2026-02-25T21:04:20.675892Z"
    },
    "papermill": {
     "duration": 11.424024,
     "end_time": "2026-02-25T21:04:20.680985",
     "exception": false,
     "start_time": "2026-02-25T21:04:09.256961",
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
   "id": "405999c4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:04:20.714300Z",
     "iopub.status.busy": "2026-02-25T21:04:20.688451Z",
     "iopub.status.idle": "2026-02-25T21:05:02.808358Z",
     "shell.execute_reply": "2026-02-25T21:05:02.806845Z"
    },
    "papermill": {
     "duration": 42.126632,
     "end_time": "2026-02-25T21:05:02.810709",
     "exception": false,
     "start_time": "2026-02-25T21:04:20.684077",
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
   "id": "fb940296",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:05:02.819618Z",
     "iopub.status.busy": "2026-02-25T21:05:02.818377Z",
     "iopub.status.idle": "2026-02-25T21:05:02.853433Z",
     "shell.execute_reply": "2026-02-25T21:05:02.851999Z"
    },
    "papermill": {
     "duration": 0.041211,
     "end_time": "2026-02-25T21:05:02.855494",
     "exception": false,
     "start_time": "2026-02-25T21:05:02.814283",
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
   "id": "b2f995b4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:05:02.864026Z",
     "iopub.status.busy": "2026-02-25T21:05:02.862760Z",
     "iopub.status.idle": "2026-02-25T21:05:02.876794Z",
     "shell.execute_reply": "2026-02-25T21:05:02.875341Z"
    },
    "papermill": {
     "duration": 0.020052,
     "end_time": "2026-02-25T21:05:02.878631",
     "exception": false,
     "start_time": "2026-02-25T21:05:02.858579",
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
   "id": "3065aec0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:05:02.887128Z",
     "iopub.status.busy": "2026-02-25T21:05:02.885866Z",
     "iopub.status.idle": "2026-02-25T21:05:02.899725Z",
     "shell.execute_reply": "2026-02-25T21:05:02.898309Z"
    },
    "papermill": {
     "duration": 0.019922,
     "end_time": "2026-02-25T21:05:02.901542",
     "exception": false,
     "start_time": "2026-02-25T21:05:02.881620",
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
   "id": "5fedbf16",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:05:02.910657Z",
     "iopub.status.busy": "2026-02-25T21:05:02.909216Z",
     "iopub.status.idle": "2026-02-25T21:05:02.968444Z",
     "shell.execute_reply": "2026-02-25T21:05:02.966777Z"
    },
    "papermill": {
     "duration": 0.065871,
     "end_time": "2026-02-25T21:05:02.970526",
     "exception": false,
     "start_time": "2026-02-25T21:05:02.904655",
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
   "id": "ad641e36",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:05:02.979895Z",
     "iopub.status.busy": "2026-02-25T21:05:02.978357Z",
     "iopub.status.idle": "2026-02-25T21:05:03.043072Z",
     "shell.execute_reply": "2026-02-25T21:05:03.041471Z"
    },
    "papermill": {
     "duration": 0.071482,
     "end_time": "2026-02-25T21:05:03.045181",
     "exception": false,
     "start_time": "2026-02-25T21:05:02.973699",
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
   "id": "8a1ff6cd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:05:03.055082Z",
     "iopub.status.busy": "2026-02-25T21:05:03.053519Z",
     "iopub.status.idle": "2026-02-25T21:05:03.118785Z",
     "shell.execute_reply": "2026-02-25T21:05:03.117078Z"
    },
    "papermill": {
     "duration": 0.072599,
     "end_time": "2026-02-25T21:05:03.121122",
     "exception": false,
     "start_time": "2026-02-25T21:05:03.048523",
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
   "id": "8f9a28c0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:05:03.184768Z",
     "iopub.status.busy": "2026-02-25T21:05:03.129902Z",
     "iopub.status.idle": "2026-02-25T21:05:03.232000Z",
     "shell.execute_reply": "2026-02-25T21:05:03.230648Z"
    },
    "papermill": {
     "duration": 0.108981,
     "end_time": "2026-02-25T21:05:03.233815",
     "exception": false,
     "start_time": "2026-02-25T21:05:03.124834",
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
   "id": "f7d4918a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:05:03.243487Z",
     "iopub.status.busy": "2026-02-25T21:05:03.242200Z",
     "iopub.status.idle": "2026-02-25T21:05:03.291526Z",
     "shell.execute_reply": "2026-02-25T21:05:03.290180Z"
    },
    "papermill": {
     "duration": 0.055937,
     "end_time": "2026-02-25T21:05:03.293240",
     "exception": false,
     "start_time": "2026-02-25T21:05:03.237303",
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
   "id": "52718e5f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:05:03.303041Z",
     "iopub.status.busy": "2026-02-25T21:05:03.301850Z",
     "iopub.status.idle": "2026-02-25T21:05:03.434202Z",
     "shell.execute_reply": "2026-02-25T21:05:03.432822Z"
    },
    "papermill": {
     "duration": 0.139222,
     "end_time": "2026-02-25T21:05:03.436210",
     "exception": false,
     "start_time": "2026-02-25T21:05:03.296988",
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
   "id": "40f47398",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:05:03.446867Z",
     "iopub.status.busy": "2026-02-25T21:05:03.445600Z",
     "iopub.status.idle": "2026-02-25T21:05:03.997864Z",
     "shell.execute_reply": "2026-02-25T21:05:03.996435Z"
    },
    "papermill": {
     "duration": 0.559955,
     "end_time": "2026-02-25T21:05:03.999934",
     "exception": false,
     "start_time": "2026-02-25T21:05:03.439979",
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
   "id": "fcf9cec4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:05:04.009978Z",
     "iopub.status.busy": "2026-02-25T21:05:04.008765Z",
     "iopub.status.idle": "2026-02-25T21:05:04.386853Z",
     "shell.execute_reply": "2026-02-25T21:05:04.385451Z"
    },
    "papermill": {
     "duration": 0.385194,
     "end_time": "2026-02-25T21:05:04.388847",
     "exception": false,
     "start_time": "2026-02-25T21:05:04.003653",
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
   "execution_count": null,
   "id": "12f80054",
   "metadata": {
    "papermill": {
     "duration": 0.004133,
     "end_time": "2026-02-25T21:05:04.397309",
     "exception": false,
     "start_time": "2026-02-25T21:05:04.393176",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": []
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
   "duration": 57.684239,
   "end_time": "2026-02-25T21:05:04.521827",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2026-02-25T21:04:06.837588",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
