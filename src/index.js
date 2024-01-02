const cors = require('cors');
const express = require("express");
const dotenv = require("dotenv");
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

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

// User Registration
app.post('/api/register', async (req, res) => {
    const { username, password } = req.body;
  
    // Validate user data
    if (!username || !password) {
      return res.status(400).send('Missing required fields');
    }
  
    // Check if user already exists
    const existingUser = await prisma.df_user.findUnique({
      where: { username: username },
    });
  
    if (existingUser) {
      return res.status(400).send('User with that username already exists');
    }
  
    // Hash password
    // const hashedPassword = await bcrypt.hash(password, 10);
  
    // Create new user
    const user = await prisma.df_user.create({
      data: {
        username: username,
        password: password,
      },
    });
  
    // Return user object without password
    res.status(201).send({ id: user.id, username: user.username });
  });

// User Login
app.post('/api/login', async (req, res) => {
    const { username, password } = req.body;
  
    // Find user by username
    const user = await prisma.df_user.findUnique({
      where: { username: username },
    });
  
    if (!user) {
      return res.status(401).send('Invalid username or password');
    }
  
    // Compare password
  
    
  const validPassword = (password == user.password);
  
    if (!validPassword) {
      return res.status(401).send('Invalid username or password');
    }
  
    // Generate access token
    const token = jwt.sign({ username: user.username }, process.env.JWT_SECRET, {
      expiresIn: '1h',
    });

    BigInt.prototype.toJSON = function() {
        return this.toString();
      };
  
    // Return token
    // res.json({token});
    res.json({ token: JSON.stringify(token) });
    // res.send(token);
    // res.send(JSON.stringify({token}));
    // res.send(JSON.stringify(user.username));
  });

  app.post('/login', async (req, res) => {
    // Authenticate the user
    const { username, password } = req.body;
    const data = await prisma.df_user.findUnique({
        where: {
            username:username
        }
    });

    BigInt.prototype.toJSON = function() {
        return this.toString();
      };

    res.send(JSON.stringify(data.username));
  
    // if (user) {
    //   req.session.userId = user.id;
  
    //   res.send('Logged in successfully');
    // } else {
    //   res.status(401).send('Invalid email or password');
    // }
  });


app.get("/regionals", async (req, res) => {
    const data = await prisma.df_regional.findMany();

    BigInt.prototype.toJSON = function() {
        return this.toString();
      };

    res.send(JSON.stringify(data));

})

app.get("/kantors", async (req, res) => {
    const kantors = await prisma.df_kantor.findMany({
        // take:100,
        select: {
          nopend: true,
          namaktr: true,
        },
      });

    res.send(kantors);
})

app.get("/status-kerja", async (req, res) => {
    const data = await prisma.df_statuskerja.findMany({
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

app.get("/jabatans", async (req, res) => {
    const data = await prisma.df_jabatan.findMany();

    res.send(data);
})

app.get("/jenis-mutasi", async (req, res) => {
    const data = await prisma.df_jenismutasi.findMany();

    res.send(data);
})

// app.get("/jabatans", async (req, res) => {
//     const data = await prisma.df_jabatan.findMany();

//     res.send(data);
// })

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