from prompt_toolkit import PromptSession


def my_custom_eval(input_string, state):
    # Your custom evaluation logic here
    arg = input_string.split()[0]
    if arg == "python":
        result = eval("".join(input_string.split()[1:]))
    elif arg == "inc":
        new_state = state + 1
        result = state
    else:
        result = ""
    return result, new_state


def substitute(sentence, substitution):
    

session = PromptSession()

state = 0
while True:
    try:
        input_string = session.prompt('> ')
        result, state = my_custom_eval(input_string, state)
        print(result)
    except KeyboardInterrupt:
        break
    except Exception as e:
        print(e)
