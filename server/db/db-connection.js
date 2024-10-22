import pkg from 'pg';
const { Pool } = pkg;

import dotenv from 'dotenv';
dotenv.config();

const db = new Pool({
    connectionString: process.env.DATABASE_URI
  });

export default db;