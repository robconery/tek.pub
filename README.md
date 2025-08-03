## Welcome to PEEP

This utility is intended to help you generate prompts quickly. You can [browse them online](https://tek.pub) or install a quick utility function. 

## Setup

The easiest thing to do is to use the command line:

### Mac & Linux (bash)
```sh
echo "function peep() { curl -sL https://tek.pub/api/\$1;}" >> ~/.bashrc && source ~/.bashrc

peep
```
### Mac & Linux (zshell)
```sh
echo "function peep() { curl -sL https://tek.pub/api/\$1;}" >> ~/.zshrc && source ~/.zshrc

peep
```

## Use

To find out what scripts we have you can browse the site (at https://tek.pub) or use `peep list`:

```
peep list

#### The Basics ####

help | The basics of peep and how to use it.
list | Don't know what you're looking for? Here's a list
... rest of stuff
```

When you see a script you want to use, just call it directly:

```
peep react-component
```

This will splash the script into the terminal. If you want to put it into a file (recommended), just redirect STDOUT:

```
peep react-component > react.md
```

Now open up the script in an editor, change what you need (usually just variables at the top) and off you go!

## Want to See Your Prompt Here?

Turns out LLMs (like Claude) are pretty damned good at prompting themselves. If you want a quick win for a PR, add a prompt for us!

Here's how the site works...

## The Setup

The API for `peep` is in the `/_api` directory. If you look in there, you'll notice that the HTML pages aren't HTML, they're just text. That's because they need to display in the CLI.

But we also want to display things online, so we fetch them from the `/scripts` page using good old JavaScript.

The details are set up in a very particular way:

1. Title and frontmatter
1. Descriptive blurb about the template
1. Sample Prompt section
1. What This Template Covers section
1. Best Practices section
1. When to Use This Template section

This is so people can read up on how to use a given template when they're online.

Those details are actual Markdown files that GitHub pages (Jekyll) turns into HTML for us. Those files are in `/details`.

## The Prompt

So, if you want to create a PR with a new prompt, you can create it manually by following this example for a React component:

```
---
title: React Component Template
description: Create React components with TypeScript types, proper accessibility, and modern patterns
author: Rob Conery
group: Frontend Development
---
Create a React component for [PURPOSE]:
- Props interface: [PROPERTIES]
- State requirements: [STATE]
- Event handlers: [EVENTS]
- Styling approach: [CSS/STYLED/MODULE]

Include TypeScript types and proper accessibility.
```

Notice the frontmatter - that's critical. The prompt part is up to you - I'll assume you've run it before.

Then come the details. They follow the pattern in the list above. Have a look at any of the details pages to get the idea.

## Using Claude to Generate Your Prompt

You can use Claude CLI to generate your prompt by making sure you reference the HTML files and Markdown files:

```
Create a prompt that [DOES THIS THING] and save it in a new html file in the @_api directory. Follow the format of @_api/react-component.html. Also create the markdown details for this prompt using @details/react-component.md as a template.
```

This should be enough to generate the two files you need. You then get to go in and tweak what's up.