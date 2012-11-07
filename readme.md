# Virtual Manager

** _You should install it and forget it's there_ **

## What is it?

You know how you have to deal with many python projects with many virtualenvs? Always remembering to workon and deactivate? Wouldn't it be better if you could just forget it, and let the system deal with what project is in each virtualenv?

That's what it's for. Just install it, and put a .virtualrc with the virtualenv name on it, and let the Virtual Manager deal with it.

After you install it, go to your project root folder:
> echo "my virtualenv name" > .virtualrc

That's all. Never workon and deactivate again. Never bother with what's the name of that virtualenv again.

## What else can I put in my .virtualrc?

For now... nothing else. Just the name of your virtualenv, and nothing more.

In the near future, there may be more options. I'm planning stuff yet.

## How Do I install it?

Git clone (or download as a zip) this repository. Then just execute the install.sh script (no root privileges required) that comes with the package. After that, you're good to go, start writing .virtualrc in all your projects.

### Hey! I ain't gonna execute things I don't know! What does it do?

Good boy. Now let's get into the details.

The install.sh will create the folder .virtualmanager in your home folder, where the virtualmanager code will be located. Then it will add one line to your .bashrc or .profile that will source it. Also, it will run source .bashrc (or source .profile) just after installation is complete.

If you use something other than .profile or .bashrc, a .profile will be created in your home. Sorry, still have to improve it.

That's all, I swear. Ok, you could also read the code.

## Cool. How does it work?

Aaaawwww, you had to ask that, didn't you?? Its methods are not clean, or healthy, or safe, or pretty. And when I say it's not pretty, I mean it's ugly! Despicable! Boy, I hate myself... how can I ever face my mom again?

But I could not find a better way to do it, so here it goes: it overrides you cd command with an alias.

Yes, every time you cd, it's also checking the folder for .virtualrc.

### Isn't there a better way?

Not that I know. If you know an alternative, e-mail me, write it on issues, send me a letter, send me some smoke signal, but please, don't keep it to yourself!

## Known bugs

If instead of cd you use pushd and popd, it will not work.

If you have an alias for your cd, it will not work.

If you try to run it on a potato instead of a computer, it will not work.

## License

I don't really understand or like the standard licenses people use. So here's the deal:

* Use it at will;
* Modify it at will;
* Distribute it at will;
* Don't make money out of it;
* If you feel like it, say my name when you write about it, and/or link my repository.

If you break one or more of those rules, I'll tell your mom. And don't think I'm stoping there, I'll also tell your dad how naughty you have been, so you'll be grounded for life.

# BIG WARNING!

This is experimental software. I try to make it as stable and harmless as possible, but really, don't blame me if nasty things happen and suddenly you can no longer play minecraft for no apparent reason.