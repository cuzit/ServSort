# ServSort

## Preamble / Warning

This is the first time I've made an application with Swift and SwiftUI, and, as such, it is a learning project for me.  I'm combining the attempt to solve a software need of mine with learning a new language.  As such, there's probably a bunch of stupid bullshit and mistakes scattered throughout the code that I hope to clean up as I improve my Swift.  My background is more in Java/C#, as will probably be evident by my code.

If anyone wishes to contribute to this project, please be mindful of this fact.  I'm open to pulls which are merely code cleanup/maintenance, but I ask that if anyone does this, they briefly explain the changes they have made.  It doesn't have to be a long-winded explanation; "blah blah blah is more standard in Swift" or something along those lines is suitable.

This premable will be removed if my confidence in my ability to code in Swift improves to the point where I no longer feel like the code is probably cobbled together garbage.

## Purpose of ServSort

There are many applications currently available online which purport to automate or assist in sorting large amounts of files.  Most of these applications are too straightforward to fit my needs.  They can automatically watch for files in your download folder and copy video files to your Movies folder, image files to your Pictures folder, and so on - but what if you already have an organizational schema for you data?

Enter ServSort.  The purpose is not to automate the sorting of data, but to make it easy, simple, and quick to go through your unsorted mess and organize it into your existing directory structure.

The idea is pretty straightforward: when given a folder containing unsorted files and subfolders, ServSort will present the files to your one at a time in the pane to the left.  You can see relevant information about the file, as well as preview the file if it is of a supported type (video, image, text, etc.)  If the type is unsupported, you can open the file in its default application with one click.  In the far right pane is a list of files - if any - which ServSort has deemed to be similar to the file you are currently previewing.  This exists to help you decide whether to keep and sort the file, or delete it in one click.

The middle pane is where the magic happens.  On initial setup, you will be asked to assign the root directory containing your folder heirarchy that you sort all your files into.  For each subfolder, you are asked to mark whether the folder is a "Destination" folder to a folder to be ignored.  The middle pane of the UI, after setup, will display a flattened, categorized, and organized tree of Destination directories as you defined them before.  Now, when presented with a file, it was one simple click on the destination to have the file automatically moved and sorted, quick and easy.

## Notes

More information and screenshots will be provided as development proceeds.

I am currently working on this in my spare time after work, so development is slow.  Slower due to the fact that I am unfamiliar with Swift.

This software is currently in an early stage of development and is not ready to be used.
