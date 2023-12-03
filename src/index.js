const cors = require('cors');
const express = require("express");
const dotenv = require("dotenv");
const { PrismaClient } = require("@prisma/client");

const prisma = new PrismaClient();
const app = express();

app.use(cors());

app.use(express.json());

dotenv.config();

const PORT = process.env.PORT;




app.get("/api", (req, res) => {
    res.send("Hai");
})

app.get("/regionals", async (req, res) => {
    const regionals = await prisma.df_regional.findMany();

    res.send(regionals);
})

app.get("/kantors", async (req, res) => {
    const kantors = await prisma.df_kantor.findMany({
        // take:100,
        select: {
          nopend: true,
          nama_kantor: true,
        },
      });

    res.send(kantors);
})

app.get("/status-kerja", async (req, res) => {
    const data = await prisma.df_status_kerja.findMany({
        // take:100
    });

    BigInt.prototype.toJSON = function() {
        return this.toString();
      };

    res.send(JSON.stringify(data));
})

app.get("/bagians", async (req, res) => {
    const data = await prisma.df_bagian.findMany();

    res.send(data);
})

// app.get("/mutasis", async (req, res) => {
//     const data = await prisma.df_mutasi.findMany();

//     res.send(data);
// })

// app.get("/status-kerja", async (req, res) => {
//     const data = await prisma.dft.findMany({
//         take:100
//     });

//     BigInt.prototype.toJSON = function() {
//         return this.toString();
//       };

//     res.send(JSON.stringify(data));
// })


// app.get("/regionals", async (req, res) => {
//     const regionals = await prisma.df_regional.findMany();

//     res.send(regionals);
// })

// app.get("/regionals", async (req, res) => {
//     const regionals = await prisma.df_regional.findMany();

//     res.send(regionals);
// })

// app.get("/regionals", async (req, res) => {
//     const regionals = await prisma.df_regional.findMany();

//     res.send(regionals);
// })



app.listen(PORT, () => {
    console.log("Express API Running in port: " + PORT);
})