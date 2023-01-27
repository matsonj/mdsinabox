FROM nikolaik/python-nodejs:python3.9-nodejs19-bullseye

WORKDIR /workspaces/nba-monte-carlo

# Install deps first

# Node deps
RUN mkdir reports
COPY reports/package.json reports/
COPY reports/package-lock.json reports/

RUN npm --prefix=reports ci && npm --prefix=reports cache clean --force

# Python deps
COPY requirements.txt .
RUN pip3 install -r requirements.txt

# Now copy over code/config/etc.
COPY ./data ./data
COPY ./models ./models
COPY ./macros ./macros
COPY ./reports ./reports
COPY ./seeds ./seeds

COPY dbt_project.yml .
COPY profiles.yml .
