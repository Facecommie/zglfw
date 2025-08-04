//Zglfw
//Mit License
//
//Copyright (C) 2020 Iridescence Technologies
//
//Permission Is Hereby Granted, Free Of Charge, To Any Person Obtaining A Copy
//Of This Software And Associated Documentation Files (The "Software"), To Deal
//In The Software Without Restriction, Including Without Limitation The Rights
//To Use, Copy, Modify, Merge, Publish, Distribute, Sublicense, And/Or Sell
//Copies Of The Software, And To Permit Persons To Whom The Software Is
//Furnished To Do So, Subject To The Following Conditions:
//
//The Above Copyright Notice And This Permission Notice Shall Be Included In All
//Copies Or Substantial Portions Of The Software.
//
//The Software Is Provided "As Is", Without Warranty Of Any Kind, Express Or
//Implied, Including But Not Limited To The Warranties Of Merchantability,
//Fitness For A Particular Purpose And Noninfringement. In No Event Shall The
//Authors Or Copyright Holders Be Liable For Any Claim, Damages Or Other
//Liability, Whether In An Action Of Contract, Tort Or Otherwise, Arising From,
//Out Of Or In Connection With The Software Or The Use Or Other Dealings In The
//Software.
//

//Glfw
//Copyright (C) 2002-2006 Marcus Geelnard
//
//Copyright (C) 2006-2019 Camilla Löwy
//
//This Software Is Provided 'As-Is', Without Any Express Or Implied
//Warranty. In No Event Will The Authors Be Held Liable For Any Damages
//Arising From The Use Of This Software.
//
//Permission Is Granted To Anyone To Use This Software For Any Purpose,
//Including Commercial Applications, And To Alter It And Redistribute It
//Freely, Subject To The Following Restrictions:
//
//1. The Origin Of This Software Must Not Be Misrepresented; You Must Not
//   Claim That You Wrote The Original Software. If You Use This Software
//   In A Product, An Acknowledgment In The Product Documentation Would
//   Be Appreciated But Is Not Required.
//
//2. Altered Source Versions Must Be Plainly Marked As Such, And Must Not
//   Be Misrepresented As Being The Original Software.
//
//3. This Notice May Not Be Removed Or Altered From Any Source
//   Distribution.
const builtin = @import("builtin");

pub const VersionMajor = 3;
pub const VersionMinor = 3;
pub const VersionRevision = 2;
pub const DontCare: c_int = -1;

pub const ActionType = c_int;
pub const Action = enum(ActionType) {
    release = 0,
    press = 1,
    repeat = 2,
};

pub const JoystickHatType = c_int;
pub const JoystickHat = enum(JoystickHatType) {
    centered = 0,
    up = 1,
    right = 2,
    down = 4,
    left = 8,
    right_up = (2 | 1),
    right_down = (2 | 4),
    left_up = (8 | 1),
    left_down = (8 | 4),
};

pub const KeyType = c_int;
pub const Key = enum(KeyType) {
    unknown = -1,
    space = 32,
    apostrophe = 39,
    comma = 44,
    minus = 45,
    period = 46,
    slash = 47,
    num_0 = 48,
    num_1 = 49,
    num_2 = 50,
    num_3 = 51,
    num_4 = 52,
    num_5 = 53,
    num_6 = 54,
    num_7 = 55,
    num_8 = 56,
    num_9 = 57,
    semicolon = 59,
    equal = 61,
    a = 65,
    b = 66,
    c = 67,
    d = 68,
    e = 69,
    f = 70,
    g = 71,
    h = 72,
    i = 73,
    j = 74,
    k = 75,
    l = 76,
    m = 77,
    n = 78,
    o = 79,
    p = 80,
    q = 81,
    r = 82,
    s = 83,
    t = 84,
    u = 85,
    v = 86,
    w = 87,
    x = 88,
    y = 89,
    z = 90,
    left_bracket = 91,
    backslash = 92,
    right_bracket = 93,
    grave_accent = 96,
    world_1 = 161,
    world_2 = 162,
    escape = 256,
    enter = 257,
    tab = 258,
    backspace = 259,
    insert = 260,
    delete = 261,
    right = 262,
    left = 263,
    down = 264,
    up = 265,
    page_up = 266,
    page_down = 267,
    home = 268,
    end = 269,
    caps_lock = 280,
    scroll_lock = 281,
    num_lock = 282,
    print_screen = 283,
    pause = 284,
    f1 = 290,
    f2 = 291,
    f3 = 292,
    f4 = 293,
    f5 = 294,
    f6 = 295,
    f7 = 296,
    f8 = 297,
    f9 = 298,
    f10 = 299,
    f11 = 300,
    f12 = 301,
    f13 = 302,
    f14 = 303,
    f15 = 304,
    f16 = 305,
    f17 = 306,
    f18 = 307,
    f19 = 308,
    f20 = 309,
    f21 = 310,
    f22 = 311,
    f23 = 312,
    f24 = 313,
    f25 = 314,
    kp_0 = 320,
    kp_1 = 321,
    kp_2 = 322,
    kp_3 = 323,
    kp_4 = 324,
    kp_5 = 325,
    kp_6 = 326,
    kp_7 = 327,
    kp_8 = 328,
    kp_9 = 329,
    kp_decimal = 330,
    kp_divide = 331,
    kp_multiply = 332,
    kp_subtract = 333,
    kp_add = 334,
    kp_enter = 335,
    kp_equal = 336,
    left_shift = 340,
    left_control = 341,
    left_alt = 342,
    left_super = 343,
    right_shift = 344,
    right_control = 345,
    right_alt = 346,
    right_super = 347,
    menu = 348,
};

pub const ModifierType = c_int;
pub const Modifier = enum(ModifierType) {
    shift = 0x0001,
    control = 0x0002,
    alt = 0x0004,
    super = 0x0008,
    caps_lock = 0x0010,
    num_lock = 0x0020,
};

pub const MouseType = c_int;
pub const Mouse = enum(MouseType) {
    button_4 = 3,
    button_5 = 4,
    button_6 = 5,
    button_7 = 6,
    button_last = 7,
    button_left = 0,
    button_right = 1,
    button_middle = 2,
};

pub const JoystickType = c_int;
pub const JoystickButton = enum(JoystickType) {
    one = 0,
    two = 1,
    three = 2,
    four = 3,
    five = 4,
    six = 5,
    seven = 6,
    eight = 7,
    nine = 8,
    ten = 9,
    eleven = 10,
    twelve = 11,
    thirteen = 12,
    fourteen = 13,
    fifteenth = 14,
    sixteen = 15,
    last = 15,
};

pub const GamepadButtonType = c_int;
pub const GamepadButton = enum(GamepadButtonType) {
    a = 0,
    b = 1,
    x = 2,
    y = 3,
    left_bumper = 4,
    right_bumper = 5,
    back = 6,
    start = 7,
    guide = 8,
    left_thumb = 9,
    cross = 0,
    circle = 1,
    square = 2,
    triangle = 3,
    right_thumb = 10,
    dpad_up = 11,
    dpad_right = 12,
    dpad_down = 13,
    dpad_left = 14,
    last = 14,
};

pub const GamepadAxisType = c_int;
pub const GamepadAxis = enum(GamepadAxisType) {
    left_x = 0,
    left_y = 1,
    right_x = 2,
    right_y = 3,
    left_trigger = 4,
    right_trigger = 5,
    last = 5,
};

pub const GLFWError = error{
    NotInitialized,
    NoCurrentContext,
    InvalidEnum,
    InvalidValue,
    OutOfMemory,
    APIUnavailable,
    VersionUnavailable,
    PlatformError,
    FormatUnavailable,
    NoWindowContext,
    NoError,
};

pub const ErrorCodeType = c_int;

pub const ErrorCode = enum(ErrorCodeType) {
    NotInitialized = 0x00010001,
    NoCurrentContext = 0x00010002,
    InvalidEnum = 0x00010003,
    InvalidValue = 0x00010004,
    OutOfMemory = 0x00010005,
    APIUnavailable = 0x00010006,
    VersionUnavailable = 0x00010007,
    PlatformError = 0x00010008,
    FormatUnavailable = 0x00010009,
    NoWindowContext = 0x0001000A,
    NoError = 0,
};

pub const WindowHintType = c_int;
pub const WindowHint = enum(WindowHintType) {
    focused = 0x00020001,
    iconified = 0x00020002,
    resizable = 0x00020003,
    visible = 0x00020004,
    decorated = 0x00020005,
    auto_iconify = 0x00020006,
    floating = 0x00020007,
    maximized = 0x00020008,
    center_cursor = 0x00020009,
    transparent_framebuffer = 0x0002000a,
    hovered = 0x0002000b,
    focus_on_show = 0x0002000c,
    red_bits = 0x00021001,
    green_bits = 0x00021002,
    blue_bits = 0x00021003,
    alpha_bits = 0x00021004,
    depth_bits = 0x00021005,
    stencil_bits = 0x00021006,
    accum_red_bits = 0x00021007,
    accum_green_bits = 0x00021008,
    accum_blue_bits = 0x00021009,
    accum_alpha_bits = 0x0002100a,
    aux_buffers = 0x0002100b,
    stereo = 0x0002100c,
    samples = 0x0002100d,
    srgb_capable = 0x0002100e,
    refresh_rate = 0x0002100f,
    doublebuffer = 0x00021010,
    client_api = 0x00022001,
    context_version_major = 0x00022002,
    context_version_minor = 0x00022003,
    context_revision = 0x00022004,
    context_robustness = 0x00022005,
    opengl_forward_compat = 0x00022006,
    opengl_debug_context = 0x00022007,
    opengl_profile = 0x00022008,
    context_release_behavior = 0x00022009,
    context_no_error = 0x0002200a,
    context_creation_api = 0x0002200b,
    scale_to_monitor = 0x0002200c,
    cocoa_retina_framebuffer = 0x00023001,
    cocoa_frame_name = 0x00023002,
    cocoa_graphics_switching = 0x00023003,
    x11_class_name = 0x00024001,
    x11_instance_name = 0x00024002,
};

pub const APIAttributeType = c_int;
pub const APIAttribute = enum(APIAttributeType) {
    no_api = 0,
    open_gl_api = 0x00030001,
    open_gles_api = 0x00030002,
};

pub const RobustnessAttributeType = c_int;
pub const RobustnessAttribute = enum(RobustnessAttributeType) {
    no_robustness = 0,
    no_reset_notification = 0x00031001,
    lose_context_on_reset = 0x00031002,
};

pub const GLProfileAttributeType = c_int;
pub const GLProfileAttribute = enum(GLProfileAttributeType) {
    any_profile = 0,
    core_profile = 0x00032001,
    compat_profile = 0x00032002,
};

pub const InputModeType = c_int;
pub const InputMode = enum(InputModeType) {
    cursor = 0x00033001,
    sticky_keys = 0x00033002,
    sticky_mouse_buttons = 0x00033003,
    lock_key_mods = 0x00033004,
    raw_mouse_motion = 0x00033005,
};

pub const CursorVisibilityAttributeType = c_int;
pub const CursorVisibilityAttribute = enum(CursorVisibilityAttributeType) {
    normal = 0x00034001,
    hidden = 0x00034002,
    disabled = 0x00034003,
};

pub const ReleaseBehaviorAttributeType = c_int;
pub const ReleaseBehaviorAttribute = enum(ReleaseBehaviorAttributeType) {
    any_release_behavior = 0,
    release_behavior_flush = 0x00035001,
    release_behavior_none = 0x00035002,
};

pub const ContextAPIAttributeType = c_int;
pub const ContextAPIAttribute = enum(ContextAPIAttributeType) {
    native_context_api = 0x00036001,
    egl_context_api = 0x00036002,
    osmesa_context_api = 0x00036003,
};

pub const VkInstance = usize;
pub const VkPhysicalDevice = usize;
pub const VkSurfaceKHR = u64;
pub const VkResult = enum(i32) {
    success = 0,
    not_ready = 1,
    timeout = 2,
    event_set = 3,
    event_reset = 4,
    incomplete = 5,
    error_out_of_host_memory = -1,
    error_out_of_device_memory = -2,
    error_initialization_failed = -3,
    error_device_lost = -4,
    error_memory_map_failed = -5,
    error_layer_not_present = -6,
    error_extension_not_present = -7,
    error_feature_not_present = -8,
    error_incompatible_driver = -9,
    error_too_many_objects = -10,
    error_format_not_supported = -11,
    error_fragmented_pool = -12,
    error_unknown = -13,
    error_out_of_pool_memory = -1000069000,
    error_invalid_external_handle = -1000072003,
    error_fragmentation = -1000161000,
    error_invalid_opaque_capture_address = -1000257000,
    pipeline_compile_required = 1000297000,
    error_surface_lost_khr = -1000000000,
    error_native_window_in_use_khr = -1000000001,
    suboptimal_khr = 1000001003,
    error_out_of_date_khr = -1000001004,
    error_incompatible_display_khr = -1000003001,
    error_validation_failed_ext = -1000011001,
    error_invalid_shader_nv = -1000012000,
    error_image_usage_not_supported_khr = -1000023000,
    error_video_picture_layout_not_supported_khr = -1000023001,
    error_video_profile_operation_not_supported_khr = -1000023002,
    error_video_profile_format_not_supported_khr = -1000023003,
    error_video_profile_codec_not_supported_khr = -1000023004,
    error_video_std_version_not_supported_khr = -1000023005,
    error_invalid_drm_format_modifier_plane_layout_ext = -1000158000,
    error_not_permitted_khr = -1000174001,
    error_full_screen_exclusive_mode_lost_ext = -1000255000,
    thread_idle_khr = 1000268000,
    thread_done_khr = 1000268001,
    operation_deferred_khr = 1000268002,
    operation_not_deferred_khr = 1000268003,
    error_invalid_video_std_parameters_khr = -1000299000,
    error_compression_exhausted_ext = -1000338000,
    error_incompatible_shader_binary_ext = 1000482000,
    _,
};

pub const VkSystemAllocationScope = enum(i32) {
    command = 0,
    object = 1,
    cache = 2,
    device = 3,
    instance = 4,
    _,
};

pub const VkInternalAllocationType = enum(i32) {
    executable = 0,
    _,
};

pub const vulkan_call_conv: std.builtin.CallingConvention = if (builtin.os.tag == .windows and builtin.cpu.arch == .x86)
    .Stdcall
else if (builtin.abi == .android and (builtin.cpu.arch.isARM() or builtin.cpu.arch.isThumb()) and std.Target.arm.featureSetHas(builtin.cpu.features, .has_v7) and builtin.cpu.arch.ptrBitWidth() == 32)
    // On Android 32-bit ARM targets, Vulkan functions use the "hardfloat"
    // calling convention, i.e. float parameters are passed in registers. This
    // is true even if the rest of the application passes floats on the stack,
    // as it does by default when compiling for the armeabi-v7a NDK ABI.
    .AAPCSVFP
else
    .C;

pub const VkAllocationCallbacks = extern struct {
    p_user_data: ?*anyopaque = null,
    pfn_allocation: ?*const fn (p_user_data: ?*anyopaque, size: usize, alignment: usize, allocation_scope: VkSystemAllocationScope) callconv(vulkan_call_conv) ?*anyopaque,
    pfn_reallocation: ?*const fn (p_user_data: ?*anyopaque, p_original: ?*anyopaque, size: usize, alignment: usize, allocation_scope: VkSystemAllocationScope) callconv(vulkan_call_conv) ?*anyopaque,
    pfn_free: ?*const fn (p_user_data: ?*anyopaque, p_memory: ?*anyopaque) callconv(vulkan_call_conv) void,
    pfn_internal_allocation: ?*const fn (p_user_data: ?*anyopaque, size: usize, allocation_type: VkInternalAllocationType, allocation_scope: VkSystemAllocationScope) callconv(vulkan_call_conv) void = null,
    pfn_internal_free: ?*const fn (p_user_data: ?*anyopaque, size: usize, allocation_type: VkInternalAllocationType, allocation_scope: VkSystemAllocationScope) callconv(vulkan_call_conv) void = null,
};

pub const CursorShapeType = c_int;
pub const CursorShape = enum(CursorShapeType) {
    Arrow = 0x00036001,
    IBeam = 0x00036002,
    Crosshair = 0x00036003,
    Hand = 0x00036004,
    HResize = 0x00036005,
    VResize = 0x00036006,
};

pub const ConnectionType = c_int;
pub const Connection = enum(ConnectionType) {
    Connected = 0x00040001,
    Disconnected = 0x00040002,
};

pub const InitHintType = c_int;
pub const InitHint = enum(InitHintType) {
    JoystickHatButtons = 0x00050001,
    CocoaChdirResources = 0x00051001,
    CocoaMenubar = 0x00051002,
};

pub const GLproc = *const fn () callconv(.c) void;
pub const VKproc = *const fn () callconv(.c) void;

pub const Monitor = c_long;
pub const Window = c_long;
pub const CursorHandle = c_long;

pub const ErrorFun = *const fn (error_code: c_int, description: [*:0]u8) callconv(.C) void;
pub const WindowPosFun = *const fn (window: *Window, xpos: c_int, ypos: c_int) callconv(.C) void;
pub const WindowSizeFun = *const fn (window: *Window, width: c_int, height: c_int) callconv(.C) void;
pub const WindowCloseFun = *const fn (window: *Window) callconv(.C) void;
pub const WindowRefreshFun = *const fn (window: *Window) callconv(.C) void;
pub const WindowFocusFun = *const fn (window: *Window, focused: c_int) callconv(.C) void;
pub const WindowIconifyFun = *const fn (window: *Window, iconified: c_int) callconv(.C) void;
pub const WindowMaximizeFun = *const fn (window: *Window, iconified: c_int) callconv(.C) void;
pub const FramebufferSizeFun = *const fn (window: *Window, width: c_int, height: c_int) callconv(.C) void;
pub const WindowContentScaleFun = *const fn (window: *Window, xscale: f32, yscale: f32) callconv(.C) void;

//Mods is bitfield of modifiers, button is enum of mouse buttons, and action is enum of keystates.
pub const MouseButtonFun = *const fn (window: *Window, button: c_int, action: c_int, mods: c_int) callconv(.C) void;
pub const CursorPosFun = *const fn (window: *Window, xpos: f64, ypos: f64) callconv(.C) void;

//Entered is true or false
pub const CursorEnterFun = *const fn (window: *Window, entered: c_int) callconv(.C) void;
pub const ScrollFun = *const fn (window: *Window, xoffset: f64, yoffset: f64) callconv(.C) void;

//Mods is bitfield of modifiers, keys is enum of keys, and action is enum of keystates.
pub const KeyFun = *const fn (window: *Window, key: c_int, scancode: c_int, action: c_int, mods: c_int) callconv(.C) void;
pub const CharFun = *const fn (window: *Window, codepoint: c_uint) callconv(.C) void;

//Mods refers to the bitfield of Modifiers
pub const CharmodsFun = *const fn (window: *Window, codepoint: c_uint, mods: c_int) callconv(.C) void;
pub const DropFun = *const fn (window: *Window, path_count: c_int, paths: [*:0]const u8) callconv(.C) void;

//Event is one of two states defined by the enum 'Connection'
pub const MonitorFun = *const fn (monitor: *Monitor, event: c_int) callconv(.C) void;

//Event is one of two states defined by the enum 'Connection'
pub const JoystickFun = *const fn (id: c_int, event: c_int) callconv(.C) void;

pub const Vidmode = extern struct {
    width: i32,
    height: i32,
    redBits: i32,
    greenBits: i32,
    blueBits: i32,
    refreshRate: i32,
};

pub const Gammaramp = extern struct { red: ?[*]u16, green: ?[*]u16, blue: ?[*]u16, size: u32 };

pub const Image = extern struct { width: i32, height: i32, pixels: ?[*]u8 };

pub const GamepadState = extern struct { buttons: [15]u8, axes: [6]f32 };

extern fn glfwInit() c_int;

pub fn init() !void {
    if (glfwInit() != 1) {
        return GLFWError.PlatformError;
    }
}

extern fn glfwTerminate() void;
extern fn glfwGetError(description: ?[*:0]const u8) c_int;

fn errorCheck() GLFWError!void {
    const code: c_int = glfwGetError(null);
    const err = switch (code) {
        @intFromEnum(ErrorCode.NotInitialized) => GLFWError.NotInitialized,
        @intFromEnum(ErrorCode.NoCurrentContext) => GLFWError.NoCurrentContext,
        @intFromEnum(ErrorCode.InvalidEnum) => GLFWError.InvalidEnum,
        @intFromEnum(ErrorCode.InvalidValue) => GLFWError.InvalidValue,
        @intFromEnum(ErrorCode.OutOfMemory) => GLFWError.OutOfMemory,
        @intFromEnum(ErrorCode.APIUnavailable) => GLFWError.APIUnavailable,
        @intFromEnum(ErrorCode.VersionUnavailable) => GLFWError.VersionUnavailable,
        @intFromEnum(ErrorCode.PlatformError) => GLFWError.PlatformError,
        @intFromEnum(ErrorCode.FormatUnavailable) => GLFWError.FormatUnavailable,
        @intFromEnum(ErrorCode.NoWindowContext) => GLFWError.NoWindowContext,
        @intFromEnum(ErrorCode.NoError) => GLFWError.NoError,
        else => GLFWError.NoError,
    };
    return err;
}

inline fn errorCheck2() GLFWError!void {
    if (builtin.mode == .Debug) {
        errorCheck() catch |err| {
            if (err != GLFWError.NoError) {
                return err;
            }
        };
    }
}

pub fn terminate() !void {
    glfwTerminate();
    try errorCheck2();
}

extern fn glfwInitHint(hint: c_int, value: c_int) void;
pub fn initHint(hint: InitHint, value: bool) !void {
    glfwInitHint((hint), @intFromBool(value));
    try errorCheck2();
}

extern fn glfwGetVersion(major: *c_int, minor: *c_int, rev: *c_int) void;
extern fn glfwGetVersionString() [*:0]const u8;
pub const getVersion = glfwGetVersion;
pub const getVersionString = glfwGetVersionString;

extern fn glfwSetErrorCallback(callback: ErrorFun) ErrorFun;
pub const setErrorCallback = glfwSetErrorCallback;

extern fn glfwGetMonitors(count: *c_int) ?[*]*Monitor;
pub fn getMonitors(count: *c_int) !?[*]*Monitor {
    const res = glfwGetMonitors(count);
    try errorCheck2();
    return res;
}

extern fn glfwGetPrimaryMonitor() *Monitor;
pub fn getPrimaryMonitor() !*Monitor {
    const res = glfwGetPrimaryMonitor();
    try errorCheck2();
    return res;
}

extern fn glfwGetMonitorPos(monitor: ?*Monitor, xpos: ?*c_int, ypos: ?*c_int) void;
pub fn getMonitorPos(monitor: ?*Monitor, xpos: ?*c_int, ypos: ?*c_int) !void {
    glfwGetMonitorPos(monitor, xpos, ypos);
    try errorCheck2();
}

extern fn glfwGetMonitorWorkarea(monitor: ?*Monitor, xpos: ?*c_int, ypos: ?*c_int, width: ?*c_int, height: ?*c_int) void;
pub fn getMonitorWorkarea(monitor: ?*Monitor, xpos: ?*c_int, ypos: ?*c_int, width: ?*c_int, height: ?*c_int) !void {
    glfwGetMonitorWorkarea(monitor, xpos, ypos, width, height);
    try errorCheck2();
}

extern fn glfwGetMonitorPhysicalSize(monitor: ?*Monitor, widthMM: ?*c_int, heightMM: ?*c_int) void;
pub fn getMonitorPhysicalSize(monitor: ?*Monitor, widthMM: ?*c_int, heightMM: ?*c_int) !void {
    glfwGetMonitorPhysicalSize(monitor, widthMM, heightMM);
    try errorCheck2();
}

extern fn glfwGetMonitorContentScale(monitor: ?*Monitor, xscale: ?*f32, yscale: ?*f32) void;
pub fn getMonitorContentScale(monitor: ?*Monitor, xscale: ?*f32, yscale: ?*f32) !void {
    glfwGetMonitorContentScale(monitor, xscale, yscale);
    try errorCheck2();
}

extern fn glfwGetMonitorName(monitor: ?*Monitor) ?[*:0]const u8;
pub fn getMonitorName(monitor: ?*Monitor) !?[*:0]const u8 {
    const res = glfwGetMonitorName(monitor);
    try errorCheck2();
    return res;
}

extern fn glfwSetMonitorUserPointer(monitor: ?*Monitor, pointer: ?*anyopaque) void;
pub fn setMonitorUserPointer(monitor: ?*Monitor, pointer: ?*anyopaque) !void {
    glfwSetMonitorUserPointer(monitor, pointer);
    try errorCheck2();
}

extern fn glfwGetMonitorUserPointer(monitor: ?*Monitor) ?*anyopaque;
pub fn getMonitorUserPointer(monitor: ?*Monitor) !?*anyopaque {
    const res = glfwGetMonitorUserPointer(monitor);
    try errorCheck2();
    return res;
}

extern fn glfwSetMonitorCallback(callback: MonitorFun) MonitorFun;
pub fn setMonitorCallback(callback: MonitorFun) !MonitorFun {
    const res = glfwSetMonitorCallback(callback);
    try errorCheck2();
    return res;
}

extern fn glfwGetVideoModes(monitor: ?*Monitor, count: *c_int) ?[*]Vidmode;
pub fn getVideoModes(monitor: ?*Monitor, count: *c_int) !?[*]Vidmode {
    const res = glfwGetVideoModes(monitor, count);
    try errorCheck2();
    return res;
}

extern fn glfwGetVideoMode(monitor: ?*Monitor) ?*Vidmode;
pub fn getVideoMode(monitor: ?*Monitor) !?*Vidmode {
    const res = getVideoMode(monitor);
    try errorCheck2();
    return res;
}

extern fn glfwSetGamma(monitor: ?*Monitor, gamma: f32) void;
pub fn setGamma(monitor: ?*Monitor, gamma: f32) !void {
    glfwSetGamma(monitor, gamma);
    try errorCheck2();
}

extern fn glfwGetGammaRamp(monitor: ?*Monitor) ?*Gammaramp;
pub fn getGammaRamp(monitor: ?*Monitor) !?*Gammaramp {
    const res = glfwGetGammaRamp(monitor);
    try errorCheck2();
    return res;
}

extern fn glfwSetGammaRamp(monitor: ?*Monitor, ramp: ?*Gammaramp) void;
pub fn setGammaRamp(monitor: ?*Monitor, ramp: ?*Gammaramp) !void {
    glfwSetGammaRamp(monitor, ramp);
    try errorCheck2();
}

extern fn glfwDefaultWindowHints() void;
pub fn defaultWindowHints() !void {
    glfwDefaultWindowHints();
    try errorCheck2();
}

extern fn glfwWindowHint(hint: c_int, value: c_int) void;
pub fn windowHint(hint: WindowHint, value: c_int) !void {
    glfwWindowHint(@intFromEnum(hint), value);
    try errorCheck2();
}

extern fn glfwWindowHintString(hint: c_int, value: [*:0]const u8) void;
pub fn windowHintString(hint: WindowHint, value: [*:0]const u8) !void {
    glfwWindowHintString((hint), value);
    try errorCheck2();
}

extern fn glfwCreateWindow(width: c_int, height: c_int, title: [*:0]const u8, monitor: ?*Monitor, share: ?*Window) ?*Window;
pub fn createWindow(width: c_int, height: c_int, title: [*:0]const u8, monitor: ?*Monitor, share: ?*Window) !*Window {
    const res = glfwCreateWindow(width, height, title, monitor, share);
    try errorCheck2();
    if (res == null) {
        return GLFWError.PlatformError;
    }
    return res.?;
}

extern fn glfwDestroyWindow(window: ?*Window) void;
pub fn destroyWindow(window: ?*Window) !void {
    glfwDestroyWindow(window);
    try errorCheck2();
}

extern fn glfwWindowShouldClose(window: ?*Window) c_int;
pub fn windowShouldClose(window: ?*Window) !bool {
    const res = glfwWindowShouldClose(window);
    try errorCheck2();
    return res != 0;
}

extern fn glfwSetWindowShouldClose(window: ?*Window, value: c_int) void;
pub fn setWindowShouldClose(window: ?*Window, value: bool) !void {
    glfwSetWindowShouldClose(window, @intFromBool(value));
    try errorCheck2();
}

extern fn glfwSetWindowTitle(window: ?*Window, title: [*:0]const u8) void;
pub fn setWindowTitle(window: ?*Window, title: [*:0]const u8) !void {
    glfwSetWindowTitle(window, title);
    try errorCheck2();
}

extern fn glfwSetWindowIcon(window: ?*Window, count: c_int, images: ?[*]Image) void;
pub fn setWindowIcon(window: ?*Window, count: c_int, images: ?[*]Image) !void {
    glfwSetWindowIcon(window, count, images);
    try errorCheck2();
}

extern fn glfwGetWindowPos(window: ?*Window, xpos: *c_int, ypos: *c_int) void;
pub fn getWindowPos(window: ?*Window, xpos: *c_int, ypos: *c_int) !void {
    glfwGetWindowPos(window, xpos, ypos);
    try errorCheck2();
}

extern fn glfwSetWindowPos(window: ?*Window, xpos: c_int, ypos: c_int) void;
pub fn setWindowPos(window: ?*Window, xpos: c_int, ypos: c_int) !void {
    glfwSetWindowPos(window, xpos, ypos);
    try errorCheck2();
}

extern fn glfwGetWindowSize(window: ?*Window, width: *c_int, height: *c_int) void;
pub fn getWindowSize(window: ?*Window, width: *c_int, height: *c_int) !void {
    glfwGetWindowSize(window, width, height);
    try errorCheck2();
}

extern fn glfwSetWindowSizeLimits(window: ?*Window, minwidth: c_int, minheight: c_int, maxwidth: c_int, maxheight: c_int) void;
pub fn setWindowSizeLimits(window: ?*Window, minwidth: c_int, minheight: c_int, maxwidth: c_int, maxheight: c_int) void {
    glfwSetWindowSizeLimits(window, minwidth, minheight, maxwidth, maxheight);
    try errorCheck2();
}

extern fn glfwSetWindowAspectRatio(window: ?*Window, numer: c_int, denom: c_int) void;
pub fn setWindowAspectRatio(window: ?*Window, numer: c_int, denom: c_int) !void {
    glfwSetWindowAspectRatio(window, numer, denom);
    try errorCheck2();
}

extern fn glfwSetWindowSize(window: ?*Window, width: c_int, height: c_int) void;
pub fn setWindowSize(window: ?*Window, width: c_int, height: c_int) !void {
    glfwSetWindowSize(window, width, height);
    try errorCheck2();
}

extern fn glfwGetFramebufferSize(window: ?*Window, width: *c_int, height: *c_int) void;
pub fn getFramebufferSize(window: ?*Window, width: *c_int, height: *c_int) !void {
    glfwGetFramebufferSize(window, width, height);
    try errorCheck2();
}

extern fn glfwGetWindowFrameSize(window: ?*Window, left: *c_int, top: *c_int, right: *c_int, bottom: *c_int) void;
pub fn getWindowFrameSize(window: ?*Window, left: *c_int, top: *c_int, right: *c_int, bottom: *c_int) !void {
    glfwGetWindowFrameSize(window, left, top, right, bottom);
    try errorCheck2();
}

extern fn glfwGetWindowContentScale(window: ?*Window, xscale: *f32, yscale: *f32) void;
pub fn getWindowContentScale(window: ?*Window, xscale: *f32, yscale: *f32) !void {
    glfwGetWindowContentScale(window, xscale, yscale);
    try errorCheck2();
}

extern fn glfwGetWindowOpacity(window: ?*Window) f32;
pub fn getWindowOpacity(window: ?*Window) f32 {
    const res = glfwGetWindowOpacity(window);
    errorCheck2();
    return res;
}

extern fn glfwSetWindowOpacity(window: ?*Window, opacity: f32) void;
pub fn setWindowOpacity(window: ?*Window, opacity: f32) void {
    glfwSetWindowOpacity(window, opacity);
    errorCheck2();
}

extern fn glfwIconifyWindow(window: ?*Window) void;
pub fn iconifyWindow(window: ?*Window) void {
    glfwIconifyWindow(window);
    errorCheck2();
}

extern fn glfwRestoreWindow(window: ?*Window) void;
pub fn restoreWindow(window: ?*Window) void {
    glfwRestoreWindow(window);
    errorCheck2();
}

extern fn glfwMaximizeWindow(window: ?*Window) void;
pub fn maximizeWindow(window: ?*Window) void {
    glfwMaximizeWindow(window);
    errorCheck2();
}

extern fn glfwShowWindow(window: ?*Window) void;
pub fn showWindow(window: ?*Window) void {
    glfwShowWindow(window);
    errorCheck2();
}

extern fn glfwHideWindow(window: ?*Window) void;
pub fn hideWindow(window: ?*Window) void {
    glfwHideWindow(window);
    errorCheck2();
}

extern fn glfwFocusWindow(window: ?*Window) void;
pub fn focusWindow(window: ?*Window) void {
    glfwFocusWindow(window);
    errorCheck2();
}

extern fn glfwRequestWindowAttention(window: ?*Window) void;
pub fn requestWindowAttention(window: ?*Window) void {
    glfwRequestWindowAttention(window);
    errorCheck2();
}

extern fn glfwGetWindowMonitor(window: ?*Window) ?*Monitor;
pub fn getWindowMonitor(window: ?*Window) ?*Monitor {
    const res = glfwGetWindowMonitor(window);
    errorCheck2();
    return res;
}

extern fn glfwSetWindowMonitor(window: ?*Window, monitor: ?*Monitor, xpos: c_int, ypos: c_int, width: c_int, height: c_int, refreshRate: c_int) void;
pub fn setWindowMonitor(window: ?*Window, monitor: ?*Monitor, xpos: c_int, ypos: c_int, width: c_int, height: c_int, refreshRate: c_int) void {
    glfwSetWindowMonitor(window, monitor, xpos, ypos, width, height, refreshRate);
    errorCheck2();
}

extern fn glfwGetWindowAttrib(window: ?*Window, attrib: c_int) c_int;
pub fn getWindowAttrib(window: ?*Window, attrib: WindowHint) c_int {
    const res = glfwGetWindowAttrib(window, (attrib));
    errorCheck2();
    return res;
}

extern fn glfwSetWindowAttrib(window: ?*Window, attrib: c_int, value: c_int) void;
pub fn setWindowAttrib(window: ?*Window, attrib: WindowHint, value: c_int) void {
    glfwSetWindowAttrib(window, (attrib), value);
    errorCheck2();
}

extern fn glfwSetWindowUserPointer(window: ?*Window, pointer: *anyopaque) void;
pub fn setWindowUserPointer(window: ?*Window, pointer: *anyopaque) void {
    glfwSetWindowUserPointer(window, pointer);
    errorCheck2();
}

extern fn glfwGetWindowUserPointer(window: ?*Window) ?*anyopaque;
pub fn getWindowUserPointer(window: ?*Window) ?*anyopaque {
    const res = glfwGetWindowUserPointer(window);
    errorCheck2();
    return res;
}

extern fn glfwSetWindowPosCallback(window: ?*Window, callback: WindowPosFun) WindowPosFun;
extern fn glfwSetWindowSizeCallback(window: ?*Window, callback: WindowSizeFun) WindowSizeFun;
extern fn glfwSetWindowCloseCallback(window: ?*Window, callback: WindowCloseFun) WindowCloseFun;
extern fn glfwSetWindowRefreshCallback(window: ?*Window, callback: WindowRefreshFun) WindowRefreshFun;
extern fn glfwSetWindowFocusCallback(window: ?*Window, callback: WindowFocusFun) WindowFocusFun;
extern fn glfwSetWindowIconifyCallback(window: ?*Window, callback: WindowIconifyFun) WindowIconifyFun;
extern fn glfwSetWindowMaximizeCallback(window: ?*Window, callback: WindowMaximizeFun) WindowMaximizeFun;
extern fn glfwSetFramebufferSizeCallback(window: ?*Window, callback: FramebufferSizeFun) FramebufferSizeFun;
extern fn glfwSetWindowContentScaleCallback(window: ?*Window, callback: WindowContentScaleFun) WindowContentScaleFun;

pub fn setWindowPosCallback(window: ?*Window, callback: WindowPosFun) !WindowPosFun {
    const res = glfwSetWindowPosCallback(window, callback);
    try errorCheck2();
    return res;
}
pub fn setWindowSizeCallback(window: ?*Window, callback: WindowSizeFun) !WindowSizeFun {
    const res = glfwSetWindowSizeCallback(window, callback);
    try errorCheck2();
    return res;
}
pub fn setWindowCloseCallback(window: ?*Window, callback: WindowCloseFun) !WindowCloseFun {
    const res = glfwSetWindowCloseCallback(window, callback);
    try errorCheck2();
    return res;
}
pub fn setWindowRefreshCallback(window: ?*Window, callback: WindowRefreshFun) !WindowRefreshFun {
    const res = glfwSetWindowRefreshCallback(window, callback);
    try errorCheck2();
    return res;
}
pub fn setWindowFocusCallback(window: ?*Window, callback: WindowFocusFun) !WindowFocusFun {
    const res = glfwSetWindowFocusCallback(window, callback);
    try errorCheck2();
    return res;
}
pub fn setWindowIconifyCallback(window: ?*Window, callback: WindowIconifyFun) !WindowIconifyFun {
    const res = glfwSetWindowIconifyCallback(window, callback);
    try errorCheck2();
    return res;
}
pub fn setWindowMaximizeCallback(window: ?*Window, callback: WindowMaximizeFun) !WindowMaximizeFun {
    const res = glfwSetWindowMaximizeCallback(window, callback);
    try errorCheck2();
    return res;
}
pub fn setFramebufferSizeCallback(window: ?*Window, callback: FramebufferSizeFun) !FramebufferSizeFun {
    const res = glfwSetFramebufferSizeCallback(window, callback);
    try errorCheck2();
    return res;
}
pub fn setWindowContentScaleCallback(window: ?*Window, callback: WindowContentScaleFun) !WindowContentScaleFun {
    const res = glfwSetWindowContentScaleCallback(window, callback);
    try errorCheck2();
    return res;
}

extern fn glfwPollEvents() void;
pub fn pollEvents() !void {
    glfwPollEvents();
    try errorCheck2();
}

extern fn glfwWaitEvents() void;
pub fn waitEvents() !void {
    glfwWaitEvents();
    try errorCheck2();
}

extern fn glfwWaitEventsTimeout(timeout: f64) void;
pub fn waitEventsTimeout(timeout: f64) !void {
    glfwWaitEventsTimeout(timeout);
    try errorCheck2();
}

extern fn glfwPostEmptyEvent() void;
pub fn postEmptyEvent() !void {
    glfwPostEmptyEvent();
    try errorCheck2();
}

extern fn glfwGetInputMode(window: ?*Window, mode: c_int) c_int;

//Depending on what your input mode is, you can change to true/false or one of the attribute enums
pub fn getInputMode(window: ?*Window, mode: InputMode) !c_int {
    const res = glfwGetInputMode(window, (mode));
    try errorCheck2();
    return res;
}

extern fn glfwSetInputMode(window: ?*Window, mode: InputMode, value: c_int) void;
pub fn setInputMode(window: ?*Window, mode: InputMode, value: CursorVisibilityAttribute) !void {
    glfwSetInputMode(window, (mode), @intFromEnum(value));
    try errorCheck2();
}

extern fn glfwRawMouseMotionSupported() c_int;
pub fn rawMouseMotionSupported() !bool {
    const res = glfwRawMouseMotionSupported();
    try errorCheck2();
    return res != 0;
}

const std = @import("std");
extern fn glfwGetKeyName(key: c_int, scancode: c_int) ?[*:0]const u8;
pub fn getKeyName(key: Key, scancode: c_int) !?[:0]const u8 {
    const res = glfwGetKeyName((key), scancode);
    try errorCheck2();
    return std.mem.spanZ(res);
}

extern fn glfwGetKeyScancode(key: c_int) c_int;
pub fn getKeyScancode(key: Key) !c_int {
    const res = glfwGetKeyScancode((key));
    try errorCheck2();
    return res;
}

extern fn glfwGetKey(window: ?*Window, key: c_int) c_int;
pub fn getKey(window: ?*Window, key: Key) !Action {
    const res = glfwGetKey(window, @intFromEnum(key));
    try errorCheck2();
    return @enumFromInt(res);
}

extern fn glfwGetMouseButton(window: ?*Window, button: c_int) c_int;
pub fn getMouseButton(window: ?*Window, button: Mouse) !Action {
    const res = glfwGetMouseButton(window, @intFromEnum(button));
    try errorCheck2();
    return @enumFromInt(res);
}

extern fn glfwGetCursorPos(window: ?*Window, xpos: *f64, ypos: *f64) void;
pub fn getCursorPos(window: ?*Window, xpos: *f64, ypos: *f64) !void {
    glfwGetCursorPos(window, xpos, ypos);
    try errorCheck2();
}

extern fn glfwSetCursorPos(window: ?*Window, xpos: f64, ypos: f64) void;
pub fn setCursorPos(window: ?*Window, xpos: f64, ypos: f64) !void {
    glfwSetCursorPos(window, xpos, ypos);
    try errorCheck2();
}

extern fn glfwCreateCursor(image: ?*Image, xhot: c_int, yhot: c_int) ?*CursorHandle;
pub fn createCursor(image: ?*Image, xhot: c_int, yhot: c_int) !?*CursorHandle {
    const res = glfwCreateCursor(image, xhot, yhot);
    try errorCheck2();
    return res;
}

extern fn glfwCreateStandardCursor(shape: c_int) ?*CursorHandle;
pub fn createStandardCursor(shape: CursorShape) !?*CursorHandle {
    const res = glfwCreateStandardCursor((shape));
    try errorCheck2();
    return res;
}

extern fn glfwDestroyCursor(cursor: ?*CursorHandle) void;
pub fn destroyCursor(cursor: ?*CursorHandle) !void {
    glfwDestroyCursor(cursor);
    try errorCheck2();
}

extern fn glfwSetCursor(window: ?*Window, cursor: ?*CursorHandle) void;
pub fn setCursor(window: ?*Window, cursor: ?*CursorHandle) !void {
    glfwSetCursor(window, cursor);
    try errorCheck2();
}

extern fn glfwSetKeyCallback(window: ?*Window, callback: KeyFun) KeyFun;
extern fn glfwSetCharCallback(window: ?*Window, callback: CharFun) CharFun;
extern fn glfwSetCharModsCallback(window: ?*Window, callback: CharmodsFun) CharmodsFun;
extern fn glfwSetMouseButtonCallback(window: ?*Window, callback: MouseButtonFun) MouseButtonFun;
extern fn glfwSetCursorPosCallback(window: ?*Window, callback: CursorPosFun) CursorPosFun;
extern fn glfwSetCursorEnterCallback(window: ?*Window, callback: CursorEnterFun) CursorEnterFun;
extern fn glfwSetScrollCallback(window: ?*Window, callback: ScrollFun) ScrollFun;
extern fn glfwSetDropCallback(window: ?*Window, callback: DropFun) DropFun;

pub fn setKeyCallback(window: ?*Window, callback: KeyFun) KeyFun {
    const res = glfwSetKeyCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setCharCallback(window: ?*Window, callback: CharFun) CharFun {
    const res = glfwSetCharCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setCharModsCallback(window: ?*Window, callback: CharmodsFun) CharmodsFun {
    const res = glfwSetCharModsCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setMouseButtonCallback(window: ?*Window, callback: MouseButtonFun) MouseButtonFun {
    const res = glfwSetMouseButtonCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setCursorPosCallback(window: ?*Window, callback: CursorPosFun) CursorPosFun {
    const res = glfwSetCursorPosCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setCursorEnterCallback(window: ?*Window, callback: CursorEnterFun) CursorEnterFun {
    const res = glfwSetCursorEnterCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setScrollCallback(window: ?*Window, callback: ScrollFun) ScrollFun {
    const res = glfwSetScrollCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setDropCallback(window: ?*Window, callback: DropFun) DropFun {
    const res = glfwSetDropCallback(window, callback);
    errorCheck2();
    return res;
}

extern fn glfwJoystickPresent(jid: c_int) c_int;
pub fn joystickPresent(jid: c_int) bool {
    const res = glfwJoystickPresent(jid);
    errorCheck2();
    return res != 0;
}

extern fn glfwGetJoystickAxes(jid: c_int, count: *c_int) ?[*]const f32;
pub fn getJoystickAxes(jid: c_int, count: *c_int) ?[*]const f32 {
    const res = glfwGetJoystickAxes(jid, count);
    errorCheck2();
    return res;
}

extern fn glfwGetJoystickButtons(jid: c_int, count: *c_int) ?[*]const u8;
pub fn getJoystickButtons(jid: c_int, count: *c_int) ?[*]const u8 {
    const res = glfwGetJoystickButtons(jid, count);
    errorCheck2();
    return res;
}

extern fn glfwGetJoystickHats(jid: c_int, count: *c_int) ?[*]const u8;
pub fn getJoystickHats(jid: c_int, count: *c_int) ?[*]const u8 {
    const res = glfwGetJoystickHats(jid, count);
    errorCheck2();
    return res;
}

extern fn glfwGetJoystickName(jid: c_int) ?[*:0]const u8;
pub fn getJoystickName(jid: c_int) ?[*:0]const u8 {
    const res = glfwGetJoystickName(jid);
    errorCheck2();
    return res;
}

extern fn glfwGetJoystickGUID(jid: c_int) ?[*:0]const u8;
pub fn getJoystickGUID(jid: c_int) ?[*:0]const u8 {
    const res = glfwGetJoystickGUID(jid);
    errorCheck2();
    return res;
}

extern fn glfwSetJoystickUserPointer(jid: c_int, pointer: *anyopaque) void;
pub fn setJoystickUserPointer(jid: c_int, pointer: *anyopaque) void {
    const res = glfwSetJoystickUserPointer(jid, pointer);
    errorCheck2();
    return res;
}

extern fn glfwGetJoystickUserPointer(jid: c_int) *anyopaque;
pub fn getJoystickUserPointer(jid: c_int) *anyopaque {
    const res = getJoystickUserPointer(jid);
    errorCheck2();
    return res;
}

extern fn glfwJoystickIsGamepad(jid: c_int) c_int;
pub fn joystickIsGamepad(jid: c_int) c_int {
    const res = glfwJoystickIsGamepad(jid);
    errorCheck2();
    return res;
}

extern fn glfwSetJoystickCallback(callback: JoystickFun) JoystickFun;
pub fn setJoystickCallback(callback: JoystickFun) JoystickFun {
    const res = glfwSetJoystickCallback(callback);
    errorCheck2();
    return res;
}

extern fn glfwUpdateGamepadMappings(string: [*:0]const u8) c_int;
pub fn updateGamepadMappings(string: [*:0]const u8) c_int {
    const res = glfwUpdateGamepadMappings(string);
    errorCheck2();
    return res;
}

extern fn glfwGetGamepadName(jid: c_int) ?[*:0]const u8;
pub fn getGamepadName(jid: c_int) ?[*:0]const u8 {
    const res = glfwGetGamepadName(jid);
    errorCheck2();
    return res;
}

extern fn glfwGetGamepadState(jid: c_int, state: ?*GamepadState) c_int;
pub fn getGamepadState(jid: c_int, state: ?*GamepadState) c_int {
    const res = glfwGetGamepadState(jid, state);
    errorCheck2();
    return res;
}

extern fn glfwSetClipboardString(window: ?*Window, string: [*:0]const u8) void;
pub fn setClipboardString(window: ?*Window, string: [*:0]const u8) void {
    glfwSetClipboardString(window, string);
    try errorCheck2();
}

extern fn glfwGetClipboardString(window: ?*Window) ?[*:0]const u8;
pub fn getClipboardString(window: ?*Window) ?[:0]const u8 {
    const res = glfwGetClipboardString(window);
    try errorCheck2();
    return std.mem.spanZ(res);
}

extern fn glfwGetTime() f64;
pub fn getTime() !f64 {
    const res = glfwGetTime();
    try errorCheck2();
    return res;
}

extern fn glfwSetTime(time: f64) void;
pub fn setTime(time: f64) !void {
    glfwSetTime(time);
    try errorCheck2();
}

extern fn glfwGetTimerValue() u64;
pub fn getTimerValue() !u64 {
    const res = glfwGetTimerValue();
    try errorCheck2();
    return res;
}

extern fn glfwGetTimerFrequency() u64;
pub fn getTimerFrequency() !u64 {
    const res = glfwGetTimerFrequency();
    try errorCheck2();
    return res();
}

//Context
extern fn glfwMakeContextCurrent(window: ?*Window) void;
pub fn makeContextCurrent(window: ?*Window) !void {
    glfwMakeContextCurrent(window);
    try errorCheck2();
}

extern fn glfwGetCurrentContext() ?*Window;
pub fn getCurrentContext(window: ?*Window) !?*Window {
    const res = glfwGetCurrentContext(window);
    try errorCheck2();
    return res;
}

extern fn glfwSwapBuffers(window: ?*Window) void;
pub fn swapBuffers(window: ?*Window) !void {
    glfwSwapBuffers(window);
    try errorCheck2();
}

extern fn glfwSwapInterval(interval: c_int) void;
pub fn swapInterval(interval: c_int) !void {
    glfwSwapInterval(interval);
    try errorCheck2();
}

//GL Stuff
extern fn glfwExtensionSupported(extension: [*:0]const u8) c_int;
pub fn extensionSupported(extension: [*:0]const u8) !c_int {
    const res = glfwExtensionSupported(extension);
    try errorCheck2();
    return res;
}

extern fn glfwGetProcAddress(procname: [*:0]const u8) ?GLproc;
pub fn getProcAddress(procname: [*:0]const u8) !?GLproc {
    const res = glfwGetProcAddress(procname);
    try errorCheck2();
    return res;
}

pub fn getProcAddressIgnoreError(procname: [*:0]const u8) ?GLproc {
    const res = glfwGetProcAddress(procname);
    errorCheck2() catch |err| {
        std.debug.panic("Error: {}", .{err});
    };
    return res;
}

//Vulkan stuff
extern fn glfwGetInstanceProcAddress(instance: VkInstance, procname: [*:0]const u8) ?VKproc;
pub fn getInstanceProcAddress(instance: VkInstance, procname: [*:0]const u8) !?VKproc {
    const res = glfwGetInstanceProcAddress(instance, procname);
    try errorCheck2();
    return res;
}

extern fn glfwGetPhysicalDevicePresentationSupport(instance: VkInstance, device: VkPhysicalDevice, queuefamily: u32) c_int;
pub fn getPhysicalDevicePresentationSupport(instance: VkInstance, device: VkPhysicalDevice, queuefamily: u32) !bool {
    const res = glfwGetPhysicalDevicePresentationSupport(instance, device, queuefamily);
    try errorCheck2();
    return res != 0;
}

extern fn glfwCreateWindowSurface(instance: VkInstance, window: *Window, allocator: ?*const VkAllocationCallbacks, surface: *VkSurfaceKHR) VkResult;
pub fn createWindowSurface(instance: VkInstance, window: *Window, allocator: ?*const VkAllocationCallbacks, surface: *VkSurfaceKHR) !VkResult {
    const res = glfwCreateWindowSurface(instance, window, allocator, surface);
    try errorCheck2();
    return res;
}

extern fn glfwVulkanSupported() c_int;
pub fn vulkanSupported() !bool {
    const res = glfwVulkanSupported();
    try errorCheck2();
    return res != 0;
}

extern fn glfwGetRequiredInstanceExtensions(count: *u32) ?[*][*:0]const u8;
pub fn getRequiredInstanceExtensions(count: *u32) !?[*][*:0]const u8 {
    const res = glfwGetRequiredInstanceExtensions(count);
    try errorCheck2();
    return res;
}
