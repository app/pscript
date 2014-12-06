exports = module?.exports ? this


class Node
exports.Node = Node

class Primitives extends Node
exports.Primitives = Primitives

class Bool extends Primitives
	constructor: (@Bool) ->
exports.Bool = Bool	

class Numbers extends Primitives
exports.Numbers = Numbers

class Int extends Numbers
	constructor: (@Int) ->
exports.Int = Int

class Float extends Numbers
	constructor: (@Float) ->
exports.Float = Float

class String extends Primitives
	constructor: (@String) ->
exports.String = String

class AssignOps extends Node
exports.AssignOps = AssignOps

class AssignOp extends AssignOps
	constructor: (@assignee,@expression) ->
exports.AssignOp = AssignOp