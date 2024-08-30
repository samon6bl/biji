[[ReadItLater]] [[Article]]

Matcha is a daily digest generator for your RSS feeds and interested topics/keywords. By using any markdown file viewer (such as [Obsidian](https://obsidian.md/)) or directly from terminal (-t option), you can read your RSS articles whenever you want at your pace, thus avoiding FOMO throughout the day.

### In Obsidian

[](https://github.com/piqoni/matcha#in-obsidian)
ID: 1721964463990


[![image](附件/image-1.png)](https://user-images.githubusercontent.com/3144671/219786799-55db70c1-5860-4d4b-9df4-b81a89f8161d.png)

### On the terminal

[](https://github.com/piqoni/matcha#on-the-terminal)
ID: 1721964463994


[![image](附件/image.png)](https://user-images.githubusercontent.com/3144671/208323296-af2d6a51-7d33-42a9-a827-0e96a4a383fd.png)

## Features

[](https://github.com/piqoni/matcha#features)
ID: 1721964463997


- RSS daily **digest**, it will show only articles not previously generated
- Optional summary of articles from OpenAI for selected feeds
- Weather for the next 12 Hours (from [YR](https://www.yr.no/))
- Quick bookmarking of articles to Instapaper
- Interested Topics/Keywords to follow (through [Google News](https://news.google.com/))
- Hacker News comments direct link and distinguishing mostly dicussed posts 🔥
- Terminal Mode by calling `./matcha -t`

## Installation / Usage

[](https://github.com/piqoni/matcha#installation--usage)
ID: 1721964464000


1. Since Matcha generates markdown, any markdown reader should do the job. Currently it has been tested on [Obsidian](https://obsidian.md/) so you need a markdown reader before moving on, unless you will use terminal mode (-t option), then a markdown reader is not needed.
2. **Download the [corresponding binary](https://github.com/piqoni/matcha/releases)** based on your OS and after executing (if on mac/linux run `chmod +x matcha-darwin-amd64` to make it executable), a sample `config.yml` will be generated, which you can add in your rss feeds, keywords and the `markdown_dir_path` where you want the markdown files to be generated (if left empty, it will generate the daily digest on current dir).
3. You can either execute matcha on-demand (a terminal alias) or set a cron to run matcha as often as you want. Even if you set it to execute every hour, matcha will still generate daily digests, one file per day, and will add more articles to it if new articles are published throughout the day.

Note to Go developers: You can also install matcha using `go install github.com/piqoni/matcha@latest`

## Configuration

[](https://github.com/piqoni/matcha#configuration)
ID: 1721964464004


On first execution, Matcha will generate the following config.yaml and a markdown file on the same directory as the application. Change the 'feeds' to your actual RSS feeds, and google\_news\_keywords to the keywords you are interested in. And if you want to change where the markdown files are generated, set the full directory path in `markdown_dir_path`.

markdown\_dir\_path:
feeds:
  - http://hnrss.org/best 10
  - https://waitbutwhy.com/feed
  - http://tonsky.me/blog/atom.xml
  - http://www.joelonsoftware.com/rss.xml
  - https://www.youtube.com/feeds/videos.xml?channel\_id=UCHnyfMqiRRG1u-2MsSQLbXA
google\_news\_keywords: George Hotz,ChatGPT,Copenhagen
instapaper: true
weather\_latitude: 37.77
weather\_longitude: 122.41
terminal\_mode: false
opml\_file\_path:
markdown\_file\_prefix:
markdown\_file\_suffix:
reading\_time: false
sunrise\_sunset: false
openai\_api\_key:
openai\_base\_url:
openai\_model:
summary\_feeds:

### Summarization of Articles using ChatGPT

[](https://github.com/piqoni/matcha#summarization-of-articles-using-chatgpt)
ID: 1721964464008


In order to use the summarization feature, you'll first need to set up an OpenAI account. If you haven't already done so, you can sign up [here](https://platform.openai.com/login?launch). Once registered, you'll need to acquire an OpenAI API key which can be found [here](https://platform.openai.com/account/api-keys).

Alternatively, you may use LocalAI (see the "LocalAI Support" section below for more information).

Next, update the configuration file with the desired feeds you want to summarize. This can be done under the "summary\_feeds" section. Here is an example configuration:

openai\_api\_key: sk-xxxxxxxxxxxxxxxxx
summary\_feeds:
    - http://hnrss.org/best 10

Replace `sk-xxxxxxxxxxxxxxxxx` with your OpenAI API key and include the RSS feeds under `summary_feeds` for articles you're interested in summarizing.

You can also customize which model you use for summarization by changing the openai\_model to one of the values [here](https://github.com/sashabaranov/go-openai/blob/a14bc103f4bc2b3ac40c844079fdf59dfdf62b0b/completion.go#L30) which defaults to 'gpt-3.5-turbo' for now. 'gpt-4' is also a valid model name.

openai\_model: gpt-3.5-turbo

#### LocalAI Support

For those interested in using LocalAI for summarization, whether for cost-efficiency or privacy reasons, you'll first need to set it up and run it. For setup instructions, please visit the LocalAI repository on GitHub [here](https://github.com/go-skynet/LocalAI).
ID: 1721964464011


After setting up LocalAI, you'll need to direct Matcha to the openai-compatible base URL of LocalAI. This is done by updating the "openai\_base\_url" in the configuration file. For instance, if your LocalAI server is running locally on port 8080, your configuration would look like this:

openai\_base\_url: http://localhost:8080/v1
openai\_model: openllama-3b

In this case, '[http://localhost:8080/v1](http://localhost:8080/v1)' represents the base URL where your LocalAI server is running. 'openai\_model' could be any model compatible with LocalAI. You can also replace the openai\_base\_url with another hosted url like the Azure openai endpoint. Please note in case of errors that you may need to change the openai\_model to match the model you downloaded in LocalAI.

### Command line Options

[](https://github.com/piqoni/matcha#command-line-options)
ID: 1721964464019


Run matcha with --help option to see current cli options:

```
  -c filepath
    	Config file path (if you want to override the current directory config.yaml)
  -o filepath
    	OPML file path to append feeds from opml files
  -t	Run Matcha in Terminal Mode, no markdown files will be created
```

#### OPML Import

[](https://github.com/piqoni/matcha#opml-import)
ID: 1721964464023


To use OPML files (exported from other services), rename your file to `config.opml` and leave it in the directory where matcha is located. The other option is to run the command with -o option pointing to the opml filepath.