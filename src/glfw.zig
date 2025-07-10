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
    Release = 0,
    Press = 1,
    Repeat = 2,
};

pub const JoystickHatType = c_int;
pub const JoystickHat = enum(JoystickHatType) {
    Centered = 0,
    Up = 1,
    Right = 2,
    Down = 4,
    Left = 8,
    Rightup = (2 | 1),
    Rightdown = (2 | 4),
    Leftup = (8 | 1),
    Leftdown = (8 | 4),
};

pub const KeyType = c_int;
pub const Key = enum(KeyType) {
    Unknown = -1,
    Space = 32,
    Apostrophe = 39,
    Comma = 44,
    Minus = 45,
    Period = 46,
    Slash = 47,
    Num0 = 48,
    Num1 = 49,
    Num2 = 50,
    Num3 = 51,
    Num4 = 52,
    Num5 = 53,
    Num6 = 54,
    Num7 = 55,
    Num8 = 56,
    Num9 = 57,
    Semicolon = 59,
    Equal = 61,
    A = 65,
    B = 66,
    C = 67,
    D = 68,
    E = 69,
    F = 70,
    G = 71,
    H = 72,
    I = 73,
    J = 74,
    K = 75,
    L = 76,
    M = 77,
    N = 78,
    O = 79,
    P = 80,
    Q = 81,
    R = 82,
    S = 83,
    T = 84,
    U = 85,
    V = 86,
    W = 87,
    X = 88,
    Y = 89,
    Z = 90,
    LeftBracket = 91,
    Backslash = 92,
    RightBracket = 93,
    GraveAccent = 96,
    World1 = 161,
    World2 = 162,
    Escape = 256,
    Enter = 257,
    Tab = 258,
    Backspace = 259,
    Insert = 260,
    Delete = 261,
    Right = 262,
    Left = 263,
    Down = 264,
    Up = 265,
    PageUp = 266,
    PageDown = 267,
    Home = 268,
    End = 269,
    CapsLock = 280,
    ScrollLock = 281,
    NumLock = 282,
    PrintScreen = 283,
    Pause = 284,
    F1 = 290,
    F2 = 291,
    F3 = 292,
    F4 = 293,
    F5 = 294,
    F6 = 295,
    F7 = 296,
    F8 = 297,
    F9 = 298,
    F10 = 299,
    F11 = 300,
    F12 = 301,
    F13 = 302,
    F14 = 303,
    F15 = 304,
    F16 = 305,
    F17 = 306,
    F18 = 307,
    F19 = 308,
    F20 = 309,
    F21 = 310,
    F22 = 311,
    F23 = 312,
    F24 = 313,
    F25 = 314,
    Kp0 = 320,
    Kp1 = 321,
    Kp2 = 322,
    Kp3 = 323,
    Kp4 = 324,
    Kp5 = 325,
    Kp6 = 326,
    Kp7 = 327,
    Kp8 = 328,
    Kp9 = 329,
    KpDecimal = 330,
    KpDivide = 331,
    KpMultiply = 332,
    KpSubtract = 333,
    KpAdd = 334,
    KpEnter = 335,
    KpEqual = 336,
    LeftShift = 340,
    LeftControl = 341,
    LeftAlt = 342,
    LeftSuper = 343,
    RightShift = 344,
    RightControl = 345,
    RightAlt = 346,
    RightSuper = 347,
    Menu = 348,
};

pub const ModifierType = c_int;
pub const Modifier = enum(ModifierType) {
    Shift = 0x0001,
    Control = 0x0002,
    Alt = 0x0004,
    Super = 0x0008,
    CapsLock = 0x0010,
    NumLock = 0x0020,
};

pub const MouseType = c_int;
pub const Mouse = enum(MouseType) {
    Button4 = 3,
    Button5 = 4,
    Button6 = 5,
    Button7 = 6,
    ButtonLast = 7,
    ButtonLeft = 0,
    ButtonRight = 1,
    ButtonMiddle = 2,
};

pub const JoystickType = c_int;
pub const JoystickButton = enum(JoystickType) {
    One = 0,
    Two = 1,
    Three = 2,
    Four = 3,
    Five = 4,
    Six = 5,
    Seven = 6,
    Eight = 7,
    Nine = 8,
    Ten = 9,
    Eleven = 10,
    Twelve = 11,
    Thirteen = 12,
    Fourteen = 13,
    Fifthteen = 14,
    Sixteen = 15,
    Last = 15,
};

pub const GamepadButtonType = c_int;
pub const GamepadButton = enum(GamepadButtonType) {
    A = 0,
    B = 1,
    X = 2,
    Y = 3,
    LeftBumper = 4,
    RightBumper = 5,
    Back = 6,
    Start = 7,
    Guide = 8,
    LeftThumb = 9,
    Cross = 0,
    Circle = 1,
    Square = 2,
    Triangle = 3,
    RightThumb = 10,
    DpadUp = 11,
    DpadRight = 12,
    DpadDown = 13,
    DpadLeft = 14,
    Last = 14,
};

pub const GamepadAxisType = c_int;
pub const GamepadAxis = enum(GamepadAxisType) {
    LeftX = 0,
    LeftY = 1,
    RightX = 2,
    RightY = 3,
    LeftTrigger = 4,
    RightTrigger = 5,
    Last = 5,
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
pub const NotInitialized: ErrorCodeType = 0x00010001;
pub const NoCurrentContext: ErrorCodeType = 0x00010002;
pub const InvalidEnum: ErrorCodeType = 0x00010003;
pub const InvalidValue: ErrorCodeType = 0x00010004;
pub const OutOfMemory: ErrorCodeType = 0x00010005;
pub const APIUnavailable: ErrorCodeType = 0x00010006;
pub const VersionUnavailable: ErrorCodeType = 0x00010007;
pub const PlatformError: ErrorCodeType = 0x00010008;
pub const FormatUnavailable: ErrorCodeType = 0x00010009;
pub const NoWindowContext: ErrorCodeType = 0x0001000A;
pub const NoError: ErrorCodeType = 0;

pub const WindowHintType = c_int;
pub const WindowHint = enum(WindowHintType) {
    Focused = 0x00020001,
    Iconified = 0x00020002,
    Resizable = 0x00020003,
    Visible = 0x00020004,
    Decorated = 0x00020005,
    AutoIconify = 0x00020006,
    Floating = 0x00020007,
    Maximized = 0x00020008,
    CenterCursor = 0x00020009,
    TransparentFramebuffer = 0x0002000a,
    Hovered = 0x0002000b,
    FocusOnShow = 0x0002000c,
    RedBits = 0x00021001,
    GreenBits = 0x00021002,
    BlueBits = 0x00021003,
    AlphaBits = 0x00021004,
    DepthBits = 0x00021005,
    StencilBits = 0x00021006,
    AccumRedBits = 0x00021007,
    AccumGreenBits = 0x00021008,
    AccumBlueBits = 0x00021009,
    AccumAlphaBits = 0x0002100a,
    AUXBuffers = 0x0002100b,
    Stereo = 0x0002100c,
    Samples = 0x0002100d,
    SRGBCapable = 0x0002100e,
    RefreshRate = 0x0002100f,
    Doublebuffer = 0x00021010,
    ClientAPI = 0x00022001,
    ContextVersionMajor = 0x00022002,
    ContextVersionMinor = 0x00022003,
    ContextRevision = 0x00022004,
    ContextRobustness = 0x00022005,
    OpenGLForwardCompat = 0x00022006,
    OpenGLDebugContext = 0x00022007,
    OpenGLProfile = 0x00022008,
    ContextReleaseBehavior = 0x00022009,
    ContextNoError = 0x0002200a,
    ContextCreationAPI = 0x0002200b,
    ScaleToMonitor = 0x0002200c,
    CocoaRetinaFramebuffer = 0x00023001,
    CocoaFrameName = 0x00023002,
    CocoaGraphicsSwitching = 0x00023003,
    X11ClassName = 0x00024001,
    X11InstanceName = 0x00024002,
};

pub const APIAttributeType = c_int;
pub const APIAttribute = enum(APIAttributeType) {
    NoAPI = 0,
    OpenGLAPI = 0x00030001,
    OpenGLESAPI = 0x00030002,
};

pub const RobustnessAttributeType = c_int;
pub const RobustnessAttribute = enum(RobustnessAttributeType) {
    NoRobustness = 0,
    NoResetNotification = 0x00031001,
    LoseContextOnReset = 0x00031002,
};

pub const GLProfileAttributeType = c_int;
pub const GLProfileAttribute = enum(GLProfileAttributeType) {
    AnyProfile = 0,
    CoreProfile = 0x00032001,
    CompatProfile = 0x00032002,
};

pub const InputModeType = c_int;
pub const InputMode = enum(InputModeType) {
    Cursor = 0x00033001,
    StickyKeys = 0x00033002,
    StickyMouseButtons = 0x00033003,
    LockKeyMods = 0x00033004,
    RawMouseMotion = 0x00033005,
};

pub const CursorVisibilityAttributeType = c_int;
pub const CursorVisibilityAttribute = enum(CursorVisibilityAttributeType) {
    Normal = 0x00034001,
    Hidden = 0x00034002,
    Disabled = 0x00034003,
};

pub const ReleaseBehaviorAttributeType = c_int;
pub const ReleaseBehaviorAttribute = enum(ReleaseBehaviorAttributeType) {
    AnyReleaseBehavior = 0,
    ReleaseBehaviorFlush = 0x00035001,
    ReleaseBehaviorNone = 0x00035002,
};

pub const ContextAPIAttributeType = c_int;
pub const ContextAPIAttribute = enum(ContextAPIAttributeType) {
    NativeContextAPI = 0x00036001,
    EGLContextAPI = 0x00036002,
    OSMesaContextAPI = 0x00036003,
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

pub const GLproc = *const fn () callconv(.C) void;
pub const VKproc = *const fn () callconv(.C) void;

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

fn errorCheck() !void {
    const code: c_int = glfwGetError(null);
    const err = switch (code) {
        NotInitialized => GLFWError.NotInitialized,
        NoCurrentContext => GLFWError.NoCurrentContext,
        InvalidEnum => GLFWError.InvalidEnum,
        InvalidValue => GLFWError.InvalidValue,
        OutOfMemory => GLFWError.OutOfMemory,
        APIUnavailable => GLFWError.APIUnavailable,
        VersionUnavailable => GLFWError.VersionUnavailable,
        PlatformError => GLFWError.PlatformError,
        FormatUnavailable => GLFWError.FormatUnavailable,
        NoWindowContext => GLFWError.NoWindowContext,
        NoError => GLFWError.NoError,
        else => GLFWError.NoError,
    };
    return err;
}

fn errorCheck2() void {
    errorCheck() catch |err| {
        if (err != GLFWError.NoError) {
            std.debug.print("error: {s}\n", .{@errorName(err)});
        }
    };
}

pub fn terminate() void {
    glfwTerminate();
    errorCheck2();
}

extern fn glfwInitHint(hint: c_int, value: c_int) void;
pub fn initHint(hint: InitHint, value: bool) void {
    glfwInitHint((hint), @intFromBool(value));
    errorCheck2();
}

extern fn glfwGetVersion(major: *c_int, minor: *c_int, rev: *c_int) void;
extern fn glfwGetVersionString() [*:0]const u8;
pub const getVersion = glfwGetVersion;
pub const getVersionString = glfwGetVersionString;

extern fn glfwSetErrorCallback(callback: ErrorFun) ErrorFun;
pub const setErrorCallback = glfwSetErrorCallback;

extern fn glfwGetMonitors(count: *c_int) ?[*]*Monitor;
pub fn getMonitors(count: *c_int) ?[*]*Monitor {
    const res = glfwGetMonitors(count);
    errorCheck2();
    return res;
}

extern fn glfwGetPrimaryMonitor() *Monitor;
pub fn getPrimaryMonitor() *Monitor {
    const res = glfwGetPrimaryMonitor();
    errorCheck2();
    return res;
}

extern fn glfwGetMonitorPos(monitor: ?*Monitor, xpos: ?*c_int, ypos: ?*c_int) void;
pub fn getMonitorPos(monitor: ?*Monitor, xpos: ?*c_int, ypos: ?*c_int) void {
    glfwGetMonitorPos(monitor, xpos, ypos);
    errorCheck2();
}

extern fn glfwGetMonitorWorkarea(monitor: ?*Monitor, xpos: ?*c_int, ypos: ?*c_int, width: ?*c_int, height: ?*c_int) void;
pub fn getMonitorWorkarea(monitor: ?*Monitor, xpos: ?*c_int, ypos: ?*c_int, width: ?*c_int, height: ?*c_int) void {
    glfwGetMonitorWorkarea(monitor, xpos, ypos, width, height);
    errorCheck2();
}

extern fn glfwGetMonitorPhysicalSize(monitor: ?*Monitor, widthMM: ?*c_int, heightMM: ?*c_int) void;
pub fn getMonitorPhysicalSize(monitor: ?*Monitor, widthMM: ?*c_int, heightMM: ?*c_int) void {
    glfwGetMonitorPhysicalSize(monitor, widthMM, heightMM);
    errorCheck2();
}

extern fn glfwGetMonitorContentScale(monitor: ?*Monitor, xscale: ?*f32, yscale: ?*f32) void;
pub fn getMonitorContentScale(monitor: ?*Monitor, xscale: ?*f32, yscale: ?*f32) void {
    glfwGetMonitorContentScale(monitor, xscale, yscale);
    errorCheck2();
}

extern fn glfwGetMonitorName(monitor: ?*Monitor) ?[*:0]const u8;
pub fn getMonitorName(monitor: ?*Monitor) ?[*:0]const u8 {
    const res = glfwGetMonitorName(monitor);
    errorCheck2();
    return res;
}

extern fn glfwSetMonitorUserPointer(monitor: ?*Monitor, pointer: ?*anyopaque) void;
pub fn setMonitorUserPointer(monitor: ?*Monitor, pointer: ?*anyopaque) void {
    glfwSetMonitorUserPointer(monitor, pointer);
    errorCheck2();
}

extern fn glfwGetMonitorUserPointer(monitor: ?*Monitor) ?*anyopaque;
pub fn getMonitorUserPointer(monitor: ?*Monitor) ?*anyopaque {
    const res = glfwGetMonitorUserPointer(monitor);
    errorCheck2();
    return res;
}

extern fn glfwSetMonitorCallback(callback: MonitorFun) MonitorFun;
pub fn setMonitorCallback(callback: MonitorFun) MonitorFun {
    const res = glfwSetMonitorCallback(callback);
    errorCheck2();
    return res;
}

extern fn glfwGetVideoModes(monitor: ?*Monitor, count: *c_int) ?[*]Vidmode;
pub fn getVideoModes(monitor: ?*Monitor, count: *c_int) ?[*]Vidmode {
    const res = glfwGetVideoModes(monitor, count);
    errorCheck2();
    return res;
}

extern fn glfwGetVideoMode(monitor: ?*Monitor) ?*Vidmode;
pub fn getVideoMode(monitor: ?*Monitor) ?*Vidmode {
    const res = getVideoMode(monitor);
    errorCheck2();
    return res;
}

extern fn glfwSetGamma(monitor: ?*Monitor, gamma: f32) void;
pub fn setGamma(monitor: ?*Monitor, gamma: f32) void {
    glfwSetGamma(monitor, gamma);
    errorCheck2();
}

extern fn glfwGetGammaRamp(monitor: ?*Monitor) ?*Gammaramp;
pub fn getGammaRamp(monitor: ?*Monitor) ?*Gammaramp {
    const res = glfwGetGammaRamp(monitor);
    errorCheck2();
    return res;
}

extern fn glfwSetGammaRamp(monitor: ?*Monitor, ramp: ?*Gammaramp) void;
pub fn setGammaRamp(monitor: ?*Monitor, ramp: ?*Gammaramp) void {
    glfwSetGammaRamp(monitor, ramp);
    errorCheck2();
}

extern fn glfwDefaultWindowHints() void;
pub fn defaultWindowHints() void {
    glfwDefaultWindowHints();
    errorCheck2();
}

extern fn glfwWindowHint(hint: c_int, value: c_int) void;
pub fn windowHint(hint: WindowHint, value: c_int) void {
    glfwWindowHint((hint), value);
    errorCheck2();
}

extern fn glfwWindowHintString(hint: c_int, value: [*:0]const u8) void;
pub fn windowHintString(hint: WindowHint, value: [*:0]const u8) void {
    glfwWindowHintString((hint), value);
    errorCheck2();
}

extern fn glfwCreateWindow(width: c_int, height: c_int, title: [*:0]const u8, monitor: ?*Monitor, share: ?*Window) ?*Window;
pub fn createWindow(width: c_int, height: c_int, title: [*:0]const u8, monitor: ?*Monitor, share: ?*Window) !*Window {
    const res = glfwCreateWindow(width, height, title, monitor, share);
    errorCheck2();
    if (res == null) {
        return GLFWError.PlatformError;
    }
    return res.?;
}

extern fn glfwDestroyWindow(window: ?*Window) void;
pub fn destroyWindow(window: ?*Window) void {
    glfwDestroyWindow(window);
    errorCheck2();
}

extern fn glfwWindowShouldClose(window: ?*Window) c_int;
pub fn windowShouldClose(window: ?*Window) bool {
    const res = glfwWindowShouldClose(window);
    errorCheck2();
    return res != 0;
}

extern fn glfwSetWindowShouldClose(window: ?*Window, value: c_int) void;
pub fn setWindowShouldClose(window: ?*Window, value: bool) void {
    glfwSetWindowShouldClose(window, @intFromBool(value));
    errorCheck2();
}

extern fn glfwSetWindowTitle(window: ?*Window, title: [*:0]const u8) void;
pub fn setWindowTitle(window: ?*Window, title: [*:0]const u8) void {
    glfwSetWindowTitle(window, title);
    errorCheck2();
}

extern fn glfwSetWindowIcon(window: ?*Window, count: c_int, images: ?[*]Image) void;
pub fn setWindowIcon(window: ?*Window, count: c_int, images: ?[*]Image) void {
    glfwSetWindowIcon(window, count, images);
    errorCheck2();
}

extern fn glfwGetWindowPos(window: ?*Window, xpos: *c_int, ypos: *c_int) void;
pub fn getWindowPos(window: ?*Window, xpos: *c_int, ypos: *c_int) void {
    glfwGetWindowPos(window, xpos, ypos);
    errorCheck2();
}

extern fn glfwSetWindowPos(window: ?*Window, xpos: c_int, ypos: c_int) void;
pub fn setWindowPos(window: ?*Window, xpos: c_int, ypos: c_int) void {
    glfwSetWindowPos(window, xpos, ypos);
    errorCheck2();
}

extern fn glfwGetWindowSize(window: ?*Window, width: *c_int, height: *c_int) void;
pub fn getWindowSize(window: ?*Window, width: *c_int, height: *c_int) void {
    glfwGetWindowSize(window, width, height);
    errorCheck2();
}

extern fn glfwSetWindowSizeLimits(window: ?*Window, minwidth: c_int, minheight: c_int, maxwidth: c_int, maxheight: c_int) void;
pub fn setWindowSizeLimits(window: ?*Window, minwidth: c_int, minheight: c_int, maxwidth: c_int, maxheight: c_int) void {
    glfwSetWindowSizeLimits(window, minwidth, minheight, maxwidth, maxheight);
    errorCheck2();
}

extern fn glfwSetWindowAspectRatio(window: ?*Window, numer: c_int, denom: c_int) void;
pub fn setWindowAspectRatio(window: ?*Window, numer: c_int, denom: c_int) void {
    glfwSetWindowAspectRatio(window, numer, denom);
    errorCheck2();
}

extern fn glfwSetWindowSize(window: ?*Window, width: c_int, height: c_int) void;
pub fn setWindowSize(window: ?*Window, width: c_int, height: c_int) void {
    glfwSetWindowSize(window, width, height);
    errorCheck2();
}

extern fn glfwGetFramebufferSize(window: ?*Window, width: *c_int, height: *c_int) void;
pub fn getFramebufferSize(window: ?*Window, width: *c_int, height: *c_int) void {
    glfwGetFramebufferSize(window, width, height);
    errorCheck2();
}

extern fn glfwGetWindowFrameSize(window: ?*Window, left: *c_int, top: *c_int, right: *c_int, bottom: *c_int) void;
pub fn getWindowFrameSize(window: ?*Window, left: *c_int, top: *c_int, right: *c_int, bottom: *c_int) void {
    glfwGetWindowFrameSize(window, left, top, right, bottom);
    errorCheck2();
}

extern fn glfwGetWindowContentScale(window: ?*Window, xscale: *f32, yscale: *f32) void;
pub fn getWindowContentScale(window: ?*Window, xscale: *f32, yscale: *f32) void {
    glfwGetWindowContentScale(window, xscale, yscale);
    errorCheck2();
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

pub fn setWindowPosCallback(window: ?*Window, callback: WindowPosFun) WindowPosFun {
    const res = glfwSetWindowPosCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setWindowSizeCallback(window: ?*Window, callback: WindowSizeFun) WindowSizeFun {
    const res = glfwSetWindowSizeCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setWindowCloseCallback(window: ?*Window, callback: WindowCloseFun) WindowCloseFun {
    const res = glfwSetWindowCloseCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setWindowRefreshCallback(window: ?*Window, callback: WindowRefreshFun) WindowRefreshFun {
    const res = glfwSetWindowRefreshCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setWindowFocusCallback(window: ?*Window, callback: WindowFocusFun) WindowFocusFun {
    const res = glfwSetWindowFocusCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setWindowIconifyCallback(window: ?*Window, callback: WindowIconifyFun) WindowIconifyFun {
    const res = glfwSetWindowIconifyCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setWindowMaximizeCallback(window: ?*Window, callback: WindowMaximizeFun) WindowMaximizeFun {
    const res = glfwSetWindowMaximizeCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setFramebufferSizeCallback(window: ?*Window, callback: FramebufferSizeFun) FramebufferSizeFun {
    const res = glfwSetFramebufferSizeCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setWindowContentScaleCallback(window: ?*Window, callback: WindowContentScaleFun) WindowContentScaleFun {
    const res = glfwSetWindowContentScaleCallback(window, callback);
    errorCheck2();
    return res;
}

extern fn glfwPollEvents() void;
pub fn pollEvents() void {
    glfwPollEvents();
    errorCheck2();
}

extern fn glfwWaitEvents() void;
pub fn waitEvents() void {
    glfwWaitEvents();
    errorCheck2();
}

extern fn glfwWaitEventsTimeout(timeout: f64) void;
pub fn waitEventsTimeout(timeout: f64) void {
    glfwWaitEventsTimeout(timeout);
    errorCheck2();
}

extern fn glfwPostEmptyEvent() void;
pub fn postEmptyEvent() void {
    glfwPostEmptyEvent();
    errorCheck2();
}

extern fn glfwGetInputMode(window: ?*Window, mode: c_int) c_int;

//Depending on what your input mode is, you can change to true/false or one of the attribute enums
pub fn getInputMode(window: ?*Window, mode: InputMode) c_int {
    const res = glfwGetInputMode(window, (mode));
    errorCheck2();
    return res;
}

extern fn glfwSetInputMode(window: ?*Window, mode: InputMode, value: c_int) void;
pub fn setInputMode(window: ?*Window, mode: InputMode, value: c_int) void {
    glfwSetInputMode(window, (mode), value);
    errorCheck2();
}

extern fn glfwRawMouseMotionSupported() c_int;
pub fn rawMouseMotionSupported() bool {
    const res = glfwRawMouseMotionSupported();
    errorCheck2();
    return res != 0;
}

const std = @import("std");
extern fn glfwGetKeyName(key: c_int, scancode: c_int) ?[*:0]const u8;
pub fn getKeyName(key: Key, scancode: c_int) ?[:0]const u8 {
    const res = glfwGetKeyName((key), scancode);
    errorCheck2();
    return std.mem.spanZ(res);
}

extern fn glfwGetKeyScancode(key: c_int) c_int;
pub fn getKeyScancode(key: Key) c_int {
    const res = glfwGetKeyScancode((key));
    errorCheck2();
    return res;
}

extern fn glfwGetKey(window: ?*Window, key: c_int) Action;
pub fn getKey(window: ?*Window, key: Key) KeyType {
    const res = glfwGetKey(window, @intFromEnum(key));
    errorCheck2();
    return @enumFromInt(res);
}

extern fn glfwGetMouseButton(window: ?*Window, button: c_int) c_int;
pub fn getMouseButton(window: ?*Window, button: Mouse) KeyType {
    const res = glfwGetMouseButton(window, @intFromEnum(button));
    errorCheck2();
    return res;
}

extern fn glfwGetCursorPos(window: ?*Window, xpos: *f64, ypos: *f64) void;
pub fn getCursorPos(window: ?*Window, xpos: *f64, ypos: *f64) void {
    glfwGetCursorPos(window, xpos, ypos);
    errorCheck2();
}

extern fn glfwSetCursorPos(window: ?*Window, xpos: f64, ypos: f64) void;
pub fn setCursorPos(window: ?*Window, xpos: f64, ypos: f64) void {
    glfwSetCursorPos(window, xpos, ypos);
    errorCheck2();
}

extern fn glfwCreateCursor(image: ?*Image, xhot: c_int, yhot: c_int) ?*CursorHandle;
pub fn createCursor(image: ?*Image, xhot: c_int, yhot: c_int) ?*CursorHandle {
    const res = glfwCreateCursor(image, xhot, yhot);
    errorCheck2();
    return res;
}

extern fn glfwCreateStandardCursor(shape: c_int) ?*CursorHandle;
pub fn createStandardCursor(shape: CursorShape) ?*CursorHandle {
    const res = glfwCreateStandardCursor((shape));
    errorCheck2();
    return res;
}

extern fn glfwDestroyCursor(cursor: ?*CursorHandle) void;
pub fn destroyCursor(cursor: ?*CursorHandle) void {
    glfwDestroyCursor(cursor);
    errorCheck2();
}

extern fn glfwSetCursor(window: ?*Window, cursor: ?*CursorHandle) void;
pub fn setCursor(window: ?*Window, cursor: ?*CursorHandle) void {
    glfwSetCursor(window, cursor);
    errorCheck2();
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
    errorCheck2();
}

extern fn glfwGetClipboardString(window: ?*Window) ?[*:0]const u8;
pub fn getClipboardString(window: ?*Window) ?[:0]const u8 {
    const res = glfwGetClipboardString(window);
    errorCheck2();
    return std.mem.spanZ(res);
}

extern fn glfwGetTime() f64;
pub fn getTime() f64 {
    const res = glfwGetTime();
    errorCheck2();
    return res;
}

extern fn glfwSetTime(time: f64) void;
pub fn setTime(time: f64) void {
    glfwSetTime(time);
    errorCheck2();
}

extern fn glfwGetTimerValue() u64;
pub fn getTimerValue() u64 {
    const res = glfwGetTimerValue();
    errorCheck2();
    return res;
}

extern fn glfwGetTimerFrequency() u64;
pub fn getTimerFrequency() u64 {
    const res = glfwGetTimerFrequency();
    errorCheck2();
    return res();
}

//Context
extern fn glfwMakeContextCurrent(window: ?*Window) void;
pub fn makeContextCurrent(window: ?*Window) void {
    glfwMakeContextCurrent(window);
    errorCheck2();
}

extern fn glfwGetCurrentContext() ?*Window;
pub fn getCurrentContext(window: ?*Window) ?*Window {
    const res = glfwGetCurrentContext(window);
    errorCheck2();
    return res;
}

extern fn glfwSwapBuffers(window: ?*Window) void;
pub fn swapBuffers(window: ?*Window) void {
    glfwSwapBuffers(window);
    errorCheck2();
}

extern fn glfwSwapInterval(interval: c_int) void;
pub fn swapInterval(interval: c_int) void {
    glfwSwapInterval(interval);
    errorCheck2();
}

//GL Stuff
extern fn glfwExtensionSupported(extension: [*:0]const u8) c_int;
pub fn extensionSupported(extension: [*:0]const u8) c_int {
    const res = glfwExtensionSupported(extension);
    errorCheck2();
    return res;
}

extern fn glfwGetProcAddress(procname: [*:0]const u8) ?GLproc;
pub fn getProcAddress(procname: [*:0]const u8) ?GLproc {
    const res = glfwGetProcAddress(procname);
    errorCheck2();
    return res;
}

//Vulkan stuff
extern fn glfwGetInstanceProcAddress(instance: VkInstance, procname: [*:0]const u8) ?VKproc;
pub fn getInstanceProcAddress(instance: VkInstance, procname: [*:0]const u8) ?VKproc {
    const res = glfwGetInstanceProcAddress(instance, procname);
    errorCheck2();
    return res;
}

extern fn glfwGetPhysicalDevicePresentationSupport(instance: VkInstance, device: VkPhysicalDevice, queuefamily: u32) c_int;
pub fn getPhysicalDevicePresentationSupport(instance: VkInstance, device: VkPhysicalDevice, queuefamily: u32) bool {
    const res = glfwGetPhysicalDevicePresentationSupport(instance, device, queuefamily);
    errorCheck2();
    return res != 0;
}

extern fn glfwCreateWindowSurface(instance: VkInstance, window: *Window, allocator: ?*const VkAllocationCallbacks, surface: *VkSurfaceKHR) VkResult;
pub fn createWindowSurface(instance: VkInstance, window: *Window, allocator: ?*const VkAllocationCallbacks, surface: *VkSurfaceKHR) VkResult {
    const res = glfwCreateWindowSurface(instance, window, allocator, surface);
    errorCheck2();
    return res;
}

extern fn glfwVulkanSupported() c_int;
pub fn vulkanSupported() bool {
    const res = glfwVulkanSupported();
    errorCheck2();
    return res != 0;
}

extern fn glfwGetRequiredInstanceExtensions(count: *u32) ?[*][*:0]const u8;
pub fn getRequiredInstanceExtensions(count: *u32) ?[*][*:0]const u8 {
    const res = glfwGetRequiredInstanceExtensions(count);
    errorCheck2();
    return res;
}
