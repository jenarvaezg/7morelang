Queue = {
    new = function(self)
        local obj = {}

        setmetatable(obj, self)
        self.__index = self

        return obj
    end,
    add = function(self, item)
        table.insert(self, 1, item)
    end,
    remove = function(self)
        return table.remove(self, 1)
    end,
}

q = Queue:new()
q:add(1)
q:add(2)
q:add(3)
print(q:remove()) -- 3
print(q:remove()) -- 2
print(q:remove()) -- 1
