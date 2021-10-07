# Godot RichTextLabel Issue Demo

This repo is used for demoing Godot engine's RichTextLabel issue purpose.

## Steps to reproduce:

1. Click "Set 100 Lines", and it will use set_bbcode() to
print 100 lines with "wave" effect. The debug console
will output: 101

2. Click "Append 10 Lines" and scroll to bottom, you
will see 10 lines with "shake" effect. The debug console
will output numbers from 110~101

3. Click "Clear" to clear all output.

4. Click "Get + Set 10 Lines" and BOOM! All lines are back! But only those lines created by set_bbcode().

5. Click "Get + Set" several times, and you will see the numbers in output become abnormal. These are return value from get_line_count() function. And you will see the numbers goes over 110. There are probably some extra lines hold in memory, indicating possible memory leak.

6. If you don't click "Clear" in step 3, you will see the get_bbcode() function ignores the string created by append_bbcode(), but append_bbcode() will actually append it's content in the end.
