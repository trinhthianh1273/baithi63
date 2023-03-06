router.post('/login', async (request, response) => {
    const user = await User.findOne({email: request.body.email});
    if (!user) return response.status(422).send('Email or Password is not correct');

    const checkPassword = await bcrypt.compare(request.body.password, user.password);

    if (!checkPassword) return response.status(422).send('Email or Password is not correct');
    
    return response.send(`User ${user.name} has logged in`);
})
