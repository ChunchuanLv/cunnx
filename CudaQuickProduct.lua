local CudaQuickProduct, parent = torch.class('nn.CudaQuickProduct', 'nn.Module')
------------------------------------------------------------------------
--[[ LazyKBest ]]--
-- For example, divides the input into k sub-arrays and takes the 
-- max value of each. Allowed value for k are, 1, 2, 4, 8, 16 and 32.
-- Returns a table of the k-best {indices, inputs}
-- Used with BlockSparse instead of nn.Sort
------------------------------------------------------------------------

function CudaQuickProduct:__init()
   parent.__init(self)   
end

function CudaQuickProduct:compute(input1,
     input2,
    output,
    length1,
    length2,
     length3)
    
   input.nn.CudaQuickProduct_updateOutput(input1,
     input2,
    output,
    length1,
    length2,
     length3)
end
