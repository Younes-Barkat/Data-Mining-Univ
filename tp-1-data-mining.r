{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "41f0e7eb",
   "metadata": {
    "_cell_guid": "b1076dfc-b9ad-4769-8c92-a6c4dae69d19",
    "_uuid": "8f2839f25d086af736a60e9eeb907d3b93b6e0e5",
    "execution": {
     "iopub.execute_input": "2026-02-25T20:56:09.584234Z",
     "iopub.status.busy": "2026-02-25T20:56:09.582043Z",
     "iopub.status.idle": "2026-02-25T20:56:21.407939Z",
     "shell.execute_reply": "2026-02-25T20:56:21.405945Z"
    },
    "papermill": {
     "duration": 11.833889,
     "end_time": "2026-02-25T20:56:21.411770",
     "exception": false,
     "start_time": "2026-02-25T20:56:09.577881",
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
   "id": "1de082e5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T20:56:21.449535Z",
     "iopub.status.busy": "2026-02-25T20:56:21.417034Z",
     "iopub.status.idle": "2026-02-25T20:57:15.557217Z",
     "shell.execute_reply": "2026-02-25T20:57:15.555314Z"
    },
    "papermill": {
     "duration": 54.14602,
     "end_time": "2026-02-25T20:57:15.559591",
     "exception": false,
     "start_time": "2026-02-25T20:56:21.413571",
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
   "id": "ad679f33",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-02-25T20:57:15.566913Z",
     "iopub.status.busy": "2026-02-25T20:57:15.565382Z",
     "iopub.status.idle": "2026-02-25T20:57:15.610035Z",
     "shell.execute_reply": "2026-02-25T20:57:15.608236Z"
    },
    "papermill": {
     "duration": 0.051509,
     "end_time": "2026-02-25T20:57:15.612696",
     "exception": false,
     "start_time": "2026-02-25T20:57:15.561187",
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
   "duration": 69.453565,
   "end_time": "2026-02-25T20:57:15.836347",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2026-02-25T20:56:06.382782",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
