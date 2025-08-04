// Buffer polyfill for environments where it's not available
let Buffer: any;

// Type-safe Buffer detection
if (typeof globalThis !== 'undefined' && (globalThis as any).Buffer) {
    Buffer = (globalThis as any).Buffer;
} else if (typeof (globalThis as any).require !== 'undefined') {
    try {
        Buffer = (globalThis as any).require('buffer').Buffer;
    } catch (e) {
        // Fallback for environments without Buffer
        Buffer = {
            from: (str: string, encoding: string) => {
                if (encoding === 'base64') {
                    return { toString: () => atob(str) };
                }
                return { toString: () => str };
            }
        };
    }
} else {
    // Browser fallback
    Buffer = {
        from: (str: string, encoding: string) => {
            if (encoding === 'base64') {
                return { toString: () => atob(str) };
            }
            return { toString: () => str };
        }
    };
}

/**
 * A simple interface for the user profile data.
 */
export interface UserProfile {
    /**
     * The user's username, as stored in the 'username' cookie.
     */
    username: string;
    /**
     * The user's Bigscreen account ID, from the 'accessToken' JWT.
     */
    bigscreenAccountId: string;
}

/**
 * Parses the user profile from a cookie string.
 *
 * @param cookieString The full cookie string from the browser.
 * @returns A UserProfile object, or null if the required cookies are not found.
 */
export function getUserProfileFromCookies(cookieString: string): UserProfile | null {
    const cookies = cookieString.split(';').reduce((acc, cookie) => {
        const [key, value] = cookie.trim().split('=');
        acc[key] = value;
        return acc;
    }, {} as Record<string, string>);

    const username = cookies['username'];
    const accessToken = cookies['accessToken'];

    if (!username || !accessToken) {
        return null;
    }

    try {
        const tokenParts = accessToken.split('.');
        if (tokenParts.length < 2) {
            return null;
        }
        const payload = JSON.parse(Buffer.from(tokenParts[1], 'base64').toString());
        const bigscreenAccountId = payload?.sub?.bigscreenAccountId;

        if (!bigscreenAccountId) {
            return null;
        }

        return {
            username,
            bigscreenAccountId,
        };
    } catch (e) {
        console.error("Failed to parse access token:", e);
        return null;
    }
} 