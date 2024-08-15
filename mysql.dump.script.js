require('dotenv').config();
const fs = require('fs')
const spawn = require('child_process').spawn
const dumpFileName = `${Math.round(Date.now() / 1000)}.dump.sql`

const writeStream = fs.createWriteStream('./mysql_dump/' + dumpFileName)

const dump = spawn(process.env.DUMP_PATH, [
    '-u',
    process.env.MYSQL_USERNAME,
    '-p' + process.env.MYSQL_PASSWORD,
    '--add-drop-database',
    '--databases',
    process.env.MYSQL_DBNAME,
])

dump.stdout
    .pipe(writeStream)
    .on('finish', function () {
        console.log('Completed')
    })
    .on('error', function (err) {
        console.log(err)
    })