
# [Changes for ""Header paragraph style": not capturing all lines when there are new blank lines · Issue #590 · ObsidianToAnki/Obsidian_to_Anki](https://github.com/ObsidianToAnki/Obsidian_to_Anki/issues/590)

Hello,

Header paragraph style regex only captures till new line without extra chars, but it continues capturing when there are spaces.

As the wiki example says, I think it's not a desired behaviour. Proposing new one so that it continues capturing when there are empty lines with |^\\s\*$.

The extra can be added to other multiline regexes.

Regards.

Before

```
^#+(.+)\n*((?:\n(?:^[^\n#].{0,2}$|^[^\n#].{3}(?<!<!--).*))+)
```

[https://regex101.com/r/IotYiZ/1](https://regex101.com/r/IotYiZ/1)

After

```
^#+(.+)\n*((?:\n(?:^[^\n#].{0,2}$|^[^\n#].{3}(?<!<!--).*|^\s*$))+)
```

[https://regex101.com/r/V3wYut/2](https://regex101.com/r/V3wYut/2)
