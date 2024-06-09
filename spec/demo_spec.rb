L2.br
L2.br

# Print really simple messages
L2.m("Simple message")
L2.br
L2.m("Multiple", "simple", "messages")
L2.br
L2.m(["Multiple", "simple", "messages", "as", "array"])
L2.br
L2.m({ name: "Luis", last_name: "Donis", title: "Software developer"})


# Print simple messages with a separator line
L2.msg("Simple message")
L2.msg("Multiple", "simple", "messages")
L2.msg(["Multiple", "simple", "messages", "as", "array"])
L2.msg({ name: "Luis", last_name: "Donis", title: "Software developer"})


# Print simple information messages
L2.info("Simple message")
L2.info("Multiple", "simple", "messages")
L2.info(["Multiple", "simple", "messages", "as", "array"])
L2.info({ name: "Luis", last_name: "Donis", title: "Software developer"})

L2.br

# Print simple success messages
L2.success("Simple message")
L2.success("Multiple", "simple", "messages")
L2.success(["Multiple", "simple", "messages", "as", "array"])
L2.success({ name: "Luis", last_name: "Donis", title: "Software developer"})

L2.br

# Print simple warning messages
L2.warning("Simple message")
L2.warning("Multiple", "simple", "messages")
L2.warning(["Multiple", "simple", "messages", "as", "array"])
L2.warning({ name: "Luis", last_name: "Donis", title: "Software developer"})

L2.br

# Print simple warning messages
L2.danger("Simple message")
L2.danger("Multiple", "simple", "messages")
L2.danger(["Multiple", "simple", "messages", "as", "array"])
L2.danger({ name: "Luis", last_name: "Donis", title: "Software developer"})

L2.br

L2.list("one")
L2.list("one", "two", "three")
L2.list(*["one", "two", "three"])

L2.br

L2.list_check("one")
L2.list_check("one", "two", "three")
L2.list_check(*["one", "two", "three"])

L2.br

L2.list_star("one")
L2.list_star("one", "two", "three")
L2.list_star(*["one", "two", "three"])

L2.br

L2.alert("one")

L2.br

L2.table(
    [
        { first_name: "Luis", last_name: "Donis", title: "software developer" },
        { first_name: "Luis", last_name: "Donis", title: "software developer" },
        { first_name: "Luis", last_name: "Donis", title: "software developer" },
    ]
)

L2.br 
L2.br 
