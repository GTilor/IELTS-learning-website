# IELTS Learning Website

This repository contains a static IELTS vocabulary website that can be deployed with GitHub Pages.

## What Is In This Repository

- `docs/`: the publish-ready website files
- `dashboard/`: the editable source files used to build the website
- `publish.sh`: a helper script for local publishing on macOS or Linux

Personal study files are intentionally not included in the public repository.

## Quick Deploy

If you only want to put this website online, deploy the `docs/` folder with GitHub Pages.

Published URL format:

```text
https://<your-github-name>.github.io/<repo-name>/
```

## Deploy On macOS

### Step 1: Install Git

Open Terminal and run:

```bash
git --version
```

If Git is not installed, macOS will usually prompt you to install the command line tools.

### Step 2: Download This Repository

Open Terminal and run:

```bash
git clone https://github.com/<your-github-name>/<repo-name>.git
cd <repo-name>
```

If you already downloaded the project as a zip file, unzip it and open that folder in Terminal.

### Step 3: Push The Files To Your Own GitHub Repository

Create a new repository on GitHub first, then run:

```bash
git init
git add .
git commit -m "Initial site"
git branch -M main
git remote add origin https://github.com/<your-github-name>/<repo-name>.git
git push -u origin main
```

If you cloned your own repository directly, you do not need to run these commands again.

### Step 4: Turn On GitHub Pages

Open your repository on GitHub.

Then click these items in order:

1. `Settings`
2. `Pages`
3. `Source` -> choose `Deploy from a branch`
4. `Branch` -> choose `main`
5. `Folder` -> choose `/docs`
6. Click `Save`

### Step 5: Wait For The Site To Build

Wait about 1 to 5 minutes.

Then open:

```text
https://<your-github-name>.github.io/<repo-name>/
```

If the page does not update immediately, refresh the browser.

## Deploy On Windows

### Step 1: Install Git

Download and install Git for Windows:

[https://git-scm.com/download/win](https://git-scm.com/download/win)

After installation, open `Git Bash`.

### Step 2: Download This Repository

Run:

```bash
git clone https://github.com/<your-github-name>/<repo-name>.git
cd <repo-name>
```

If you already downloaded a zip file, unzip it first, then open that folder in `Git Bash`.

### Step 3: Push The Files To Your Own GitHub Repository

Create a new repository on GitHub first, then run:

```bash
git init
git add .
git commit -m "Initial site"
git branch -M main
git remote add origin https://github.com/<your-github-name>/<repo-name>.git
git push -u origin main
```

If you cloned your own repository directly, you do not need to run these commands again.

### Step 4: Turn On GitHub Pages

Open your repository on GitHub.

Then click these items in order:

1. `Settings`
2. `Pages`
3. `Source` -> choose `Deploy from a branch`
4. `Branch` -> choose `main`
5. `Folder` -> choose `/docs`
6. Click `Save`

### Step 5: Wait For The Site To Build

Wait about 1 to 5 minutes.

Then open:

```text
https://<your-github-name>.github.io/<repo-name>/
```

## Update The Website Content

If you want to change website text, style, or layout:

1. Edit files in `dashboard/`
2. Copy the final static files into `docs/`
3. Commit the changes
4. Push to GitHub

GitHub Pages will republish the updated `docs/` folder automatically.

## Notes

- This project is a static website and does not require a backend server.
- The public repository is designed for deployment and sharing.
- Personal Excel files and private study notes should stay local.
