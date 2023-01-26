Minimalist Modern Data Stack In A Box
-------------------------------------

Building the [MDS-in-a-box](https://duckdb.org/2022/10/12/modern-data-stack-in-a-box.html) project
but stripping it down to only use [DuckDB](https://duckdb.org), [dbt](https://getdbt.com), [Evidence](https://evidence.dev),
and [Buena Vista](https://github.com/jwills/buenavista).

Getting Started
---------------

```
git clone https://github.com/jwills/nba_monte_carlo.git
cd nba_monte_carlo
make install
```

You can then launch the Buena Vista server that the dbt and Evidence processes will connect to by running `make up`. In another
terminal window, run `dbt build` to create all of the dbt models for the NBA Monte Carlo simulator, and then follow that up
by running `npm --prefix ./reports run dev` to launch the Evidence data application on [http://localhost:3000](http://localhost:3000).
The Buena Vista server includes a simple SQL query UI that you can use for interactively running queries against the backing DuckDB
instance at [http://localhost:3456](http://localhost:3456), or you can connect to the Buena Vista server using your favorite Postgres-compatible
SQL client at port 5433.

Have fun!
