
file_cnt = []

with open("sedov/out_phantom", "r") as f :
    file_cnt = (f.readlines()) 

indent_level = 0
with open("sedov/out_phantom_indent", "w") as text_file:

    for l in file_cnt:

        if l.startswith(" -> end"):
            indent_level -= 1

        text_file.write((" "*(indent_level*4)) + l)

        if l.startswith(" -> begin"):
            indent_level += 1