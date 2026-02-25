{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "bb22f505",
   "metadata": {
    "_cell_guid": "b1076dfc-b9ad-4769-8c92-a6c4dae69d19",
    "_uuid": "8f2839f25d086af736a60e9eeb907d3b93b6e0e5",
    "execution": {
     "iopub.execute_input": "2026-02-25T20:59:45.753630Z",
     "iopub.status.busy": "2026-02-25T20:59:45.750932Z",
     "iopub.status.idle": "2026-02-25T21:00:23.254446Z",
     "shell.execute_reply": "2026-02-25T21:00:23.252378Z"
    },
    "papermill": {
     "duration": 37.512518,
     "end_time": "2026-02-25T21:00:23.258557",
     "exception": false,
     "start_time": "2026-02-25T20:59:45.746039",
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
   "id": "7d664226",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:00:23.306395Z",
     "iopub.status.busy": "2026-02-25T21:00:23.267048Z",
     "iopub.status.idle": "2026-02-25T21:01:27.162551Z",
     "shell.execute_reply": "2026-02-25T21:01:27.160629Z"
    },
    "papermill": {
     "duration": 63.903674,
     "end_time": "2026-02-25T21:01:27.166045",
     "exception": false,
     "start_time": "2026-02-25T21:00:23.262371",
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
   "id": "7d0c798b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:01:27.177474Z",
     "iopub.status.busy": "2026-02-25T21:01:27.175776Z",
     "iopub.status.idle": "2026-02-25T21:01:27.225313Z",
     "shell.execute_reply": "2026-02-25T21:01:27.223297Z"
    },
    "papermill": {
     "duration": 0.058,
     "end_time": "2026-02-25T21:01:27.228331",
     "exception": false,
     "start_time": "2026-02-25T21:01:27.170331",
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
   "id": "5dab8259",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:01:27.238778Z",
     "iopub.status.busy": "2026-02-25T21:01:27.236734Z",
     "iopub.status.idle": "2026-02-25T21:01:27.259643Z",
     "shell.execute_reply": "2026-02-25T21:01:27.257551Z"
    },
    "papermill": {
     "duration": 0.030994,
     "end_time": "2026-02-25T21:01:27.262707",
     "exception": false,
     "start_time": "2026-02-25T21:01:27.231713",
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
   "id": "fc5bd3bc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:01:27.273487Z",
     "iopub.status.busy": "2026-02-25T21:01:27.271699Z",
     "iopub.status.idle": "2026-02-25T21:01:27.294822Z",
     "shell.execute_reply": "2026-02-25T21:01:27.292757Z"
    },
    "papermill": {
     "duration": 0.033122,
     "end_time": "2026-02-25T21:01:27.299131",
     "exception": false,
     "start_time": "2026-02-25T21:01:27.266009",
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
   "id": "976e309c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:01:27.309143Z",
     "iopub.status.busy": "2026-02-25T21:01:27.307307Z",
     "iopub.status.idle": "2026-02-25T21:01:27.394403Z",
     "shell.execute_reply": "2026-02-25T21:01:27.391997Z"
    },
    "papermill": {
     "duration": 0.095616,
     "end_time": "2026-02-25T21:01:27.397831",
     "exception": false,
     "start_time": "2026-02-25T21:01:27.302215",
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
   "id": "e0984382",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T21:01:27.409264Z",
     "iopub.status.busy": "2026-02-25T21:01:27.407249Z",
     "iopub.status.idle": "2026-02-25T21:01:27.500471Z",
     "shell.execute_reply": "2026-02-25T21:01:27.498090Z"
    },
    "papermill": {
     "duration": 0.102332,
     "end_time": "2026-02-25T21:01:27.503787",
     "exception": false,
     "start_time": "2026-02-25T21:01:27.401455",
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
   "execution_count": null,
   "id": "2a33dcdf",
   "metadata": {
    "papermill": {
     "duration": 0.003372,
     "end_time": "2026-02-25T21:01:27.510417",
     "exception": false,
     "start_time": "2026-02-25T21:01:27.507045",
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
   "duration": 105.767048,
   "end_time": "2026-02-25T21:01:27.738433",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2026-02-25T20:59:41.971385",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
