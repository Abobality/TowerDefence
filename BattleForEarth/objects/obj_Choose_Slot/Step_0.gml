y = obj_Choose_System.y + offset;

y = clamp(y, 0 + offset, 128 + offset)

if !array_contains(global.Choosed,image_index)
{
	image_blend = c_white;
}